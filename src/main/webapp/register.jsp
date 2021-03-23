<%--
  Created by IntelliJ IDEA.
  User: 郑素华
  Date: 2021/3/23
  Time: 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>注册页面</title>
    <meta name="description" content="网站首页">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <script src="assets/js/echarts.min.js"></script>

    <!--导入jquery-->
    <script src="assets/js/jquery-3.3.1.js"></script>
</head>
<body data-type="">
<div class="am-g myapp-login">
    <div class="myapp-login-logo-block  tpl-login-max">
        <div class="myapp-login-logo-text">
            <div class="myapp-login-logo-text">
                用户<span> 注册</span> <i class="am-icon-skyatlas"></i>

            </div>
        </div>

        <div class="login-font">
            <i>Log In </i> or <span> Sign Up</span>
        </div>
        <div class="am-u-sm-10 login-am-center">
            <form class="am-form" name="registerForm" id="registerForm">
                <fieldset >
                    <div class="am-form-group">
                        用户名：<input type="text" name="username" id="username" placeholder="输入用户名">
                    </div>
                    <div class="am-form-group">
                        密 码：<input type="password" name="password" id="password" placeholder="输入密码">
                    </div>
                    <div class="am-form-group">
                        用户id：<input type="text" name="uid" id="uid" placeholder="输入用户id">
                    </div>
                    <div class="am-form-group">
                        邮箱：<input type="text" name="email" id="email" placeholder="输入注册邮箱">
                    </div>

                    <div>选择身份:&nbsp;&nbsp;&nbsp;&nbsp;
                        <label><input type="radio" name="sex" value="教师">教师</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <label><input type="radio" name="sex" value="学生">学生</label>
                    </div>

                    <p><button type="submit" class="am-btn am-btn-default" name="btn_reg" id="btn_reg">注册</button></p>
                    <div id="errorMsg" name="errorMsg" style="color: red;text-align: left"></div>
                    <div class="reg">已有账号？<a href="login.jsp">去登录！</a></div>

                </fieldset>
            </form>
        </div>
    </div>
</div>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/app.js"></script>


</body>
</html>
