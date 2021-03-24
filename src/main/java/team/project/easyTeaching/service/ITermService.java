package team.project.easyTeaching.service;

import team.project.easyTeaching.common.ServerResponse;
import team.project.easyTeaching.pojo.Term;

import java.util.List;

/**
 * @Classname ITermService
 * @Description TODO
 * @Created by 颜
 */
public interface ITermService {

    ServerResponse<List<String>> selectAllTerms(Integer teacher_id );

    ServerResponse<String> addTerm(Term term);

    ServerResponse<String>  deleteTerm(Integer termId);

}
