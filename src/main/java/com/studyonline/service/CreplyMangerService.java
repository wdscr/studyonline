package com.studyonline.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studyonline.mapper.ChapterreplyMapper;
import com.studyonline.mapper.UserMapper;
import com.studyonline.model.Chapterreply;
import com.studyonline.model.ChapterreplyExample;
import com.studyonline.model.ChapterreplyExample.Criteria;
import com.studyonline.model.Section;
import com.studyonline.model.User;

@Service
public class CreplyMangerService {

	@Autowired
	ChapterreplyMapper crm;
	
	@Autowired
	UserMapper um;
	
	public List<Chapterreply> findCreplyBetween(Section section){
		return null;
	}
	
	public String delCreply(int creplyId){
		if(crm.deleteByPrimaryKey(creplyId) == 1){
			return "success";
		}
		return "failed";
	}
	
	public String modifyCreply(Chapterreply creply){
		if(crm.updateByPrimaryKey(creply) == 1){
			return "success";
		}
		return "failed";
	}

	public int addCreply(Chapterreply ctpChapterreply) {
		crm.insert(ctpChapterreply);
		return ctpChapterreply.getReplyid();
	}
	
	public Map<String, Object> findAllCreplyByChapterId(int chapterid){
		Map<String, Object> map = new HashMap<String, Object>();
		ChapterreplyExample cre = new ChapterreplyExample();
		Criteria c = cre.createCriteria();
		c.andChapteridEqualTo(chapterid);
		List<Chapterreply> cList = crm.selectByExample(cre);
		map.put("CreplyList", cList);
		User user = null;
		for(Chapterreply cr : cList){
			String uid = cr.getUid();
			user = um.selectByPrimaryKey(uid);
			try {
				map.put("pic-"+uid, user.getPic());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return map;
	}
	
	

}
