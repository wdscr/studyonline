package com.studyonline.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studyonline.mapper.ChapterMapper;
import com.studyonline.model.Chapter;
import com.studyonline.model.ChapterExample;
import  com.studyonline.model.ChapterExample.Criteria;

@Service
public class ChapterMangerService {

		@Autowired
		ChapterMapper cm;
		public List<Chapter> findChapter(int courseId){
			 ChapterExample ce = new ChapterExample();
		     Criteria c = ce.createCriteria();
			 c.andCourseidEqualTo(courseId);
			 return cm.selectByExample(ce);
		}
		
		public int addChapter(Chapter chapter){
			return  cm.insert(chapter);
		
		}
		
		public boolean delChapter(int id){
			int flag = cm.deleteByPrimaryKey(id);
			if(flag == 1){
				return true;
			}else{
				return false;
			}
		}
		
		public boolean modifyChapter(Chapter chapter){
			int flag = cm.updateByPrimaryKey(chapter);
			if(flag == 1){
				return true;
			}else{
				return false;
			}
		}
		public boolean modifyChapter1(Chapter chapter){
			int flag = cm.updateByPrimaryKeySelective(chapter);
			if(flag == 1){
				return true;
			}else{
				return false;
			}
		}
		
		public boolean addChapterByList(List<Chapter> chapterList){
			System.out.println("addchapter------service");
			int flag = cm.insertBatch(chapterList);
			if(flag >= 1){
				return true;
			}else{
				return false;
			}
		}
		
		public List<Chapter> findAllChapter(){
			return cm.selectByExample(new ChapterExample());
		}
		
		public Chapter findOneChapter(int chapterid){
			return cm.selectByPrimaryKey(chapterid);
		}
		
}
