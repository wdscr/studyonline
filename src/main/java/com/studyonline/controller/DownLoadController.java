package com.studyonline.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.studyonline.model.Course;
import com.studyonline.service.CourseMangerService;
import com.studyonline.service.DownLoadSevvice;

@Controller
@RequestMapping(value = "/DownLoad")
public class DownLoadController {
	@Autowired
	CourseMangerService cms;
	DownLoadSevvice dls=new DownLoadSevvice();
	
	@RequestMapping(value ="/downloadFile/{id}")
    public void downloadFile(@PathVariable("id") int id,HttpServletRequest request,HttpServletResponse response){
        try {
            Course course=cms.findCourse(id);
            dls.downloadSolve(course.getReference(),course.getCoursename(),request,response);
        }catch (ServletException e){
            e.printStackTrace();
        }catch (IOException e){
            e.printStackTrace();
        }
    }
	
	@RequestMapping("/downloadDataModel/{filename}")
	public void downloadDataModel(@PathVariable("filename") String filename, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		dls.downloadSolve("upload\\userModel\\"+filename+".xls", filename, request, response);
	}
}
