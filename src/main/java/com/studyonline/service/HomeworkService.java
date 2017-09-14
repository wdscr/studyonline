package com.studyonline.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studyonline.mapper.HomeworkMapper;
import com.studyonline.model.Homework;
import com.studyonline.model.HomeworkExample;
import com.studyonline.model.HomeworkExample.Criteria;

@Service
public class HomeworkService {
	
	@Autowired
	HomeworkMapper hwm;
	
	public boolean addHomework(List<Homework> records){
		int flag = hwm.insertBatch(records);
		if(flag > 0){
			return true;
		}else{
			return false;
		}
	}

	public Homework findHomework(int id) {
		HomeworkExample he = new HomeworkExample();
	     Criteria c = he.createCriteria();
		 c.andCourseidEqualTo(id);
		try {
			return hwm.selectByExample(he);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return  null;
		}
		
	}

	public int modifyhw(Homework hwwHomework) {
		HomeworkExample xExample=new HomeworkExample();
	     Criteria c =  xExample.createCriteria();
		c.andCourseidEqualTo(hwwHomework.getCourseid());
		int flag=hwm.updateByExampleSelective(hwwHomework,xExample);
		return flag;
	}
}
