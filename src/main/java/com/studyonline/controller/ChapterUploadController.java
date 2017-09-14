package com.studyonline.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.studyonline.mapper.HomeworkMapper;
import com.studyonline.model.Chapter;
import com.studyonline.model.Course;
import com.studyonline.model.Homework;
import com.studyonline.service.ChapterMangerService;
import com.studyonline.service.CourseMangerService;
import com.studyonline.service.HomeworkService;

@Controller
@RequestMapping("/upload")
public class ChapterUploadController {
	
	
	@Autowired
	CourseMangerService cms;
	@Autowired
	ChapterMangerService chms;
	@Autowired
	HomeworkService hws;
	
	@RequestMapping("/upload")
	public String ChapterUpload(HttpServletRequest request) throws Exception {
		MultipartHttpServletRequest mh = (MultipartHttpServletRequest) request;
		String[] chapterList = request.getParameterValues("Chaptername");
		String[] suffixid = request.getParameterValues("id");
		String teacherid=request.getParameter("teacherid");
		System.out.println("-----------------"+teacherid);
		String coursename=request.getParameter("Coursename");
		String coursedesc=request.getParameter("describe");
		String coursefclass=request.getParameter("state1");
		String coursesclass=request.getParameter("state");
		String difString=request.getParameter("Coursedif");
		List<MultipartFile> coursepic=mh.getFiles("cover");
		MultipartFile refs=mh.getFile("refs");
		List<String> relativePaths = new ArrayList<String>();
		List<Chapter> ctlist=new ArrayList<Chapter>();
		List<Homework> hwlist=new ArrayList<Homework>();
		Chapter ct;
		Homework hw;
		Course cs=new Course();
		cs.setCoursename(coursename);
		cs.setDescribe(coursedesc);
		cs.setFirstclassname(coursefclass);
		cs.setSecclassname(coursesclass);
		cs.setTeacherid(teacherid);
		cs.setScore((float)0.0);
		cs.setDif(difString);
		cs.setScorecount(0);
		cs.setStudycount(0);
		cs.setHot(0);
		String savePath = request.getServletContext().getRealPath(
				"/WEB-INF/upload");
		File file = new File(savePath);
		if (!file.exists() && !file.isDirectory()) {
			System.out.println(savePath + "目录不存在，需要创建");
			// 创建目录
			file.mkdir();
		}
		String savePathsuffix=coursename;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		savePathsuffix += sdf.format(new Date());
		Random r = new Random();
		for (int k = 0; k < 3; k++) {
			savePathsuffix += r.nextInt(10);
		}
		file = new File(savePath+"/"+savePathsuffix);
		File file2 = new File(savePath+"/"+"coursecover");
		if (!file.exists() && !file.isDirectory()) {
			// 创建目录
			file.mkdir();
		}
		if (!file2.exists() && !file2.isDirectory()) {
			// 创建目录
			file2.mkdir();
		}
		String newFileName1 = "";
		sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		newFileName1 += sdf.format(new Date());
		 r = new Random();
		for (int k = 0; k < 3; k++) {
			newFileName1 = newFileName1 + r.nextInt(10);
		}
		// 获取文件扩展名
		String originalFilename1 = coursepic.get(0).getOriginalFilename();
		String suffix1 = originalFilename1.substring(originalFilename1.lastIndexOf("."));
		String dirPath1 = savePath+ "/"+"coursecover"+ "/" + newFileName1 + suffix1;
		File dirPathPath1 = new File(dirPath1);
		try {
			coursepic.get(0).transferTo(dirPathPath1);
			cs.setCoursepic("upload/"+"coursecover"+ "/"+newFileName1 + suffix1);
		}catch(Exception e){
			//路径
		}
	try {
		if(refs!=null){
			System.out.println("-----课件");
			String refsoriginalName = refs.getOriginalFilename();
			String refstype =  refsoriginalName.substring(refsoriginalName.lastIndexOf("."));
			System.out.println("type : " + refstype);
			UUID uuid = UUID.randomUUID();
			String refsName = coursename+uuid + refstype;
			String refsdirPath = savePath+ "/"+savePathsuffix;
			FileUtils.copyInputStreamToFile( refs.getInputStream(), new File(refsdirPath, refsName) );
			System.out.println( refsName+" 上传成功");
			cs.setReference("upload/"+savePathsuffix+ "/"+ refsName);
			System.out.println("-----课件end");
		}
		} catch (Exception e) {
			// TODO: handle exception
		}
		cms.addCourse(cs);
		int courseid=cs.getId();
		

		if(chapterList==null) 	return "redirect:../Courseupload.jsp?Msg=success";
		for (int j = 0; j < chapterList.length; j++) {
			System.out.println("第"+(j+1)+"章"+chapterList[j]);
			List<MultipartFile> files = mh.getFiles("file" + suffixid[j]);
			
			String[] sectionList = request.getParameterValues("Sectionname"
					+ suffixid[j]);
			String[] homeworklist=request.getParameterValues("homework"+ suffixid[j]);
			ct=new Chapter();
			hw=new Homework();
			hw.setHwcontent("无作业");
			hw.setCourseid(courseid);
			ct.setSectionid(-1);
			ct.setSecparentid(-1);//所属章节
			ct.setName(chapterList[j]);//章名
			ct.setChapterid(j+1);//章序号
			ct.setVideosrc("");
			ct.setCourseid(courseid);
			ctlist.add(ct);
			hwlist.add(hw);
			if(sectionList ==null) continue;
			for (int i = 0; i < files.size(); i++) {
				System.out.println("第"+(i+1)+"节"+sectionList[i]);
				ct=new Chapter();
				hw=new Homework();
				/* byte[] fbytes = files.get(i).getBytes(); */
				String newFileName = sectionList[i];
				sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
				newFileName += sdf.format(new Date());

				 r = new Random();

				for (int k = 0; k < 3; k++) {
					newFileName = newFileName + r.nextInt(10);
				}

				// 获取文件扩展名
				String originalFilename = files.get(i).getOriginalFilename();
				String suffix = originalFilename.substring(originalFilename
						.lastIndexOf("."));

				String dirPath = savePath+ "/"+savePathsuffix+ "/" + newFileName + i + j+ suffix;
				System.out.println(dirPath);
				File dirPathPath = new File(dirPath);
				try {
					files.get(i).transferTo(dirPathPath);
					
					relativePaths.add("upload/"+savePathsuffix+ "/"+newFileName + i + j + suffix);
					ct.setCourseid(courseid);
					ct.setChapterid(-1);
					ct.setName(sectionList[i]);//节名
					ct.setSectionid(i+1);//节序号
					ct.setSecparentid(j+1);//所属章节
					ct.setVideosrc("upload/"+savePathsuffix+ "/"+newFileName + i + j + suffix);//路径
					
					hw.setHwcontent(homeworklist[i]);
					hwlist.add(hw);
					ctlist.add(ct);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		chms.addChapterByList(ctlist);
		for(int i=0;i<ctlist.size();i++){
			hwlist.get(i).setCourseid(ctlist.get(i).getId());
		}
		hws.addHomework(hwlist);
		return "redirect:../Courseupload.jsp?Msg=success";
	}
}
