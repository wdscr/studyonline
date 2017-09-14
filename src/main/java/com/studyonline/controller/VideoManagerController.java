package com.studyonline.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.studyonline.model.Chapter;
import com.studyonline.service.ChapterMangerService;

@Controller
@RequestMapping("/videoManager")
public class VideoManagerController {

		@Autowired
		ChapterMangerService cms;
	
		@RequestMapping("/findAllVideo")
		public @ResponseBody List<Chapter> findAllVideo(){
			return cms.findAllChapter();
		}
}
