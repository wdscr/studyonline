package com.studyonline.mapper;

import com.studyonline.model.Course;
import com.studyonline.model.CourseExample;
import com.studyonline.model.Section;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface CourseMapper {
    int countByExample(CourseExample example);

    int deleteByExample(CourseExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Course record);

    int insertSelective(Course record);

    List<Course> selectByExample(CourseExample example);

    Course selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Course record, @Param("example") CourseExample example);

    int updateByExample(@Param("record") Course record, @Param("example") CourseExample example);

    int updateByPrimaryKeySelective(Course record);

    int updateByPrimaryKey(Course record);
    
    List<Course> findCourseBetween(Section section);
    
    List<Course> findFiveHotestCourse();
    
    List<String> selecthot();

	List<Course> findCourseBetween(Section section, String f, String s);
    
}