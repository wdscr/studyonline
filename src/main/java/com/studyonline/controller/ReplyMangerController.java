package com.studyonline.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.studyonline.model.Post;
import com.studyonline.model.Reply;
import com.studyonline.service.PostMangerService;
import com.studyonline.service.ReplyMangerService;

@RequestMapping("/replyManager")
@Controller
public class ReplyMangerController {
	
	@Autowired
	ReplyMangerService rms;
	
	@Autowired
	PostMangerService pms;
	
	@RequestMapping("/getReplyFloor1")
	public @ResponseBody Map<String, Object> getReplyFloor1(int postid){
		
		return rms.getReplyFloor1(postid);
	}
	
	@RequestMapping("getReplyFloor2")
	public @ResponseBody Map<String, Object> getReplyFloor2(int postid){
		return rms.getReplyFloor2(postid);
	}
	
	@RequestMapping("/delReply")
	public @ResponseBody String delReply(int replyid){
		return rms.delReply(replyid);
	}
	@RequestMapping("/addReply")
	public @ResponseBody String addReply(@RequestBody Reply reply	){
		int postid = reply.getPostid();
		Map<String, Object> map = pms.getPostCont(postid);
		Post post = (Post) map.get("post");
		int replynum = post.getReplynum();
		replynum++;
		post.setReplynum(replynum);
		pms.updatePost(post);
		return rms.addReply(reply);
	}
}
