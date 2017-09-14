package com.studyonline.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.studyonline.model.Chapter;
import com.studyonline.model.Homework;
import com.studyonline.service.ChapterMangerService;
import com.studyonline.service.HomeworkService;

@Controller
@RequestMapping("/chapterManager")
@SessionAttributes(value={"chapter"})
public class ChapterManagerController {

	@Autowired
	ChapterMangerService cms;
	
	@Autowired
	HomeworkService hs;
	
	@RequestMapping("/findChapter")
	public @ResponseBody List<Chapter>	 findChapter(int courseid){
		return cms.findChapter(courseid);
	}
	
	@RequestMapping("/addChapter")
	public @ResponseBody int addChapter(@RequestBody  Chapter chapter){
		try {
			System.out.println(chapter.getName());
		int zx= cms.addChapter(chapter);
		Homework homework=new Homework();
		List<Homework > list=new ArrayList<Homework>();
		homework.setCourseid(chapter.getId());
		homework.setHwcontent("null");
		list.add(homework);
		hs.addHomework(list);
		if(zx>0) return chapter.getId();
		else return -1;
		} catch (Exception e) {
			return -1;
		}
	}
	
	
	@RequestMapping("/delChapter")
	public @ResponseBody String delChapter(int id, String videosrc, HttpServletRequest request){
		System.out.println(videosrc);
		String Url="";
		if(videosrc!=""){
		String baseUrl = request.getServletContext().getRealPath("/WEB-INF");
		//String videoName = videosrc.replace("/", "\\");
		//System.out.println("videoName="+ videoName);
		Url = baseUrl+"/"+ videosrc;
		System.out.println(Url);
		}
		boolean flag = cms.delChapter(id);
		if(flag){
			if(videosrc!=""){
				File f = new File(Url);
				if(f.exists()){
					f.delete();
					System.out.println("i am here");
				}
			}
			return "success";
		}
		
		return "failed";
	}
		
}
