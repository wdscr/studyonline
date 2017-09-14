package com.studyonline.controller;

import java.util.List;

import org.apache.ibatis.javassist.expr.NewArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.studyonline.model.Mystudy;
import com.studyonline.model.UserCourse;
import com.studyonline.service.MyStudyService;


@Controller
@RequestMapping("/mystudy")
public class MyStudyController {
	
	@Autowired
	MyStudyService ms;
	
	@RequestMapping("/addintostudy")
	public @ResponseBody String  addinto(@RequestBody Mystudy record){
		String result="success";
		try {
			result=ms.addinto(record);
		} catch (Exception e) {
			return "failed";
		}
		return result;
	}
	
	@RequestMapping("/studying")
	public @ResponseBody String  studying(String uid,int cid){
		String result="yes";
		try {
			result=ms.studying(uid,cid);
		} catch (Exception e) {
			return "no";
		}
		return result;
	}
	
	@RequestMapping("/findmystudy")
	public @ResponseBody List<Mystudy>  findmystudy(String uid,int start,int pre){
		List<Mystudy> mslList;
		try {
			mslList=ms.findmystudy(uid,start,pre);
		} catch (Exception e) {
			return null;
		}
		return mslList;
	}
	
	@RequestMapping("/findmystudy2")
	public @ResponseBody List<UserCourse> findmystudy2(String uid){
		List<UserCourse> mslList;
		try {
			mslList=ms.findmystudy2(uid);
		} catch (Exception e) {
			return null;
		}
		return mslList;
	}
	
	@RequestMapping("/delmystudy")
	public @ResponseBody String delmystudy(String uid,int cid){
		String result="success";
		try {
			result=ms.delmystudy(uid,cid);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return "failed";
		}
		return result;
	}
	
	@RequestMapping("/countmystudy")
	public @ResponseBody int countmystudy(String uid,int cid){
		int result=-1;
		try {
			result=ms.countmystudy(uid,cid);
		} catch (Exception e) {
			return -1;
		}
		return result;
	}
}
