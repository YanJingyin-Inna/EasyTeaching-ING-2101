package team.project.easyTeaching.service;

import com.alibaba.fastjson.JSONObject;
import team.project.easyTeaching.common.ServerResponse;
import team.project.easyTeaching.pojo.Course;
import team.project.easyTeaching.pojo.Relation;
import team.project.easyTeaching.pojo.Term;
import team.project.easyTeaching.vo.CourseShowVo;

import java.util.List;

/**
 * @Classname ICourseService
 * @Description TODO
 * @Created by 颜
 */
public interface ICourseService {

   ServerResponse<List<CourseShowVo>> courseView(String personName);

   ServerResponse<List<Course>> selectByTermId(Integer termId);

   ServerResponse<List<Course>> selectByTermIdList(Integer teacherId);

   ServerResponse<String> addCourse(Course course);

   ServerResponse<String>  deleteCourse(Integer courseId);

   ServerResponse<JSONObject> showCourseClass(String classCode);

   ServerResponse<String> joinClass(Relation relation);

   ServerResponse<String> outClass(Relation relation);

   ServerResponse<JSONObject> showOutClassInfo(Integer courseId,Integer studentId);

}
