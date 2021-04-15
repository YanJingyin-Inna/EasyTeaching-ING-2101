package team.project.easyTeaching.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import team.project.easyTeaching.common.Const;
import team.project.easyTeaching.common.ServerResponse;
import team.project.easyTeaching.pojo.Term;
import team.project.easyTeaching.pojo.User;
import team.project.easyTeaching.service.ITermService;

import javax.servlet.http.HttpSession;
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
    public ServerResponse<List<Term>> showTerms(Integer teacherId){

        return  iTermService.selectTermsByTeacher(teacherId);
    }

    @RequestMapping(value = "add_term.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> addTerm(Term term){
//        User teacher = (User) session.getAttribute(Const.CURRENT_USER);
//        Integer id = teacher.getUid();

        term.setTeacherId(-1303833160);
        return  iTermService.addTerm(term);
    }

    @RequestMapping(value = "delete_term.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> deleteTerm(Integer termId){
        // todo 用学期名和教师id查主键id
        return  iTermService.deleteTerm(termId);
    }



}
