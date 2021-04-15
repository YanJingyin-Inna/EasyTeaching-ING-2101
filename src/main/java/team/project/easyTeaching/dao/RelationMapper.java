package team.project.easyTeaching.dao;

import team.project.easyTeaching.pojo.Relation;

import java.util.List;

public interface RelationMapper {
    int deleteByPrimaryKey(Integer relationId);

    int insert(Relation record);

    int insertSelective(Relation record);

    Relation selectByPrimaryKey(Integer relationId);

    List<Relation> selectByStudentId(Integer studentId);

    int updateByPrimaryKeySelective(Relation record);

    int updateByPrimaryKey(Relation record);

    int deleteByRelation(Relation record);
}