package team.project.easyTeaching.dao;

import team.project.easyTeaching.pojo.Vote;

public interface VoteMapper {
    int deleteByPrimaryKey(Integer voteId);

    int insert(Vote record);

    int insertSelective(Vote record);

    Vote selectByPrimaryKey(Integer voteId);

    int updateByPrimaryKeySelective(Vote record);

    int updateByPrimaryKey(Vote record);
}