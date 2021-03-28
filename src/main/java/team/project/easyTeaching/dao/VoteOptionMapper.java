package team.project.easyTeaching.dao;

import team.project.easyTeaching.pojo.VoteOption;

public interface VoteOptionMapper {
    int deleteByPrimaryKey(Integer optionId);

    int insert(VoteOption record);

    int insertSelective(VoteOption record);

    VoteOption selectByPrimaryKey(Integer optionId);

    int updateByPrimaryKeySelective(VoteOption record);

    int updateByPrimaryKey(VoteOption record);
}