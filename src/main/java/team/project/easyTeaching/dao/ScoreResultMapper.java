package team.project.easyTeaching.dao;

import team.project.easyTeaching.pojo.ScoreResult;

public interface ScoreResultMapper {
    int deleteByPrimaryKey(Integer scoreId);

    int insert(ScoreResult record);

    int insertSelective(ScoreResult record);

    ScoreResult selectByPrimaryKey(Integer scoreId);

    int updateByPrimaryKeySelective(ScoreResult record);

    int updateByPrimaryKey(ScoreResult record);
}