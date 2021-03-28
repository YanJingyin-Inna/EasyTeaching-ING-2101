package team.project.easyTeaching.dao;

import team.project.easyTeaching.pojo.TestResult;

public interface TestResultMapper {
    int deleteByPrimaryKey(Integer resultId);

    int insert(TestResult record);

    int insertSelective(TestResult record);

    TestResult selectByPrimaryKey(Integer resultId);

    int updateByPrimaryKeySelective(TestResult record);

    int updateByPrimaryKey(TestResult record);
}