<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="这是一个 index 页面">
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
    <!--导入jquery-->
    <script src="assets/js/jquery-3.3.1.js"></script>



    <script>
        function Login(){
            var username = $("#username").val();
            var password = $("#password").val();
            var flag;
            if($.trim(username) ){
                $("#username").css("border","");
                flag = true;
            }else {
                $("#username").css("border","1px solid red");
                alert('用户名不能为空');
                flag = false;
                return flag;
            }

            if($.trim(password) ){
                $("#password").css("border","");
                flag = true;
            }else {
                $("#password").css("border","1px solid red");
                alert('请输入密码');
                flag = false;
                return flag;
            }


            return flag;
        }



        $(function () {
            //表单提交校验所有组件
            $("#loginForm").submit(function (){
            //$("#loginForm").submit(function (){

                //发送数据到服务器
                if(Login()){
                    //通过了就发送ajax请求，提交数据,异步提交
                    $.post("/user/login.do",$(this).serialize(),function(data){//先获取数据

                        //处理服务器响应
                        alert("status是"+data.status);
                        if(data.status == 0){
                            alert(data.msg + ",点击返回首页");
                            window.location.replace("http://localhost:9090/index.jsp");
                        }else if (data.status == 1) {
                            $("#errorMsg").text(data.msg);
                            window.location.replace("http://localhost:9090/student/work_public.jsp");
                        }
                    });
                }
                return false;

            });

        });

    </script>



</head>

<body data-type="login">

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
            <form class="am-form" name="loginForm" id="loginForm">
                <fieldset >
                    <div class="am-form-group">
                        用户名：<input type="text" name="username" id="username" placeholder="输入用户名">
                    </div>
                    <div class="am-form-group">
                        密 码：<input type="password" name="password" id="password" placeholder="输入密码">
                    </div>
                    <div>选择身份:&nbsp;&nbsp;&nbsp;&nbsp;
                        <label><input type="radio" name="sex" value="教师">教师</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <label><input type="radio" name="sex" value="学生">学生</label>
                    </div>
                    <p><button type="submit" class="am-btn am-btn-default" name="btn_sub" id="btn_sub">登录</button></p>
                    <div id="errorMsg" name="errorMsg" style="color: red;text-align: left"></div>
                    <div class="reg">没有账户？<a href="register.jsp">立即注册</a></div>
<%--                    <div class="am-form-group">--%>
<%--                        选择身 份：<select size="1" id="role" name="role">--%>
<%--                        <option value="student">学生</option>--%>
<%--                        <option value="teacher">教师</option>--%>
<%--                    </select>--%>

<%--                    </div>--%>

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

