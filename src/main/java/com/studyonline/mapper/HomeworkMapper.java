package com.studyonline.mapper;

import com.studyonline.model.Chapter;
import com.studyonline.model.Homework;
import com.studyonline.model.HomeworkExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface HomeworkMapper {
    int countByExample(HomeworkExample example);

    int deleteByExample(HomeworkExample example);

    int deleteByPrimaryKey(Integer hwid);

    int insert(Homework record);

    int insertSelective(Homework record);

    List<Homework> selectByExampleWithBLOBs(HomeworkExample example);

    Homework selectByExample(HomeworkExample example);

    Homework selectByPrimaryKey(Integer hwid);

    int updateByExampleSelective(@Param("record") Homework record, @Param("example") HomeworkExample example);

    int updateByExampleWithBLOBs(@Param("record") Homework record, @Param("example") HomeworkExample example);

    int updateByExample(@Param("record") Homework record, @Param("example") HomeworkExample example);

    int updateByPrimaryKeySelective(Homework record);

    int updateByPrimaryKeyWithBLOBs(Homework record);

    int updateByPrimaryKey(Homework record);
    
    int insertBatch(List<Homework> records);//批量插入，一般用这个
}