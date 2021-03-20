package com.test.common;

public class  Const {
    public static final String CURRENT_USER = "currentUser";

    public static final String EMAIL = "email";
    public static final String USERNAME = "username";

    //分组
    public interface Role{
        int ROLE_CUSTOMER = 0;//学生
        int ROLE_ADMIN = 1;//老师
    }
}
