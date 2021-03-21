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
        function checkUsername(){
            var username = $("#doc-ipt-username-1").val();
            var password = $("#doc-ipt-password-1").val();
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
            $("#loginData").submit(function (){
                //发送数据到服务器
                if(checkUsername()){
                    //通过了就发送ajax请求，提交数据,异步提交
                    $.post("user/login.do",$(this).serialize(),function(data){//先获取数据
                        //处理服务器响应
                        if(data.status == 1){
                            alert(data.msg + ",点击返回首页");
                            window.location.replace("http://localhost:8089/index.jsp");
                        }else if (data.status == 0) {
                            $("#errorMsg").text(data.msg);
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
                Amaze UI<span> Login</span> <i class="am-icon-skyatlas"></i>

            </div>
        </div>

        <div class="login-font">
            <i>Log In </i> or <span> Sign Up</span>
        </div>
        <div class="am-u-sm-10 login-am-center">
            <form class="am-form" id="loginData">
                <fieldset >
                    <div class="am-form-group">
                        <input type="text" class="" id="doc-ipt-username-1" placeholder="输入用户名">
                    </div>
                    <div class="am-form-group">
                        <input type="password" class="" id="doc-ipt-password-1" placeholder="输入密码">
                    </div>
                    <p><button type="submit" class="am-btn am-btn-default">登录</button></p>

                    <div class="reg">没有账户？<a href="register.jsp">立即注册</a></div>

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