package team.project.easyTeaching.dao;

import team.project.easyTeaching.pojo.Class;

import java.util.List;

public interface ClassMapper {
    int deleteByPrimaryKey(Integer classId);

    int insert(Class record);

    int insertSelective(Class record);

    Class selectByPrimaryKey(Integer classId);

    List<Class> selectByPrimaryKeyList(List<Integer> classIdList);

    int updateByPrimaryKeySelective(Class record);

    int updateByPrimaryKey(Class record);

    Class selectByClassCode(String classCode);

    List<Class> selectByCourseId(Integer courseId);

}