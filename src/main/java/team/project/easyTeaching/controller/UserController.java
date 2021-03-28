package team.project.easyTeaching.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.test.annotation.Rollback;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import team.project.easyTeaching.common.Const;
import team.project.easyTeaching.common.ServerResponse;
import team.project.easyTeaching.pojo.User;
import team.project.easyTeaching.service.IUserService;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user/")
public class UserController {

    @Autowired
    //private IUserService iUserService;
    private IUserService iUserService;

    /**
     * 用户登录
     *
     * @param username
     * @param password
     * @param session
     * @return
     */

    @RequestMapping(value = "login.do")
//    @ResponseBody
//    public ServerResponse<User> login(String username, String password, Integer role, HttpSession session){
    public String login(String username, String password, Integer role, HttpSession session) {
        //service-->mybatis-->dao
        //0是学生，1是教师
        //查数据，判断逻辑

        //1.username     sql  --> 是否存在

        /*------1check username ------*/

        if (iUserService.checkusername(username) == 0) {
            session.setAttribute("msg", "用户不存在");
            return "forward:/login.jsp";
        }
        User user = iUserService.login(username);
//        System.out.println("我是usercontroller user"+user.toString());
        /*------check pwd------*/
        if (!user.getPassword().equals(password)) {
            session.setAttribute("msg", "密码错误");
            return "forward:/login.jsp";
        }
        /*------check role------*/
        if (user.getRole() != role) {
            session.setAttribute("msg", "身份选择错误");
            return "forward:/login.jsp";
        }

        if (role == 0) {
            session.setAttribute("user", user);

            return "forward:/student/stu_login_ok.jsp";
        }
        if (role == 1) {
            session.setAttribute("user", user);
            return "forward:/teacher/tea_login_ok.jsp";
        }

        return "forward:/index.jsp";


    }
    //页面跳转
//    @RequestMapping(value = "register.jsp")
//    public String turnToRegister(){
//        System.out.println("我是controller, 这是turnToRegister");
//        return "forward:/register.jsp";
//    }
    //登出接口
    @RequestMapping(value = "login.do" ,method = RequestMethod.GET )
    public String logout(HttpSession session){
        session.removeAttribute(Const.CURRENT_USER);
        return "forward:/index.jsp";
    }


//    @Rollback(false)
    @RequestMapping(value = "register.do")
    public String register(String username, String password, Integer role, String email, Integer uid, HttpSession session) {
        //数据库插入数据
//        User user = iUserService.register(username,password,uid,email,role);
//        System.out.println("我是usercontroller user" + user.toString());
        if (iUserService.checkusername(username) > 0) {
            session.setAttribute("msg", "用户已存在,不能注册");
            return "forward:/register.jsp";

        }
        Integer result = iUserService.register(username, password, uid, email, role);
        if (result > 0 && role == 0){
            return "redirect:/student/stu_login_ok.jsp";
        }else if (result > 0 && role ==1){
            return "redirect:/teacher/tea_login_ok.jsp";
        }else{
            return "forward:/index.jsp";
        }

//        if(iUserService.checkRole(role) == 0){
//            return "forward:/student/stu_login_ok.jsp";
//        }
//        if (iUserService.checkRole(role) == 1){
//            return "forward:/teacher/stu_login_ok.jsp";
//        }
            //数据插入成功了，用checkRole来确定注册者的身份，判断返回到学生还是老师的登录成功页面



//        System.out.println("到这一步了嘛？");
//        if (user.getRole() == 0){
//            return "forward:/student/stu_login_ok.jsp";
//        }
//        if (user.getRole() == 1){
//            return "forward:/teacher/stu_login_ok.jsp";
//        }
        //register是插入数据只能返回int？？？
//        if (iUserService.register_ok(role) == 0){
//            return "forward:/student/stu_login_ok.jsp";
//        }
//        if (iUserService.register_ok(role) == 1) {
//            return "forward:/teacher/stu_login_ok.jsp";
//        }
//        int resultRole = iUserService.register(role);
//        if (iUserService.register(role) ==0) {
//            return "forward:/student/stu_login_ok.jsp";
//        }
//        if (iUserService.register_ok(role) == 1) {
//            return "forward:/teacher/stu_login_ok.jsp";
//        }

//        return "forward:/index.jsp";
    }
}