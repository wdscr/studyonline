package com.studyonline.mapper;

import com.studyonline.model.Courseclass;
import com.studyonline.model.CourseclassExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CourseclassMapper {
    int countByExample(CourseclassExample example);

    int deleteByExample(CourseclassExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Courseclass record);

    int insertSelective(Courseclass record);

    List<Courseclass> selectByExample(CourseclassExample example);

    Courseclass selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Courseclass record, @Param("example") CourseclassExample example);

    int updateByExample(@Param("record") Courseclass record, @Param("example") CourseclassExample example);

    int updateByPrimaryKeySelective(Courseclass record);

    int updateByPrimaryKey(Courseclass record);
}