package team.project.easyTeaching.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import team.project.easyTeaching.common.ServerResponse;
import team.project.easyTeaching.pojo.Term;
import team.project.easyTeaching.service.ITermService;

import java.io.Serializable;
import java.util.List;

/**
 * @Classname CourseController
 * @Description TODO
 * @Created by 颜
 */


@Controller
@RequestMapping("/term/")
public class TermController {

    @Autowired
    private ITermService iTermService;

    @RequestMapping(value = "show_terms.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<List<String>> showTerms(Integer teacher_id){
        return  iTermService.selectAllTerms(teacher_id);
    }

    @RequestMapping(value = "add_term.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> addTerm(Term term){
        return  iTermService.addTerm(term);
    }

    @RequestMapping(value = "delete_term.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> deleteTerm(Integer termId){
        // todo 用学期名和教师id查主键id
        return  iTermService.deleteTerm(termId);
    }

    @RequestMapping(value = "update_term.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> updateTerm(Term term){
        return  iTermService.updateTerm(term);
    }



}
