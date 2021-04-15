package team.project.easyTeaching.service.impl;


import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.project.easyTeaching.common.ServerResponse;
import team.project.easyTeaching.dao.*;
import team.project.easyTeaching.pojo.*;
import team.project.easyTeaching.pojo.Class;
import team.project.easyTeaching.service.ICourseService;
import team.project.easyTeaching.vo.CourseShowVo;

import java.util.ArrayList;
import java.util.List;

/**
 * @Classname CourseServiceImpl
 * @Description TODO
 * @Created by 颜
 */

@Service("iCourseService")
public class CourseServiceImpl implements ICourseService {

    @Autowired
    private CourseMapper courseMapper;

    @Autowired
    private TermMapper termMapper;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private ClassMapper classMapper;

    @Autowired
    private RelationMapper relationMapper;

    @Override
    public ServerResponse<List<CourseShowVo>> courseView(String personName) {
        if (personName == null){
            return ServerResponse.createByErrorMessage("请确认登录状态");
        }
        User user = userMapper.selectByPrimaryKey(personName);
        int role =  user.getRole();
        List<CourseShowVo> showList = new ArrayList<CourseShowVo>();
        if (role == 1) {
            int teacherId = user.getUid();
            //学期
            List<Term> termsList = termMapper.selectTermsByTeacher(teacherId);
            if (termsList.size() == 0){
                return ServerResponse.createByErrorMessage("请确认是否存在课程，或重新登录");
            }

            //课程
            List<Integer> termIdList = new ArrayList<Integer>();
            termsList .forEach(n -> termIdList.add(n.getTermId()));
            List<Course> coursesList = courseMapper.selectByTermIdList(termIdList);

            //封装进入vo类
            for (Term term : termsList){
                int termId = term.getTermId();
                for(Course course : coursesList){
                    if (course.getTermId() == termId){
                        CourseShowVo courseShowVo = new CourseShowVo();
                        courseShowVo.setTeacherId(teacherId);
                        courseShowVo.setTermId(termId);
                        courseShowVo.setTermName(term.getTermName());
                        courseShowVo.setCourseId(course.getCourseId());
                        courseShowVo.setCourseName(course.getCourseName());
                        showList.add(courseShowVo);
                    }
                }
            }
            return ServerResponse.createBySuccess("查询成功",showList);

        }else if(role == 0){
            //学生 在哪些班级-->课程-->学期
            int studentId = user.getUid();
            //获取关系
            List<Relation> relationsList = relationMapper.selectByStudentId(studentId);

            if (relationsList.size() == 0){
                return ServerResponse.createByErrorMessage("请确认是否已加入课程，或重新登录");
            }

            //用classId获取课程
            List<Integer> classIdList = new ArrayList<Integer>();
            relationsList .forEach(n -> classIdList.add(n.getClassId()));
            List<Class> classesList = classMapper.selectByPrimaryKeyList(classIdList);

            //拿course和term放入vo
            for (Class classes : classesList){
                int courseId = classes.getCourseId();
                Course course = courseMapper.selectByPrimaryKey(courseId);
                Term term = termMapper.selectByPrimaryKey(course.getTermId());
                CourseShowVo courseShowVo = new CourseShowVo();
                courseShowVo.setStudentId(studentId);
                courseShowVo.setTermId(term.getTermId());
                courseShowVo.setTermName(term.getTermName());
                courseShowVo.setCourseId(course.getCourseId());
                courseShowVo.setCourseName(course.getCourseName());
                courseShowVo.setClassId(classes.getClassId());
                courseShowVo.setCourseName(course.getCourseName());
                showList.add(courseShowVo);
            }
        }
        return ServerResponse.createBySuccess("查询成功",showList);
    }

    @Override
    public ServerResponse<List<Course>> selectByTermId(Integer termId) {
        List<Course> courseList =  courseMapper.selectByTermId(termId);
        if(courseList.size() == 0){
            return  ServerResponse.createByErrorMessage("当前学期下无课程请确认");
        }
        return ServerResponse.createBySuccess("查询成功",courseList);
    }

    @Override
    public ServerResponse<List<Course>> selectByTermIdList(Integer teacherId) {
        List<Term> termList = termMapper.selectTermsByTeacher(teacherId);
        if (termList.size() == 0){
            return ServerResponse.createByErrorMessage("请确认是否存在课程，或重新登录");
        }
        List<Integer> termIdList = new ArrayList<Integer>();
        termList .forEach(n -> termIdList.add(n.getTermId()));
        List<Course> courseList =  courseMapper.selectByTermIdList(termIdList);
        if (courseList.size() == 0){
            return ServerResponse.createByErrorMessage("请确认是否存在课程");
        }
        return ServerResponse.createBySuccess("查询成功",courseList);
    }

    @Override
    public ServerResponse<String> addCourse(Course course) {
        int resultCount = courseMapper.insertSelective(course);
        if (resultCount <= 0){
            return ServerResponse.createByErrorMessage("添加失败");
        }
        return ServerResponse.createBySuccess("添加成功","success");
    }

    @Override
    public ServerResponse<String> deleteCourse(Integer courseId) {
        int resultCount = courseMapper.deleteByPrimaryKey(courseId);
        if (resultCount <= 0){
            return ServerResponse.createByErrorMessage("删除失败");
        }
        return ServerResponse.createBySuccessMessage("删除成功");
    }

    @Override
    public ServerResponse<JSONObject> showCourseClass(String classCode){
        Class class1 = classMapper.selectByClassCode(classCode);
        if (class1 == null){
            return ServerResponse.createByErrorMessage("班级代码不存在,请确认");
        }

        Course course = courseMapper.selectByPrimaryKey(class1.getCourseId());
        Term term = termMapper.selectByPrimaryKey(course.getTermId());

        JSONObject data = new JSONObject();
        try {
            data.put("courseName", course.getCourseName());
            data.put("className", class1.getClassName());
            data.put("courseDesc", course.getCourseDesc());
            data.put("classId", class1.getClassId());
            data.put("termName", term.getTermName());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return ServerResponse.createBySuccess(data);
    }

    @Override
    public ServerResponse<String> joinClass(Relation relation) {
        int resultCount = relationMapper.insertSelective(relation);
        if(resultCount <= 0){
            return  ServerResponse.createByErrorMessage("加入失败");
        }
        return ServerResponse.createBySuccessMessage("加入成功");
    }

    @Override
    public ServerResponse<String> outClass(Relation relation) {
        int resultCount = relationMapper.deleteByRelation(relation);
        if(resultCount <= 0){
            return  ServerResponse.createByErrorMessage("退出失败");
        }
        return ServerResponse.createBySuccessMessage("退出成功");
    }

    @Override
    public ServerResponse<JSONObject> showOutClassInfo(Integer courseId,Integer studentId){
        List<Class> classList = classMapper.selectByCourseId(courseId);
        List<Relation> relationList = relationMapper.selectByStudentId(studentId);

        JSONObject data = new JSONObject();
        for(Class classItem : classList){
            Integer classId = classItem.getClassId();
            for(Relation relation : relationList){
                if(classId == relation.getClassId()){
                    Course course = courseMapper.selectByPrimaryKey(classItem.getCourseId());
                    Term term = termMapper.selectByPrimaryKey(course.getTermId());
                    try {
                        data.put("courseName", course.getCourseName());
                        data.put("className", classItem.getClassName());
                        data.put("courseDesc", course.getCourseDesc());
                        data.put("classId", classItem.getClassId());
                        data.put("termName", term.getTermName());
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    return ServerResponse.createBySuccess(data);

                }
            }
        }
        return ServerResponse.createBySuccess(data);
    }





}
