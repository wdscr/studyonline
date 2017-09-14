package com.studyonline.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studyonline.mapper.AdminMapper;
import com.studyonline.mapper.TeacherMapper;
import com.studyonline.mapper.UserMapper;
import com.studyonline.model.Admin;
import com.studyonline.model.Teacher;
import com.studyonline.model.User;

@	Service
public class LoginService {
	
	@Autowired
	UserMapper um;
	@Autowired
	AdminMapper am;
	@Autowired
	TeacherMapper tm;
	
	public Object msgCheck(String username, String password,  String userType){
		try {
			
		
		if(userType.equals("student")){
			System.out.println(username);
			System.out.println(password);
			User user = um.selectByPrimaryKey(username);
			if(user.getPassword().equals(password)){
				return user;
			}
		}else if(userType.equals("teacher")){
			Teacher teacher = tm.selectByPrimaryKey(username);
			if(teacher.getPassword().equals(password)){
				return teacher;
			}
		}else{
			Admin admin = am.selectByPrimaryKey(username);
			if(admin.getPassword().equals(password)){
				return admin;
			}
		}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
		return null;
	}
	
}
