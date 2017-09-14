package com.studyonline.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.javassist.expr.NewArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.studyonline.model.Chapter;
import com.studyonline.model.Course;
import com.studyonline.model.Homework;
import com.studyonline.model.Teacher;
import com.studyonline.service.ChapterMangerService;
import com.studyonline.service.CourseMangerService;
import com.studyonline.service.HomeworkService;
import com.studyonline.service.UserMangerService;

@RequestMapping("/student")
@Controller
@SessionAttributes(value={"course", "chapterList", "teacher","homework"})
public class StudentController {

		@Autowired
		CourseMangerService cms;
		
		@Autowired
		ChapterMangerService cms2;
		
		@Autowired
		HomeworkService hws;
		
		@Autowired
		UserMangerService ums;
		
		@RequestMapping("/preToCinfo")
		public @ResponseBody String preToCinfo(int id, Model model) throws IOException{
			Course course = cms.findCourse(id);
			String teaName = course.getTeacherid();
			Teacher tea = ums.findTeacher(teaName);
			List<Chapter> chapterList = cms2.findChapter(id);
			//JsonGenerator jg = null;
			ObjectMapper om = new ObjectMapper();
			//jg = om.getJsonFactory().createGenerator(System.out, JsonEncoding.UTF8);
			String jsonStr =  om.writeValueAsString(chapterList);
			System.out.println(jsonStr);
			model.addAttribute("course", course);
			model.addAttribute("teacher", tea);
			model.addAttribute("chapterList", jsonStr);
			return "../CourseInfo.jsp";
		}
		
		@RequestMapping(value="/CourseInfo/{id}")
		public String CourseInfo(@PathVariable("id") int id, Model model) throws IOException{
			try {
				

			Course course = cms.findCourse(id);
			course.setHot(course.getHot()+1);
			cms.modifyCourse(course);
			String teaName = course.getTeacherid();
			Teacher tea = ums.findTeacher(teaName);
			List<Chapter> chapterList = cms2.findChapter(id);
			//JsonGenerator jg = null;
			ObjectMapper om = new ObjectMapper();
			//jg = om.getJsonFactory().createGenerator(System.out, JsonEncoding.UTF8);
			String jsonStr =  om.writeValueAsString(chapterList);
			System.out.println(jsonStr);
			model.addAttribute("course", course);
			model.addAttribute("teacher", tea);
			model.addAttribute("chapterList", jsonStr);
			} catch (Exception e) {
				model.addAttribute("course", new Course());
				model.addAttribute("teacher", new Teacher());
				model.addAttribute("chapterList", "");
				return "CourseInfo";
			}
			return "CourseInfo";
			
		}
		
		@RequestMapping("/openChapter/{chapterid}")
		public String openChapter(@PathVariable("chapterid") int chapterid, Model model){
		
			System.out.println("chapterid = " + chapterid);
			Chapter c = cms2.findOneChapter(chapterid);
			Homework cHomework=new Homework();
			cHomework=hws.findHomework(chapterid);
			model.addAttribute("chapter", c);
			model.addAttribute("homework",  cHomework);
			return "video";
		}
}
