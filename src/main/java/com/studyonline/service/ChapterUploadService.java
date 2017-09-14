package com.studyonline.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.studyonline.mapper.ChapterMapper;
import com.studyonline.mapper.CourseMapper;
import com.studyonline.model.Chapter;
import com.studyonline.model.Courseclass;

@Service
public class ChapterUploadService {
	@Autowired
	ChapterMapper chm;
	
	
	public boolean addChapter(List<Chapter> records){
		int flag = chm.insertBatch(records);
		if(flag > 0){
			return true;
		}else{
			return false;
		}
	}
}
