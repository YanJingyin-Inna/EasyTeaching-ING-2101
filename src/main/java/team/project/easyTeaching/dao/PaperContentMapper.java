package team.project.easyTeaching.dao;

import team.project.easyTeaching.pojo.PaperContent;

public interface PaperContentMapper {
    int deleteByPrimaryKey(Integer paperQid);

    int insert(PaperContent record);

    int insertSelective(PaperContent record);

    PaperContent selectByPrimaryKey(Integer paperQid);

    int updateByPrimaryKeySelective(PaperContent record);

    int updateByPrimaryKey(PaperContent record);
}