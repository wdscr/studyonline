package com.studyonline.service;

import java.awt.color.CMMException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studyonline.mapper.PostMapper;
import com.studyonline.mapper.UserMapper;
import com.studyonline.model.Post;
import com.studyonline.model.PostExample;
import com.studyonline.model.PostExample.Criteria;
import com.studyonline.model.Section;
import com.studyonline.model.User;

@Service
public class PostMangerService {
		
	@Autowired
	PostMapper pm;
	@Autowired
	UserMapper um;
	
	public Map<String, Object> findPostByUid(String id){
		PostExample pe = new PostExample();
		Criteria c = pe.createCriteria();
		c.andCreateduidEqualTo(id);
		List<Post> list = pm.selectByExample(pe);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("postList", list);
		
		for(Post i : list){
			String uid = i.getCreateduid();
			User user = um.selectByPrimaryKey(uid);
			try {
				String pic = user.getPic();
				map.put("pic-"+uid, pic);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return map;
	}
	
	public List<Post> findAllPost(){
		PostExample pe = new PostExample();
		return pm.selectByExample(pe);
	}
	
	public Map<String, Object> findAllPost2(){
		PostExample pe = new PostExample();
		List<Post> list = pm.selectByExample(pe);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("postList", list);
		
		for(Post i : list){
			String uid = i.getCreateduid();
			User user = um.selectByPrimaryKey(uid);
			try {
				String pic = user.getPic();
				map.put("pic-"+uid, pic);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return map;
	}
	

	public String delPost(int postId){
		if(pm.deleteByPrimaryKey(postId) == 1){
			return "success";
		}
		return "failed";
	}
	
	public Map<String, Object> getPostCont(int postid){

		Post post = pm.selectByPrimaryKey(postid);
		Map<String, Object> map = new HashMap<String, Object>();
		if(post!=null){
			map.put("post",post);
			String uname = post.getCreateduid();
			User user = um.selectByPrimaryKey(uname);
			String pic = user.getPic();
			map.put("pic", pic);
			return map;
		}
		return null;
	}
	
	public int addPost(Post post){
		
		int x = pm.insertSelective(post);
		if(x == 1){
			return post.getPostid();
		}else{
			return -1;
		}
	}
	
	public void updatePost(Post post){
		pm.updateByPrimaryKey(post);
	}

	public Map<String, Object> findAllPost3(int start, int pre, String search) {
		PostExample pe = new PostExample();
		Criteria criteria = pe.createCriteria();
		if(search!=null&&search!=""){
			criteria.andLabelLike("%"+search+"%");
		}
		pe.setOrderByClause("CreatedTime desc limit "+start+","+pre);
		List<Post> list = pm.selectByExample(pe);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("postList", list);
		
		for(Post i : list){
			String uid = i.getCreateduid();
			User user = um.selectByPrimaryKey(uid);
			try {
				String pic = user.getPic();
				map.put("pic-"+uid, pic);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return map;
	}

	public int CountPost(String search) {
		PostExample pe = new PostExample();
		Criteria criteria = pe.createCriteria();
		if(search!=null&&search!=""){
			criteria.andLabelLike("%"+search+"%");
		}
		return  pm.countByExample(pe);
	}
}
