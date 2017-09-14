package com.studyonline.mapper;

import com.studyonline.model.Mystudy;
import com.studyonline.model.MystudyExample;
import com.studyonline.model.UserCourse;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface MystudyMapper {
    int countByExample(MystudyExample example);

    int deleteByExample(MystudyExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Mystudy record);

    int insertSelective(Mystudy record);

    List<Mystudy> selectByExample(MystudyExample example);

    Mystudy selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Mystudy record, @Param("example") MystudyExample example);

    int updateByExample(@Param("record") Mystudy record, @Param("example") MystudyExample example);

    int updateByPrimaryKeySelective(Mystudy record);

    int updateByPrimaryKey(Mystudy record);
    
    List<UserCourse> usercourse(String uid);
}