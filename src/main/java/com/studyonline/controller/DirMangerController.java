package com.studyonline.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.studyonline.model.Course;
import com.studyonline.model.Courseclass;
import com.studyonline.model.Firstdir;
import com.studyonline.model.Secendir;
import com.studyonline.service.DirManagerService;

@Controller
@RequestMapping("/Dir")
public class DirMangerController {

	@Autowired
	DirManagerService dms;

	@RequestMapping("/findFirstDir")
	public @ResponseBody
	List<Firstdir> findFirstDir() {
		return dms.findFirstDir();
	}

	@RequestMapping("/findSecDir")
	public @ResponseBody
	List<Secendir> findSecDir() {
		return dms.findSecDir();
	}

	@RequestMapping("/findCourseClass1")
	public @ResponseBody
	List<Firstdir> findCourseClass() {
		return dms.findCourseClass1();
	}

	@RequestMapping("/findCourseClass2")
	public @ResponseBody
	List<Secendir> findCourseClass2(int id) {
		return dms.findCourseClass2(id);
	}

	@RequestMapping("/addClass1")
	public @ResponseBody
	int addClass(String classn) {
		return dms.addClass1(classn);
	}

	@RequestMapping("/addClass2")
	public @ResponseBody
	int addClass2(@RequestBody Secendir secendir) {
		return dms.addClass2(secendir);
	}

	@RequestMapping("/delClass1")
	public @ResponseBody
	int delClass(int id) {
		return dms.delClass1(id);
	}

	@RequestMapping("/delClass2")
	public @ResponseBody
	int delClass2(int id) {
		return dms.delClass2(id);
	}
	
	@RequestMapping("/findHOTCourseClass2")
	public @ResponseBody
	List<Secendir> findHOTCourseClass2() {
		return dms.findHOTCourseClass2();
	}
	
}
