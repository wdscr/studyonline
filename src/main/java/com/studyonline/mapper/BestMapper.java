package com.studyonline.mapper;

import com.studyonline.model.Best;
import com.studyonline.model.BestExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BestMapper {
    int countByExample(BestExample example);

    int deleteByExample(BestExample example);

    int deleteByPrimaryKey(Integer cid);

    int insert(Best record);

    int insertSelective(Best record);

    List<Best> selectByExample(BestExample example);

    Best selectByPrimaryKey(Integer cid);

    int updateByExampleSelective(@Param("record") Best record, @Param("example") BestExample example);

    int updateByExample(@Param("record") Best record, @Param("example") BestExample example);

    int updateByPrimaryKeySelective(Best record);

    int updateByPrimaryKey(Best record);
}