package com.studyonline.service;

import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.studyonline.mapper.AdminMapper;
import com.studyonline.mapper.TeacherMapper;
import com.studyonline.mapper.UserMapper;
import com.studyonline.model.Admin;
import com.studyonline.model.Teacher;
import com.studyonline.model.TeacherExample;
import com.studyonline.model.User;
import com.studyonline.model.UserExample;

@Service
public class UserMangerService {
	
		@Autowired
		UserMapper um;
		@Autowired
		AdminMapper am;
		@Autowired
		TeacherMapper tm;
		public boolean addUser(User user){
			System.out.println(user);
			int addNum = um.insertSelective(user);
			if(addNum == 1){
				return true;
			}else{
				return false;
			}
		}
		
		public String addUserByFile(MultipartFile file){
			Workbook wb = null;
			Cell cell = null;
			User user = null;
			String failedNum = "第";
			try{
				InputStream is = file.getInputStream();
				wb = Workbook.getWorkbook(is);
				Sheet s = wb.getSheet(0);
				for(int i=0; i<s.getRows(); i++){
					
					user = new User();
					cell = s.getCell(0, i);
					if((cell.getContents()).equals("+")){
						break;
					}
					for(int j=0; j<s.getColumns(); j++){
						cell = s.getCell(j, i);
						String cont = cell.getContents();
						if(j == 0 && cont.equals("")){
							break;
						}
						if(j==0){
							user.setUsername(cont);
						}else if(j==1){
							user.setPassword(cont);
						}else if(j==2){
							user.setUserinfo(cont);
						}else if(j==3){
							user.setNickname(cont);							
						}else if(j==4){
							user.setPic(cont);
						}else if(j==5){
							user.setDept(cont);
						}else if(j==6){
							user.setCardnum(cont);
						}else if(j==7){
							user.setSex(cont);
						}else if(j==8){
							user.setPhone(cont);
						}else if(j==9){
							SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
							System.out.println(cont);
							Date date = sdf.parse(cont);
							user.setBirthday(date);
						}

					}
					try{
						addUser(user);
					}catch(Exception e){
						if(!failedNum.equals("第")){
							failedNum+=" ";
						}
						failedNum += i+1;
					}
				}
				failedNum+="条记录插入失败";
			}catch(Exception e){
				e.printStackTrace();
			}
			if(failedNum.length()>8){
				System.out.println(failedNum);
			}
			return failedNum;
		}
		
		public String addTeacherByFile(MultipartFile file){
			Workbook wb = null;
			Cell cell = null;
			Teacher teacher = null;
			String failedNum = "第";
			try{
				InputStream is = file.getInputStream();
				wb = Workbook.getWorkbook(is);
				Sheet s = wb.getSheet(0);
				for(int i=0; i<s.getRows(); i++){
					
					teacher = new Teacher();
					cell = s.getCell(0, i);
					if((cell.getContents()).equals("+")){
						break;
					}
					for(int j=0; j<s.getColumns(); j++){
						cell = s.getCell(j, i);
						String cont = cell.getContents();
						if(j == 0 && cont.equals("")){
							break;
						}
						if(j==0){
							teacher.setTeaname(cont);
						}else if(j==1){
							teacher.setPassword(cont);
						}else if(j==2){
							teacher.setUserinfo(cont);
						}else if(j==3){
							teacher.setNickname(cont);							
						}else if(j==4){
							teacher.setPic(cont);
						}else if(j==5){
							teacher.setTitle(cont);
						}else if(j==6){
							teacher.setCardnum(cont);
						}else if(j==7){
							teacher.setSex(cont);
						}else if(j==8){
							teacher.setPhone(cont);
						}else if(j==9){
							SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
							System.out.println(cont);
							Date date = sdf.parse(cont);
							teacher.setBirthday(date);
						}

					}
					try{
						addTeacher(teacher);
					}catch(Exception e){
						if(!failedNum.equals("第")){
							failedNum+=" ";
						}
						failedNum += i+1;
					}
				}
				failedNum+="条记录插入失败";
			}catch(Exception e){
				e.printStackTrace();
			}
			if(failedNum.length()>8){
				System.out.println(failedNum);
			}
			return failedNum;
		}
		
		
		public  boolean delUser(String username){
			int delNum = um.deleteByPrimaryKey(username);
			if(delNum == 1 ){
				return true;
			}else{
				return false;
			}
		}

		public boolean modifyUser(User user){
			int modifyNum = um.updateByPrimaryKeySelective(user);
			if(modifyNum == 1){
				return true;
			}else{
				return false;
			}
		}

		public User findUser(String username){
			User user = um.selectByPrimaryKey(username);
			return user;
		}

		public List<User> findAllUser(){
			UserExample ue = new UserExample();
			return um.selectByExample(ue);
		}
		
		public boolean addTeacher(Teacher teacher){
			int addNum = tm.insert(teacher);
			if(addNum == 1){
				return true;
			}else{
				return false;
			}
		}
		public boolean delTeacher(String username){
			int delNum = tm.deleteByPrimaryKey(username);
			if(delNum == 1){
				return true;
			}else{
				return false;
			}
		}
		public boolean modifyTeacher(Teacher teacher){
			int modifyNum = tm.updateByPrimaryKeySelective(teacher);
			if(modifyNum == 1){
				return true;
			}else{
				return false;
			}
		}
		public Teacher findTeacher(String username){
			Teacher teacher = tm.selectByPrimaryKey(username);
			return teacher;
		}
		
		public List<Teacher> findAllTeacher(){
			TeacherExample te = new TeacherExample();
			return tm.selectByExample(te);
		}
		
		public boolean addAdmin(Admin admin){
			int addNum = am.insert(admin);
			if(addNum == 1){
				return true;
			}else{
				return false;
			}
		}
		public boolean delAdmin(String username){
			int delNum = am.deleteByPrimaryKey(username);
			if(delNum == 1){
				return true;
			}else{
				return false;
			}
		}
		public boolean modifyAdmin(Admin admin){
			int modifyNum = am.updateByPrimaryKey(admin);
			if(modifyNum == 1){
				return true;
			}else{
				return false;
			}
		}
		public Admin findAdmin(String username){
			Admin admin = am.selectByPrimaryKey(username);
			return admin;
		}

		public boolean modifymes(Teacher user) {
			int modifyNum = tm.updateByPrimaryKeySelective(user);
			if(modifyNum == 1){
				return true;
			}else{
				return false;
			}
		}
		
}
