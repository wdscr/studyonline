package com.studyonline.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studyonline.mapper.CourseclassMapper;
import com.studyonline.model.Courseclass;
import com.studyonline.model.CourseclassExample;

@Service
public class ClassMangerService {
	
		@Autowired
		CourseclassMapper ccm;
		
		public boolean addClass(Courseclass cc){
			int flag = ccm.insert(cc);
			if(flag == 1){
				return true;
			}else{
				return false;
			}
		}
		
		public boolean deleteClass(int id){
			int falg = ccm.deleteByPrimaryKey(id);
			if(falg == 1){
				return true; 
			}else{
				return false;
			}
		}
		
		public List<Courseclass> findAllClass(){
			return ccm.selectByExample(new CourseclassExample());
		}
}
