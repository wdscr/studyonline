package com.studyonline.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studyonline.controller.BestController;
import com.studyonline.mapper.BestMapper;
import com.studyonline.model.Best;
import com.studyonline.model.BestExample;
import com.studyonline.model.BestExample.Criteria;

@Service
public class BestService {
  
	@Autowired
	BestMapper bm;
	
	public Best addbest(Best best) {
		int x=bm.insert(best);
		if(x>0) return best;
		return null;
	}

	public List<Best >findbest() {
		return bm.selectByExample(new BestExample());
	}

	public int delbest(int id) {
		return bm.deleteByPrimaryKey(id);
	}

	public int modifybest(Best best) {
		return bm.updateByPrimaryKey(best);
	}

}
