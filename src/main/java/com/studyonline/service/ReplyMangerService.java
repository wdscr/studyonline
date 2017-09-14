package com.studyonline.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studyonline.mapper.ReplyMapper;
import com.studyonline.mapper.UserMapper;
import com.studyonline.model.Reply;
import com.studyonline.model.ReplyExample;
import com.studyonline.model.ReplyExample.Criteria;
import com.studyonline.model.ReplyExample.Criterion;
import com.studyonline.model.Section;
import com.studyonline.model.User;

@Service
public class ReplyMangerService {

	@Autowired
	ReplyMapper rm;
	
	@Autowired
	UserMapper um;
	
	public List<Reply> findReplyBetween(Section section){
		return null;
	}
	
	public String addReply(Reply reply){
		if(rm.insertSelective(reply) == 1){
			return "success";
		}
		return "failed";
	}
	
	public String delReply(int replyId){
		if(rm.deleteByPrimaryKey(replyId) == 1){
			return "success	";
		}
		return "failed";
	}
	
	public String modifyReply(Reply reply){
		if(rm.updateByPrimaryKey(reply) == 1){
			return "success";
		}
		return "failed";
	}
	
	public Map<String, Object> getReplyFloor1(int postid){
		ReplyExample re  = new ReplyExample();
		Criteria criteria = re.createCriteria();
		criteria.andPostidEqualTo(postid);
		criteria.andReplytoreplyidEqualTo(-1);
		List<Reply>	replyList = rm.selectByExample(re);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("replyList", replyList);
		User user = new User();
		for(Reply i : replyList){
			String uid = i.getUid();
			user = um.selectByPrimaryKey(uid);
			map.put("pic-"+uid, user.getPic());
		}
		return map;
	}
	
	public Map<String, Object> getReplyFloor2(int postid){
		ReplyExample re = new ReplyExample();
		Criteria criteria = re.createCriteria();
		criteria.andPostidEqualTo(postid);
		criteria.andReplytoreplyidNotEqualTo(-1);
		List<Reply>  replyList = rm.selectByExample(re);
		User user = null;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("replyList", replyList);
		for(Reply i : replyList){
			user = um.selectByPrimaryKey(i.getUid());
			map.put("pic-"+i.getUid(), user.getPic());
		}
		return map;
	}
}
