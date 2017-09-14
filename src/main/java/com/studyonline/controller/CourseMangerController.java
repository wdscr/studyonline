package com.studyonline.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.filefilter.FalseFileFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.studyonline.model.Chapter;
import com.studyonline.model.Chapterreply;
import com.studyonline.model.Course;
import com.studyonline.model.Homework;
import com.studyonline.model.User;
import com.studyonline.service.ChapterMangerService;
import com.studyonline.service.CourseMangerService;
import com.studyonline.service.CreplyMangerService;
import com.studyonline.service.HomeworkService;

@Controller
@RequestMapping("/courseManger")
public class CourseMangerController {
	
		@Autowired
		CourseMangerService cms;
		@Autowired
		ChapterMangerService chms;
		@Autowired
		HomeworkService hws;
		@Autowired
		CreplyMangerService crms;
		
		@RequestMapping("/findAllCourse")
		public @ResponseBody List<Course> findAllCourse(){
			return cms.findAllCourse();
		}
		@RequestMapping("/findthreeCourse")
		public @ResponseBody List<Course> findthreeCourse(String fdir){
			return cms.findthreeCourse(fdir);
		}
		
		
		@RequestMapping("/findCourselimt2")
		public @ResponseBody List<Course> findCourselimt2(int start,int pre,String f,String s,String orderby){
			System.out.println(start+","+pre+","+f+","+s+","+orderby);
			List<Course> courses=cms.findCourseLimit(start , pre,f,s,orderby);
			return courses;
		}
		
		@RequestMapping("/findCourselimt3")
		public @ResponseBody List<Course> findCourselimt3(int start,int pre,String s){
			List<Course> courses=cms.findCourseLimit(start , pre,s);
			return courses;
		}
		@RequestMapping("/findCourseLimit")
		public @ResponseBody Map<String, Object> findCourseLimit(@RequestParam String aoData){
			System.out.println(aoData);
			JSONArray jsonarray = JSONArray.fromObject(aoData);
			    int sEcho = 0;
			    int iDisplayStart = 0; // 起始索引
			    int iDisplayLength = 0; // 每页显示的行数
			   
			    for (int i = 0; i < jsonarray.size(); i++) {
			        JSONObject obj = (JSONObject) jsonarray.get(i);
			        if (obj.get("name").equals("sEcho"))
			            sEcho = obj.getInt("value");
			 
			        if (obj.get("name").equals("iDisplayStart"))
			            iDisplayStart = obj.getInt("value");
			 
			        if (obj.get("name").equals("iDisplayLength"))
			            iDisplayLength = obj.getInt("value");
			    }
			    List<Course> courses=cms.findCourseLimit(iDisplayStart , iDisplayLength);
			    Map<String, Object> mp=new HashMap<String, Object>();  
			    int all=cms.CountCourse();
			    mp.put("sEcho", sEcho+1);  
	            mp.put("iTotalRecords",all);//数据总条数  
	            System.out.println(cms.CountCourse());
	            mp.put("iTotalDisplayRecords",all);//显示的条数  
	            mp.put("aaData",courses);//数据集合  
			   return mp;
		}
		
		@RequestMapping("/findCourse")
		public @ResponseBody Course findCourse(int courseId){
			return cms.findCourse(courseId);
		}
		
		@RequestMapping("/findCourseByCname")
		public @ResponseBody List<Course> findCourseByCname(String cname){
			System.out.println("===="+cname);
			return cms.findCourseByCname(cname);
		}
		
		@RequestMapping("/delCourse")
		public @ResponseBody String delCourse(int courseId,HttpServletRequest request){
			String result="failed";
			try {
				List<Chapter> chapters=chms.findChapter(courseId);
				String savePath = request.getServletContext().getRealPath(
						"/WEB-INF");
				result=cms.delCourse(courseId);
				System.out.println(chapters.size());
				for(int i=0;i<chapters.size();i++){
				       String url = savePath+'\\'+(((Chapter)chapters.get(i)).getVideosrc()).replace("/", "\\");
						File f = new File(url);//定位到相应位置
						if(f.exists()) //如果存在视频
							f.delete();//将视频删除;    // 文件路径
				       System.out.println(url);
				        File file = new File(url);
				        if (file.exists()) {
				            file.delete();
				        }
				}
			} catch (Exception e) {
				System.out.println(e.getMessage());
				result="failed";
				// TODO: handle exception
			}
			return result;
		}
		
		@RequestMapping("/modifyCourse")
		public @ResponseBody String modifyCourse(int id, String des,String classname,String title,String fclassname,String sclassname,String dif){
			System.out.println(fclassname);
			System.out.println(id);
			System.out.println(dif);
			Course course=new Course();
			course.setFirstclassname(classname);
			course.setDescribe(des);
			course.setDif(dif);
			course.setId(id);
			course.setCoursename(title);
			course.setFirstclassname(fclassname);
			course.setSecclassname(sclassname);
			boolean flag =  cms.modifyCourse(course);
			System.out.println("xx"+flag);
			if(flag) return "ok";
			else return "error";
		}
	   @RequestMapping("/modifyCoursePic")
		public @ResponseBody String modifyCoursePic(@RequestParam("couid")int id,@RequestParam(value="cover",required=false) MultipartFile file, HttpServletRequest request) throws IOException {	
		   Course course=new Course();
		   if(file!=null&&!file.isEmpty()){
				String savePath = request.getServletContext().getRealPath(
						"/WEB-INF/upload/coursecover");
				File saveDir = new File(savePath);
				if (!saveDir.exists() && !saveDir.isDirectory()) {
					System.out.println(savePath + "目录不存在，需要创建");
					saveDir.mkdir();
				}
				String originalName = file.getOriginalFilename();
				String type =  originalName.substring(originalName.lastIndexOf("."));
				System.out.println("type : " + type);
				UUID uuid = UUID.randomUUID();
				String picName = uuid + type;
				System.out.println(picName);
				FileUtils.copyInputStreamToFile(file.getInputStream(), new File(savePath, picName) );
				System.out.println( picName+" 上传成功");
				course.setId(id);
				course.setCoursepic("upload/coursecover/"+picName);
			}else{
				return "ok";
			}
			boolean flag =  cms.modifyCourse(course);
			if(flag) return "ok";
			else return "error";
		}
		
		@RequestMapping("/findCourseAllMessage")
		public @ResponseBody List<Chapter> findCourseAllMessage(int courseId){
			return cms.findCourseAllMessage(courseId);
		}
		
		@RequestMapping("/findHomework")
		public @ResponseBody Homework  findHomework(int id){
			System.out.println("homework:"+id);
			return hws.findHomework(id);
		}

		
		@RequestMapping("/findfiveCourse")
		public @ResponseBody List<Course> findfiveCourse(){
			return cms.findfiveCourse();
		}
		
		@RequestMapping("findFiveHotestCourse")
		public @ResponseBody List<Course> findFiveHotestCourse(){
			return cms.findFiveHotestCourse();
		}
		
		@RequestMapping("/Chapterreply")
		public @ResponseBody List<Chapterreply>  GetChapterreply(int  chapterId){
			System.out.println("reply");
			return cms.GetChapterreply(chapterId);
		}
		
		@RequestMapping("/delCreply")
		public @ResponseBody String  delCreply(int  id){
			System.out.println("delCreply");
			return crms.delCreply(id);
		}
		
		  @RequestMapping("/modifyChapter")
			public @ResponseBody Chapter modifyChapter(@RequestParam("title1")String title,@RequestParam("chapterid")int id,@RequestParam("videosrc")String videosrc,@RequestParam("hw1")String hw,@RequestParam(value="id-input-file-2",required=false) MultipartFile file, HttpServletRequest request) throws IOException {	
			   Chapter c=new Chapter();
			   c.setId(id);
			   c.setName(title);
			   Homework hwwHomework=new Homework();
			   hwwHomework.setCourseid(id);
			   hwwHomework.setHwcontent(hw);
			   if(file!=null&&!file.isEmpty()){
					String savePath1 = request.getServletContext().getRealPath(
							"/WEB-INF");
					String url = savePath1+'\\'+videosrc.replace("/", "\\");
					System.out.println(url);
					File f = new File(url);//定位到相应位置
					if(f.exists()) {//如果存在视频
						System.out.println("exists");
						f.delete();//将视频删除;    // 文件路径
					}
					
					String originalName = file.getOriginalFilename();
					String type =  originalName.substring(originalName.lastIndexOf("."));
					String fpo=videosrc.substring(0,videosrc.lastIndexOf("/"));
					System.out.println(fpo);
					File saveDir = new File(fpo);
					if (!saveDir.exists() && !saveDir.isDirectory()) {
						saveDir.mkdir();
					}
					UUID uuid = UUID.randomUUID();
					String Name = title+uuid+ type;
					System.out.println(hw);
					FileUtils.copyInputStreamToFile(file.getInputStream(), new File( savePath1+'\\'+ fpo.replace("/", "\\")+'\\',Name) );
				    c.setVideosrc(fpo+'/'+Name);
				   
			 }
			   chms.modifyChapter1(c);
			   hws.modifyhw(hwwHomework);
			   return c;
		  }
		
		  
			@RequestMapping("/countCourse")
			public @ResponseBody int countCourse(String f,String s){
				return cms.countCourse(f,s);
			}
			
			@RequestMapping("/countCoursesearch")
			public @ResponseBody int countCoursesearch(String s){
				System.out.println("by:"+s);
				return cms.countCourse(s);
			}
}
