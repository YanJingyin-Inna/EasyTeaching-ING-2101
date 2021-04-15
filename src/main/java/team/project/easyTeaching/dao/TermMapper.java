package team.project.easyTeaching.dao;

import team.project.easyTeaching.pojo.Term;

import java.util.List;

public interface TermMapper {
    int deleteByPrimaryKey(Integer termId);

    int insert(Term record);

    int insertSelective(Term record);

    Term selectByPrimaryKey(Integer termId);

    int updateByPrimaryKeySelective(Term record);

    int updateByPrimaryKey(Term record);

    List<Term> selectTermsByTeacher(Integer teacherId);

}