package com.studyonline.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.studyonline.model.Post;
import com.studyonline.model.User;
import com.studyonline.service.PostMangerService;
import com.studyonline.service.UserMangerService;

@Controller
@RequestMapping("/postManager")
public class PostMangerController {
	
	@Autowired
	PostMangerService pms;
	
	@Autowired
	UserMangerService ums;
	

	@RequestMapping("/findAllPost")
	public @ResponseBody List<Post> findAllPost(){
		return pms.findAllPost();
	}
	
	@RequestMapping("/findPostById")
	public @ResponseBody Map<String, Object> findPostById(String uid){
		return pms.findPostByUid(uid);
	}
	
	
	@RequestMapping("/countPost")
	public @ResponseBody int CountPost(String search){
		return pms.CountPost(search);
	}
	
	@RequestMapping("/findAllPost2")
	public @ResponseBody Map<String, Object> findAllPost2(){
		return pms.findAllPost2();
	}
	
	@RequestMapping("/findAllPost3")
	public @ResponseBody Map<String, Object> findAllPost3(int start,int pre,String search){
		return pms.findAllPost3(start,pre,search);
	}
	
	@RequestMapping("/delPost")
	public @ResponseBody String delPost(int postid){
		return pms.delPost(postid);
	}
	
	@RequestMapping("/getPostCont")
	public @ResponseBody Map<String, Object> getPostCont(int postid){
		return pms.getPostCont(postid);
	}
	
	@RequestMapping("/addPost")
	public String addPost(@RequestParam("form-title")String title,@RequestParam("form-cont")String cont,@RequestParam("form-tag")String tag,
			@RequestParam("form-uid")String uid,@RequestParam("form-nickname")String nickname,  Model model){
		

		Post post  = new Post();
		post.setName(title);
		post.setContent(cont);
		post.setLabel(tag);
		post.setCreateduid(uid);
		post.setNickname(nickname);
		post.setReplynum(0);
		post.setCreatedtime(new Date());
		int x = pms.addPost(post);
		System.out.println(post.getPostid());

		model.addAttribute("post", post);
		User user = ums.findUser(post.getCreateduid());
		System.out.println("username "+ user.getNickname());
		model.addAttribute("louzhu", user);
		
		return "redirect:clickReply/"+x;
	}
	
	@RequestMapping("/clickReply/{postid}")
	public String clickReply(@PathVariable("postid") int postid, Model model){
		Map<String, Object> map = pms.getPostCont(postid);
		Post post = (Post) map.get("post");
		model.addAttribute("post", post);
		
		User user = ums.findUser(post.getCreateduid());
		model.addAttribute("louzhu", user);
		
		return "forward:../../questionDetail.jsp";
	}
}
