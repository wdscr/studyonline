package com.studyonline.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.javassist.expr.NewArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import org.springframework.web.bind.annotation.SessionAttributes;

import com.studyonline.model.Teacher;
import com.studyonline.model.User;
import com.studyonline.service.LoginService;

@Controller
@RequestMapping("/login")
@SessionAttributes(value={"identify", "message", "message1","student"})
public class LoginController {

		@Autowired
		LoginService ls;
	
		@RequestMapping(value="/msgCheck",method = RequestMethod.POST)
		public String msgCheck(@RequestParam  String username, String password, String usertype, Model model){
			System.out.println(username+"  "+password+"  "+usertype);
			Object obj = ls.msgCheck(username, password, usertype);
			if(obj==null){
				    return "redirect:../ManageLogin.jsp?wrongMsg=wrong";
			}
			if(obj instanceof User){
				model.addAttribute("identify", "student");
				model.addAttribute("message", obj);
			}else if(obj instanceof Teacher){
				model.addAttribute("identify", "teacher");
				model.addAttribute("message1", obj);
				System.out.println(((Teacher)obj).getBirthday());
				return "redirect:../Coursemanage.jsp";
			}else{
				model.addAttribute("identify", "admin");
				model.addAttribute("message1", obj);
				return "redirect:../admin.jsp";
				//return "index";
			}
			
			return "redirect:Manage";
		}
		
		@RequestMapping(value="/msgCheckstu")
		public @ResponseBody String msgCheckstu(String username, String password, String usertype, Model model,HttpServletRequest request, HttpSession session){
			Object obj = ls.msgCheck(username, password, usertype);
			if(obj==null){
			    return "failed";
		    }else{
				model.addAttribute("identify", "student");
				model.addAttribute("message", obj);
				session = request.getSession();
				session.setAttribute("student", obj);
				
				ServletContext sc2 = session.getServletContext();
				sc2.setAttribute("session", session);
				
				return "success";
				//return "index";
			}
		}
		
		@RequestMapping(value="/Manage")
		public String Go(){
			return "index";
		}
		
		@RequestMapping(value="/logout")
		public @ResponseBody int logout(Model model){
			model.addAttribute("identify", "null");
			model.addAttribute("message", new User());
			return 1;
		}
		
		@RequestMapping(value="/logout2")
		public  String logout2(Model model){
			model.addAttribute("identify", "null");
			model.addAttribute("message1", new Teacher());
			 return "redirect:../ManageLogin.jsp";
		}
}
