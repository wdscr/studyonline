package com.studyonline.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.studyonline.model.Chapterreply;
import com.studyonline.model.Section;
import com.studyonline.service.CreplyMangerService;

@Controller
@RequestMapping("/CreplyManger")
public class CreplyMangerController {

		@Autowired
		CreplyMangerService cms;
		
		@RequestMapping("/findCreplyBetween")
		public @ResponseBody List<Chapterreply> findCreplyBetween(Section section){
			section.setX(0);
			section.setY(1);
			return cms.findCreplyBetween(section);
		}
		
		@RequestMapping("/findAllCreplyByCid")
		public @ResponseBody Map<String, Object> findAllCreplyByCid(int chapterid){
			try{
			return cms.findAllCreplyByChapterId(chapterid);
			}catch(Exception e){
				return null;
			}
		}
		
		@RequestMapping("/addCreply")
		public @ResponseBody int addCreply(@RequestBody Chapterreply ctpChapterreply){
		
			return cms.addCreply(ctpChapterreply);
		}
}
