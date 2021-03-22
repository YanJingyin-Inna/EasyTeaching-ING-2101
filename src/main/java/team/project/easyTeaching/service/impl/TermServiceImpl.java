package team.project.easyTeaching.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.project.easyTeaching.common.ServerResponse;
import team.project.easyTeaching.dao.TermMapper;
import team.project.easyTeaching.pojo.Term;
import team.project.easyTeaching.service.ITermService;

import java.util.List;

/**
 * @Classname TermServiceImpl
 * @Description TODO
 * @Created by 颜
 */

@Service("iTermService")
public class TermServiceImpl implements ITermService {

    @Autowired
    private TermMapper termMapper;

    @Override
    public ServerResponse<List<String>> selectAllTerms(Integer teacher_id) {
        List<String> termList =  termMapper.selectAllTermsByTeacher(teacher_id);
        return ServerResponse.createBySuccess(termList);
    }

    @Override
    public ServerResponse<String> addTerm(Term term) {
        int resultCount = termMapper.insertSelective(term);
        if (resultCount <= 0){
            return ServerResponse.createByErrorMessage("添加失败");
        }
        return ServerResponse.createBySuccessMessage("添加成功");
    }

    @Override
    public ServerResponse<String> deleteTerm(Integer termId) {
        int resultCount = termMapper.deleteByPrimaryKey(termId);
        if (resultCount <= 0){
            return ServerResponse.createByErrorMessage("删除失败");
        }
        return ServerResponse.createBySuccess("删除成功");
    }
}
