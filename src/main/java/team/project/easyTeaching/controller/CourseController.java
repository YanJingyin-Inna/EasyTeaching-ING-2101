package team.project.easyTeaching.controller;

import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import team.project.easyTeaching.common.ServerResponse;
import team.project.easyTeaching.dao.CourseMapper;
import team.project.easyTeaching.pojo.Course;
import team.project.easyTeaching.pojo.Relation;
import team.project.easyTeaching.pojo.Term;
import team.project.easyTeaching.service.ICourseService;
import team.project.easyTeaching.vo.CourseShowVo;

import java.util.List;

/**
 * @Classname CourseController
 * @Description TODO
 * @Created by 颜
 */
@Controller
@RequestMapping("/course/")
public class CourseController {

    @Autowired
    private ICourseService iCourseService;

    @RequestMapping(value = "course_view.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<List<CourseShowVo>> courseView(String personName){
        return  iCourseService.courseView(personName);
    }

    @RequestMapping(value = "add_course.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> addCourse(Course course){
//        User teacher = (User) session.getAttribute(Const.CURRENT_USER);
//        Integer id = teacher.getUid();
        return  iCourseService.addCourse(course);
    }

    @RequestMapping(value = "show_termCourses.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<List<Course>> showTermCourses(Integer termId){
        return  iCourseService.selectByTermId(termId);
    }

    @RequestMapping(value = "show_courses.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<List<Course>> showCourses(Integer teacherId){
        return  iCourseService.selectByTermIdList(teacherId);
    }

    @RequestMapping(value = "delete_course.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> deleteCourse(Integer courseId){

        return  iCourseService.deleteCourse(courseId);
    }

    @RequestMapping(value = "show_course_class.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<JSONObject> showCourseClass(String classCode){
        return  iCourseService.showCourseClass(classCode);
    }

    @RequestMapping(value = "join_class.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> joinClass(Relation relation){

        return  iCourseService.joinClass(relation);
    }

    @RequestMapping(value = "out_class.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> outClass(Relation relation){
        return  iCourseService.outClass(relation);
    }

    @RequestMapping(value = "show_outClass_info.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<JSONObject> showOutClassInfo(Integer courseId,Integer studentId){
        return  iCourseService.showOutClassInfo(courseId,studentId);
    }
}
