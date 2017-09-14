package com.studyonline.mapper;

import com.studyonline.model.Hwlib;
import com.studyonline.model.HwlibExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface HwlibMapper {
    int countByExample(HwlibExample example);

    int deleteByExample(HwlibExample example);

    int deleteByPrimaryKey(Integer hlid);

    int insert(Hwlib record);

    int insertSelective(Hwlib record);

    List<Hwlib> selectByExample(HwlibExample example);

    Hwlib selectByPrimaryKey(Integer hlid);

    int updateByExampleSelective(@Param("record") Hwlib record, @Param("example") HwlibExample example);

    int updateByExample(@Param("record") Hwlib record, @Param("example") HwlibExample example);

    int updateByPrimaryKeySelective(Hwlib record);

    int updateByPrimaryKey(Hwlib record);
}