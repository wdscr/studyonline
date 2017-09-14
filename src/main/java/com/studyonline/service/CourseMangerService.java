package com.studyonline.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studyonline.mapper.ChapterMapper;
import com.studyonline.mapper.ChapterreplyMapper;
import com.studyonline.mapper.CourseMapper;
import com.studyonline.model.Chapter;
import com.studyonline.model.ChapterExample;
import com.studyonline.model.Chapterreply;
import com.studyonline.model.ChapterreplyExample;
import com.studyonline.model.Course;
import com.studyonline.model.CourseExample;
import com.studyonline.model.Section;
import com.studyonline.model.ChapterExample.Criteria;

@Service
public class CourseMangerService {
	
		@Autowired
		CourseMapper cm;
		@Autowired
		ChapterMapper chm;
		@Autowired
	    ChapterreplyMapper ctrm;
		
		public Boolean  addCourse(Course course){
			int flag = cm.insert(course);
			if(flag==1) return true;
			else return false;
		}
		
		public String delCourse(int courseId){
			try {
				System.out.println("delcourse----service");
				int flag = cm.deleteByPrimaryKey(courseId);
				if(flag == 1){
					return "success";
				}else{
					return "failed";
				}
			} catch (Exception e) {
				System.out.println(e.getMessage());
				return "failed";
			}
		
		}
		
		public boolean modifyCourse(Course course){
			try {
				
	        System.out.println(course.toString());
			int flag = cm.updateByPrimaryKeySelective(course);
			if(flag == 1){
				return true;
			}else{
				return false;
			}		} catch (Exception e) {
				System.out.println(e.getMessage());
				return false;
			}
		}
		
		public Course findCourse(int courseId){
			Course course = cm.selectByPrimaryKey(courseId);
			return course;
		}
		
		public List<Course> findAllCourse(){
			CourseExample ce = new CourseExample();
			return cm.selectByExample(ce);
		}
		
		public List<Course>	findCourseByCname(String cname){
			CourseExample ce  = new CourseExample();
			com.studyonline.model.CourseExample.Criteria criteria = ce.createCriteria();
			criteria.andFirstclassnameEqualTo(cname);
			criteria.andSecclassnameEqualTo(cname);
			return cm.selectByExample(ce);
		}
		
		public List<Course>findCourseLimit(int start,int size){	
			return cm.findCourseBetween(new Section(start,size));
		}
		
		public int CountCourse(){
			return cm.countByExample(null);
		}

		public List<Chapter> findCourseAllMessage(int courseId) {
			// TODO Auto-generated method stub
			ChapterExample ce = new ChapterExample();
			ce.setOrderByClause("secParentid,chapterid");
		     Criteria c = ce.createCriteria();
			 c.andCourseidEqualTo(courseId);
			 return chm.selectByExample(ce);
		}

		public List<Course> findfiveCourse() {
			// TODO Auto-generated method stub
			CourseExample coe=new 	CourseExample();
			coe.setOrderByClause("id desc limit 5");
			com.studyonline.model.CourseExample.Criteria cc=coe.createCriteria();
			cc.andIdIsNotNull();
			return cm.selectByExample(coe);
		}
		
		public List<Course> findFiveHotestCourse(){
			CourseExample ce = new CourseExample();
			ce.setOrderByClause("studycount desc limit 5");
			return cm.selectByExample(ce);
		}
		
		public List<Chapterreply> GetChapterreply(int chapterId) {
			// TODO Auto-generated method stub
			ChapterreplyExample crp=new ChapterreplyExample();
			crp.setOrderByClause("ReplyTime limit 15");
			com.studyonline.model.ChapterreplyExample.Criteria ccc=crp.createCriteria();
			ccc.andChapteridEqualTo(chapterId);
			return ctrm.selectByExample(crp) ;
		}

		public List<Course> findthreeCourse(String fdir) {
			CourseExample coe=new 	CourseExample();
			coe.setOrderByClause("studycount desc limit 3");
			com.studyonline.model.CourseExample.Criteria cc=coe.createCriteria();
			cc.andFirstclassnameEqualTo(fdir);
			return cm.selectByExample(coe);
		}

		public List<Course> findCourseLimit(int start, int pre, String f,
				String s,String orderby) {
			CourseExample coe=new 	CourseExample();
			if(orderby.equals("oclick")){
				System.out.println("here");
			       coe.setOrderByClause("hot desc limit "+start+","+pre);
			}else{
				   coe.setOrderByClause("id desc limit "+start+","+pre);
			}
			com.studyonline.model.CourseExample.Criteria cc=coe.createCriteria();
			if(f!="")
			cc.andFirstclassnameEqualTo(f);
			if(s!="")
			cc.andSecclassnameEqualTo(s);
			return  cm.selectByExample(coe);
		}

		public int countCourse(String f, String s) {
			CourseExample coe=new 	CourseExample();
			com.studyonline.model.CourseExample.Criteria cc=coe.createCriteria();
			if(f!="")
			cc.andFirstclassnameEqualTo(f);
			if(s!="")
			cc.andSecclassnameEqualTo(s);
			return cm.countByExample(coe);
		}

		public int countCourse(String s) {
			CourseExample coe=new 	CourseExample();
			com.studyonline.model.CourseExample.Criteria cc=coe.createCriteria();
			if(s!="")
			cc.andCoursenameLike("%"+s+"%");
			return cm.countByExample(coe);
		}

		public List<Course> findCourseLimit(int start, int pre, String s) {
			CourseExample coe=new 	CourseExample();
			coe.setOrderByClause(" CourseName limit "+start+","+pre);
			com.studyonline.model.CourseExample.Criteria cc=coe.createCriteria();
			if(s!="")
				cc.andCoursenameLike("%"+s+"%");
			return  cm.selectByExample(coe);
		}
}
