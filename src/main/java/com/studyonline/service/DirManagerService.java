package com.studyonline.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studyonline.mapper.CourseMapper;
import com.studyonline.mapper.CourseclassMapper;
import com.studyonline.mapper.FirstdirMapper;
import com.studyonline.mapper.SecendirMapper;
import com.studyonline.model.Course;
import com.studyonline.model.Courseclass;
import com.studyonline.model.CourseclassExample;
import com.studyonline.model.Firstdir;
import com.studyonline.model.FirstdirExample;
import com.studyonline.model.Secendir;
import com.studyonline.model.SecendirExample;
import com.studyonline.model.SecendirExample.Criteria;

@Service
public class DirManagerService {
	@Autowired
	FirstdirMapper fm;

	@Autowired
	SecendirMapper sm;
	
	@Autowired
	CourseMapper cm;

	public List<Firstdir> findFirstDir() {
		return fm.selectByExample(new FirstdirExample());
	}

	public List<Secendir> findSecDir() {
		return sm.selectByExample(new SecendirExample());
	}

	public List<Firstdir> findCourseClass1() {
		return fm.selectByExample(new FirstdirExample());
	}

	public List<Secendir> findCourseClass2(int id) {
		SecendirExample se = new SecendirExample();
		Criteria criteria = se.createCriteria();
		criteria.andFdiridEqualTo(id);
		return sm.selectByExample(se);
	}

	public int addClass1(String classn) {
		Firstdir record = new Firstdir();
		record.setClassname(classn);
		int x= fm.insertSelective(record);
		if(x>0) return  record.getId();
		else return -1;
	}

	public int addClass2(Secendir secendir) {
		int x= sm.insertSelective(secendir);
		if(x>0) return secendir.getId();
		return 0;
	}

	public int delClass1(int id) {
		return fm.deleteByPrimaryKey(id);
	}

	public int delClass2(int id) {
		return sm.deleteByPrimaryKey(id);
	}

	public List<Secendir> findHOTCourseClass2() {
		List<String> cList=cm.selecthot();
		SecendirExample se = new SecendirExample();
		Criteria criteria = se.createCriteria();
		criteria.andClassnameIn(cList);
		return sm.selectByExample(se);
	}


}
