package com.studyonline.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studyonline.mapper.MystudyMapper;
import com.studyonline.model.Mystudy;
import com.studyonline.model.MystudyExample;
import com.studyonline.model.UserCourse;
import com.studyonline.model.MystudyExample.Criteria;

@Service
public class MyStudyService {
	
	@Autowired
	MystudyMapper mm;

	public String addinto(Mystudy record) {
		int result=mm.insertSelective(record);
		return result>0?"success":"failed";
	}

	public String studying(String uid, int cid) {
		MystudyExample meExample=new MystudyExample();
		Criteria cc=meExample.createCriteria();
		cc.andUidEqualTo(uid);
		cc.andCourseidEqualTo(cid);
		List<Mystudy> cList=mm.selectByExample(meExample);
		if(cList!=null&&cList.size()>0){
			return "yes";
		}
		return "no";
	}

	public List<Mystudy> findmystudy(String uid,int start,int pre) {
		MystudyExample meExample=new MystudyExample();
		Criteria cc=meExample.createCriteria();
		meExample.setOrderByClause("addtime desc limit "+start+","+pre);
		cc.andUidEqualTo(uid);
		return mm.selectByExample(meExample);
	}

	public String delmystudy(String uid, int cid) {
		MystudyExample meExample=new MystudyExample();
		Criteria cc=meExample.createCriteria();
		cc.andUidEqualTo(uid);
		cc.andCourseidEqualTo(cid);
		int result =mm.deleteByExample(meExample);
		return result>0?"success":"failed";
	}

	public int countmystudy(String uid, int cid) {
		MystudyExample meExample=new MystudyExample();
		Criteria cc=meExample.createCriteria();
		cc.andUidEqualTo(uid);
		cc.andCourseidEqualTo(cid);
		int result =mm.countByExample(meExample);
		return result;
	}
	
	public List<UserCourse> findmystudy2(String uid) {
		return mm.usercourse(uid);
	}
}
