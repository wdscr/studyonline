package com.studyonline.mapper;

import com.studyonline.model.Chapterreply;
import com.studyonline.model.ChapterreplyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ChapterreplyMapper {
    int countByExample(ChapterreplyExample example);

    int deleteByExample(ChapterreplyExample example);

    int deleteByPrimaryKey(Integer replyid);

    int insert(Chapterreply record);

    int insertSelective(Chapterreply record);

    List<Chapterreply> selectByExample(ChapterreplyExample example);

    Chapterreply selectByPrimaryKey(Integer replyid);

    int updateByExampleSelective(@Param("record") Chapterreply record, @Param("example") ChapterreplyExample example);

    int updateByExample(@Param("record") Chapterreply record, @Param("example") ChapterreplyExample example);

    int updateByPrimaryKeySelective(Chapterreply record);

    int updateByPrimaryKey(Chapterreply record);
}