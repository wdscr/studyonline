package com.studyonline.mapper;

import com.studyonline.model.Secendir;
import com.studyonline.model.SecendirExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SecendirMapper {
    int countByExample(SecendirExample example);

    int deleteByExample(SecendirExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Secendir record);

    int insertSelective(Secendir record);

    List<Secendir> selectByExample(SecendirExample example);

    Secendir selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Secendir record, @Param("example") SecendirExample example);

    int updateByExample(@Param("record") Secendir record, @Param("example") SecendirExample example);

    int updateByPrimaryKeySelective(Secendir record);

    int updateByPrimaryKey(Secendir record);
}