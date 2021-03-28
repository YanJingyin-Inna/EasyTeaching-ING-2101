package team.project.easyTeaching.dao;

import team.project.easyTeaching.pojo.ScoreSetting;

public interface ScoreSettingMapper {
    int deleteByPrimaryKey(Integer settingId);

    int insert(ScoreSetting record);

    int insertSelective(ScoreSetting record);

    ScoreSetting selectByPrimaryKey(Integer settingId);

    int updateByPrimaryKeySelective(ScoreSetting record);

    int updateByPrimaryKey(ScoreSetting record);
}