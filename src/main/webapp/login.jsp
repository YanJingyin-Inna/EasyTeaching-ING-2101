<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"?/"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>这是登录界面</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="<%=path %>/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="<%=path %>/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="stylesheet" href="<%=path %>/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="<%=path %>/assets/css/admin.css">
    <link rel="stylesheet" href="<%=path %>/assets/css/app.css">
    <!--导入jquery-->
    <script src="<%=path %>/assets/js/jquery-3.3.1.js"></script>
    <script type="text/javascript">

        var msg = "${sessionScope.msg}";
        if(msg != ""){
            alert(msg)
        }
        msg = ""
    </script>
</head>

<body data-type="login">
<%--<div>${sessionScope.msg}</div>--%>
<div class="am-g myapp-login">
    <div class="myapp-login-logo-block  tpl-login-max">
        <div class="myapp-login-logo-text">
            <div class="myapp-login-logo-text">
                用户<span> 登录</span> <i class="am-icon-skyatlas"></i>

            </div>
        </div>

        <div class="login-font">
            <i>Log In </i> or <span> Sign Up</span>
        </div>
        <div class="am-u-sm-10 login-am-center">
            <form class="am-form" name="loginForm" id="loginForm" action="/user/login.do">
                <fieldset>
                    <div class="am-form-group" style="color: white;">
                        用户名：<input type="text" name="username" id="username" placeholder="输入用户名">
                    </div>
                    <div class="am-form-group" style="color: white;">
                        密 码：<input type="password" name="password" id="password" placeholder="输入密码">
                    </div>
                    <div class="login-font "  style="color: white;">选择身份:&nbsp;&nbsp;&nbsp;&nbsp;
                        <label><input type="radio" name="role" value="1" checked>教师</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <label><input type="radio" name="role" value="0">学生</label>
                    </div>
                    <p>
                        <button type="submit" class="am-btn am-btn-default" name="btn_sub" id="btn_sub">登录</button>
                    </p>
                    <div id="errorMsg" name="errorMsg" style="color: red;text-align: left"></div>
                    <div class="reg" style="color: white;">没有账户？<a href="register.jsp">立即注册</a></div>

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

