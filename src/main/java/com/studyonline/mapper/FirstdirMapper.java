package com.studyonline.mapper;

import com.studyonline.model.Firstdir;
import com.studyonline.model.FirstdirExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FirstdirMapper {
    int countByExample(FirstdirExample example);

    int deleteByExample(FirstdirExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Firstdir record);

    int insertSelective(Firstdir record);

    List<Firstdir> selectByExample(FirstdirExample example);

    Firstdir selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Firstdir record, @Param("example") FirstdirExample example);

    int updateByExample(@Param("record") Firstdir record, @Param("example") FirstdirExample example);

    int updateByPrimaryKeySelective(Firstdir record);

    int updateByPrimaryKey(Firstdir record);
}