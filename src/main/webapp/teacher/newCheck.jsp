<%--
  Created by IntelliJ IDEA.
  User: 郑素华
  Date: 2021/3/24
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>新建考勤页面</title>
    <meta name="description" content="网站首页">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="../assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="../assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="../assets/css/admin.css">
    <link rel="stylesheet" href="../assets/css/app.css">
    <script src="../assets/js/echarts.min.js"></script>

    <!--导入jquery-->
    <script src="../assets/js/jquery-3.3.1.js"></script>
</head>
<body>
<div>
    <div class="tpl-content-wrapper">
    <div class="tpl-content-page-title">
        主页
    </div>
    <div class="am-breadcrumb">
        <li><a href="" class="am-icon-home">主页</a></li>
        <a href="check.jsp" class="am-active">考勤</a>
        <li class="am-active">新建考勤</li>
</div>
</div>



    <div>
        <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                <select data-am-selected="{btnSize: 'sm'}">
                    <option value="option1">选择班级</option>
                    <option value="option2">软工1701班</option>
                    <option value="option3">软工1702班</option>
                    <option value="option3">软工1703班</option>
                    <option value="option3">软工1704班</option>
                    <option value="option3">计科1701班</option>
                    <option value="option3">计科1702班</option>
                </select>
            </div>
        </div>
    </div>

    <div>
        <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                <select data-am-selected="{btnSize: 'sm'}">
                    <option value="option1">选择课程</option>
                    <option value="option2">数据库原理</option>
                    <option value="option3">数据库工程</option>
                    <option value="option3">软件工程</option>
                    <option value="option3">大数据</option>
                    <option value="option3">操作系统实践</option>
                    <option value="option3">数据结构</option>
                </select>
            </div>
        </div>
    </div>

    <div>
        <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                <select data-am-selected="{btnSize: 'sm'}">
                    <option value="option1">有效时间</option>
                    <option value="option2">30s</option>
                    <option value="option3">60s</option>
                    <option value="option3">1分钟</option>
                    <option value="option3">3分钟</option>
                    <option value="option3">5分钟</option>
                    <option value="option3">10分钟</option>
                </select>
            </div>
        </div>
    </div>



    <div class="tpl-content-wrapper">
    <span style="width: 140px; text-align: left;">选择签到方式</span>
        <div class="layui-input-block">
            <div class="user-radio-item">
                <div class="item-background action" data-checktype="1">
                    <img src="../assets/img/tea1.png">
                    <img src="../assets/img/tea2.png">
                </div>
            </div>
<%--            <div class="user-radio-item ">--%>
<%--                <div class="item-background" data-checktype="2">--%>
<%--                    <img src="../assets/img/tea2.png">--%>
<%--                </div>--%>
<%--            </div>--%>
        </div>


        <p> </p>
        <p> </p>
        <p> </p>
        <button class="am-btn am-btn-default" >发起签到</button>
    </div>
</div>
</body>
</html>
