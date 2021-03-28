package team.project.easyTeaching.service;

import team.project.easyTeaching.pojo.User;

public interface IUserService {

//    ServerResponse<User> login(String username, String password, Integer role);

//    ServerResponse<String> register(User user);
//
//    ServerResponse<String> checkValid(String str, String type);
//
//    ServerResponse selectQuestion(String username);
//
//    ServerResponse<String> checkAnswer(String username, String question, String answer);
//
//    ServerResponse<String> forgetResetPassword(String username,String passwordNew,String forgetToken);
//
//    ServerResponse<String> resetPassword(String passwordOld,String passwordNew,User user);
//
//    ServerResponse<User> updateInformation(User user);

    User login(String username);

    int checkusername(String username);

     int checkRole(Integer role);

   int register(String username,String password,Integer uid,String email,Integer role);

    //int register_ok(Integer role);

//    User register(String username, String password, Integer uid, String email, Integer role);

//    int register_ok(Integer role);

//    User register(String username, String password, int uid, String email, Integer role);
}