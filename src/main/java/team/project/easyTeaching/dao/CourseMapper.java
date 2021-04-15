package team.project.easyTeaching.dao;

import team.project.easyTeaching.pojo.Course;

import java.util.List;

public interface CourseMapper {
    int deleteByPrimaryKey(Integer courseId);

    int insert(Course record);

    int insertSelective(Course record);

    Course selectByPrimaryKey(Integer courseId);

    int updateByPrimaryKeySelective(Course record);

    int updateByPrimaryKey(Course record);

    List<Course> selectByTermId(Integer termId);

    List<Course> selectByTermIdList(List<Integer> termId);


}