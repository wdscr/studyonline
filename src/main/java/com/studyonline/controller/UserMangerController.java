package com.studyonline.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.studyonline.model.Admin;
import com.studyonline.model.Teacher;
import com.studyonline.model.User;
import com.studyonline.service.UserMangerService;

@Controller
@RequestMapping("/userManger")
@SessionAttributes(value={"identify", "message"})
public class UserMangerController {
	
		@Autowired
		UserMangerService ums;
		
		@RequestMapping(value="/testCharset")
		public  String testCharset(){
			return "video";
		}
		
		@RequestMapping("/addUser")
		public @ResponseBody String addUser(@RequestBody User user,Model model){
			try {
				System.out.println("======");
			if (ums.addUser(user)) {
				model.addAttribute("message", user);
				model.addAttribute("identify", "student");
				return "success";
			}
			} catch (Exception e) {
				return "failed";
			}
			return "failed";
		}
		
		@RequestMapping("/addUser2")
		public @ResponseBody String addUser2(@RequestParam("username2")String username, @RequestParam("password2")String password,
				@RequestParam("nickname2")String nickname,@RequestParam("userinfo2")String userinfo,@RequestParam(value="file2",required=false)MultipartFile file,@RequestParam("sex2")String sex,
				@RequestParam("phone2")String phone,@RequestParam("cardnum2")String cardnum,@RequestParam("dept2")String dept, @RequestParam("date2")String birthday,HttpServletRequest request) throws IOException{
			
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			user.setNickname(nickname);
			user.setUserinfo(userinfo);
			user.setSex(sex);
			user.setPhone(phone);
			user.setDept(dept);
			user.setCardnum(cardnum);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			System.out.println(birthday);
			Date birthday1 = null;
			try {
				birthday1 = sdf.parse(birthday);
				System.out.println(birthday);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			user.setBirthday(birthday1);
			if(file!=null&&!file.isEmpty()){
				String savePath = request.getServletContext().getRealPath(
						"/WEB-INF/upload/headPic");
				File saveDir = new File(savePath);
				if (!saveDir.exists() && !saveDir.isDirectory()) {
					System.out.println(savePath + "目录不存在，需要创建");
					saveDir.mkdir();
				}
				String originalName = file.getOriginalFilename();
				String type =  originalName.substring(originalName.lastIndexOf("."));
				System.out.println("type : " + type);
				UUID uuid = UUID.randomUUID();
				String picName = username+"-"+uuid + type;
				System.out.println(picName);
				FileUtils.copyInputStreamToFile(file.getInputStream(), new File(savePath, picName) );
				System.out.println( picName+" 上传成功");
				user.setPic("upload/headPic/"+picName);
			}else{
				user.setPic("/studyonline/resources/images/default-pic.jpg");
				System.out.println("===");
			}
			if(ums.addUser(user)){
				return "success";
			}
			return "failed";
		}
		
		@RequestMapping("/addUserByFile")
		public @ResponseBody String addUserByFile(@RequestParam("file3") MultipartFile file, HttpServletRequest request) throws IOException {
			
			if(file!=null&&!file.isEmpty()){
//				CommonsMultipartFile cf = (CommonsMultipartFile)file;
//				DiskFileItem dfi = (DiskFileItem)cf.getFileItem();
//				File fileTmp = dfi.getStoreLocation();
				
				ums.addUserByFile(file);
			}
		
			return "数据导入成功";
		}
		
		@RequestMapping("/delUser")
		public @ResponseBody String delUser(String username){
			if(ums.delUser(username)){
				return "删除成功";
			}
			return "删除失败";
		}
		@RequestMapping("/delSelectUser")
		public @ResponseBody String delSelectUser(@RequestParam(value = "userList[]") String[] userList){
			int n = 0;
			for(String str : userList){
				if(!ums.delUser(str)){
					n++;
				}
			}
			return  n+" 条记录删除失败";
			
		}
	
		@RequestMapping("/modifyUser")
		public @ResponseBody String modifyUser(@RequestBody User user){
			System.out.println(user);
			boolean flag =  ums.modifyUser(user);
			return "success";
		}
		
		@RequestMapping("/modifyUser2")
		public @ResponseBody String modifyUser2(@RequestParam(value="username1",required=false)String username, @RequestParam(value="password1",required=false)String password,
				@RequestParam("nickname1")String nickname,@RequestParam("userinfo1")String userinfo,@RequestParam(value="file1",required=false)MultipartFile file,@RequestParam("sex1")String sex,
				@RequestParam("phone1")String phone,@RequestParam("cardnum1")String cardnum,@RequestParam("dept1")String dept, @RequestParam("date1")String birthday,HttpServletRequest request) throws IOException{
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			user.setNickname(nickname);
			user.setUserinfo(userinfo);
			user.setSex(sex);
			user.setPhone(phone);
			user.setDept(dept);
			user.setCardnum(cardnum);
			if(!birthday.equals("")){
				
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				System.out.println(birthday);
				Date birthday1 = null;
				try {
					birthday1 = sdf.parse(birthday);
					System.out.println(birthday);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				user.setBirthday(birthday1);
				System.out.println("hello");
			}
			if(file!=null&&!file.isEmpty()){
				String savePath = request.getServletContext().getRealPath(
						"/WEB-INF/upload/headPic");
				File saveDir = new File(savePath);
				if (!saveDir.exists() && !saveDir.isDirectory()) {
					System.out.println(savePath + "目录不存在，需要创建");
					saveDir.mkdir();
				}
				String originalName = file.getOriginalFilename();
				String type =  originalName.substring(originalName.lastIndexOf("."));
				System.out.println("type : " + type);
				UUID uuid = UUID.randomUUID();
				String picName = username+"-"+uuid + type;
				System.out.println(picName);
				FileUtils.copyInputStreamToFile(file.getInputStream(), new File(savePath, picName) );
				System.out.println( picName+" 上传成功");
				user.setPic("upload/headPic/"+picName);
			}else{
				user.setPic(null);
			}
			if(ums.modifyUser(user)){
				return "success";
			}
			return "failed";
		}
		
		@RequestMapping("/findUser")
		public @ResponseBody User findUser(String username){
			return ums.findUser(username);
		}
		
		@RequestMapping("/findAllUser")
		public @ResponseBody List<User> findAllUser(){
			return ums.findAllUser();
		}
		
		@RequestMapping("/addTeacher")
		public @ResponseBody String addTeacher(@RequestParam("username2")String username, @RequestParam("password2")String password,
				@RequestParam("nickname2")String nickname,@RequestParam("userinfo2")String userinfo,@RequestParam(value="file2",required=false)MultipartFile file,@RequestParam("sex2")String sex,
				@RequestParam("phone2")String phone,@RequestParam("cardnum2")String cardnum,@RequestParam("title2")String title, @RequestParam("date2")String birthday,HttpServletRequest request) throws IOException{
			
			Teacher user = new Teacher();
			user.setTeaname(username);
			user.setPassword(password);
			user.setNickname(nickname);
			user.setUserinfo(userinfo);
			user.setSex(sex);
			user.setPhone(phone);
			user.setTitle(title);
			user.setCardnum(cardnum);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			System.out.println(birthday);
			Date birthday1 = null;
			try {
				birthday1 = sdf.parse(birthday);
				System.out.println(birthday);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			user.setBirthday(birthday1);
			if(file!=null&&!file.isEmpty()){
				String savePath = request.getServletContext().getRealPath(
						"/WEB-INF/upload/headPic");
				File saveDir = new File(savePath);
				if (!saveDir.exists() && !saveDir.isDirectory()) {
					System.out.println(savePath + "目录不存在，需要创建");
					saveDir.mkdir();
				}
				String originalName = file.getOriginalFilename();
				String type =  originalName.substring(originalName.lastIndexOf("."));
				System.out.println("type : " + type);
				UUID uuid = UUID.randomUUID();
				String picName = username+"-"+uuid + type;
				System.out.println(picName);
				FileUtils.copyInputStreamToFile(file.getInputStream(), new File(savePath, picName) );
				System.out.println( picName+" 上传成功");
				user.setPic("/studyonline/upload/headPic/"+picName);
			}else{
				user.setPic("/studyonline/resources/images/default-pic.jpg");
		
			}
			if(ums.addTeacher(user)){
				return "success";
			}
			return "failed";
		}
		
		@RequestMapping("/addTeacherByFile")
		public @ResponseBody String addTeacherByFile(@RequestParam("file3")MultipartFile file){
			if(file!=null&&!file.isEmpty()){
				String msg = ums.addTeacherByFile(file);
				if(msg.length()>8){
					return msg;
				}else{
					return "success";
				}
			}
			return "failed";
		}
		
		@RequestMapping("/delTeacher")
		public @ResponseBody String delTeacher(String teaname){
			if(ums.delTeacher(teaname)){
				return "success";
			}
			return "failed";
		}
		
		@RequestMapping("/delSelectTeacher")
		public @ResponseBody String delSelectTeacher(@RequestParam("userList[]") String[] userList){
			for(String str : userList){
				delTeacher(str);
			}
			return "success";
		}
	
		@RequestMapping("/modifyTeacher")
		public @ResponseBody String modifyTeacher(@RequestParam("username1")String username, @RequestParam("password1")String password,
				@RequestParam("nickname1")String nickname,@RequestParam("userinfo1")String userinfo,@RequestParam(value="file1",required=false)MultipartFile file,@RequestParam("sex1")String sex,
				@RequestParam("phone1")String phone,@RequestParam("cardnum1")String cardnum,@RequestParam("title1")String title, @RequestParam("date1")String birthday,HttpServletRequest request) throws IOException{
			Teacher user = new Teacher();
			user.setTeaname(username);
			user.setPassword(password);
			user.setNickname(nickname);
			user.setUserinfo(userinfo);
			user.setSex(sex);
			user.setPhone(phone);
			user.setTitle(title);
			user.setCardnum(cardnum);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			System.out.println(birthday);
			Date birthday1 = null;
			try {
				birthday1 = sdf.parse(birthday);
				System.out.println(birthday);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			user.setBirthday(birthday1);
			if(file!=null&&!file.isEmpty()){
				String savePath = request.getServletContext().getRealPath(
						"/WEB-INF/upload/headPic");
				File saveDir = new File(savePath);
				if (!saveDir.exists() && !saveDir.isDirectory()) {
					System.out.println(savePath + "目录不存在，需要创建");
					saveDir.mkdir();
				}
				String originalName = file.getOriginalFilename();
				String type =  originalName.substring(originalName.lastIndexOf("."));
				System.out.println("type : " + type);
				UUID uuid = UUID.randomUUID();
				String picName = username+"-"+uuid + type;
				System.out.println(picName);
				FileUtils.copyInputStreamToFile(file.getInputStream(), new File(savePath, picName) );
				System.out.println( picName+" 上传成功");
				user.setPic("/studyonline/upload/headPic/"+picName);
			}else{
				user.setPic(null);
			}
			if(ums.modifyTeacher(user)){
				return "success";
			}
			return "failed";
		}
		
		@RequestMapping("/findTeacher")
		public @ResponseBody Teacher findTeacher(String username){
			return ums.findTeacher(username);
		}
		
		@RequestMapping("/findAllTeacher")
		public @ResponseBody List<Teacher> findAllTeacher(){
			return ums.findAllTeacher();
		}
		
		
		@RequestMapping("/addAdmin")
		public @ResponseBody String addAdmin(Admin admin){
			if(ums.addAdmin(admin)){
				return "success	";
			}
			return "failed";
		}
		
		@RequestMapping("/delAdmin")
		public @ResponseBody String delAdmin(String username){
			if(ums.delAdmin(username)){
				return "success	";
			}
			return "failed";
		}
	
		@RequestMapping("/modifyAdmin")
		public String modifyAdmin(Admin admin){
			boolean flag =  ums.modifyAdmin(admin);
			return "index";
		}
		
		@RequestMapping("/findAdmin")
		public @ResponseBody Admin findAdmin(String username){
			return ums.findAdmin(username);
		}
		

		@RequestMapping("/modifymes")
		public @ResponseBody String modifymes(@RequestParam("username1")String username, 
				@RequestParam("nickname1")String nickname,@RequestParam("userinfo1")String userinfo,@RequestParam(value="file1",required=false)MultipartFile file,@RequestParam("sex1")String sex,
				@RequestParam("phone1")String phone,@RequestParam("cardnum1")String cardnum,@RequestParam("title1")String title, @RequestParam("date1")String birthday,HttpServletRequest request,Model model) throws IOException{
			Teacher user = new Teacher();
			user.setTeaname(username);
			user.setNickname(nickname);
			user.setUserinfo(userinfo);
			user.setSex(sex);
			user.setPhone(phone);
			user.setTitle(title);
			user.setCardnum(cardnum);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			System.out.println(birthday);
			Date birthday1 = null;
			try {
				birthday1 = sdf.parse(birthday);
				System.out.println(birthday);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			user.setBirthday(birthday1);
			if(file!=null&&!file.isEmpty()){
				String savePath = request.getServletContext().getRealPath(
						"/WEB-INF/upload/headPic");
				File saveDir = new File(savePath);
				if (!saveDir.exists() && !saveDir.isDirectory()) {
					System.out.println(savePath + "目录不存在，需要创建");
					saveDir.mkdir();
				}
				String originalName = file.getOriginalFilename();
				String type =  originalName.substring(originalName.lastIndexOf("."));
				System.out.println("type : " + type);
				UUID uuid = UUID.randomUUID();
				String picName = username+"-"+uuid + type;
				System.out.println(picName);
				FileUtils.copyInputStreamToFile(file.getInputStream(), new File(savePath, picName) );
				System.out.println( picName+" 上传成功");
				user.setPic("upload/headPic/"+picName);
			}else{
				user.setPic(null);
			}
			if(ums.modifymes(user)){
				user= ums.findTeacher(username);
				model.addAttribute("message",user);
				return "success";
			}
			return "failed";
		}
		
}
