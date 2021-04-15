<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>课程</title>
    <meta name="description" content="">
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

    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>

    <script>
        function checkAddContext(){
            var text = $(".check-null").val();
            if($.trim(text)){
                $(".check-null").css("border-color","#d6d6d6");
                $(".check-null-text").text("");
                return true;
            }
            $(".check-null").css("border-color","red");
            $(".check-null-text").text("不可为空");
            $(".check-null-text").css("color","red");
            return false;
        }

        $(document).ready(function(){
            $("#current-user").html(${currentUser.username});
        });

        //加入课程信息确认
        $(function() {
            $("#classCode").bind('keypress', function() {
                var a = $("#classCode").val();
                // alert(a);
                $.post("course/show_course_class.do",{classCode:a},function (data){
                    if(data.status == 0){
                        // alert(data.data.classId);
                        $("#courseName").val(data.data.courseName);
                        $("#className").val(data.data.className);
                        $("#courseDesc").val(data.data.courseDesc);
                        $("#classId").val(data.data.classId);
                        $("#termName").val(data.data.termName);
                    }else if(data.status == 1){
                        alert(data.msg);
                    }
                },"json");
            });
        });

        $(function() {
            $(".join-class-toggle").on('click', function() {
                $('#join-class').modal({
                    relatedElement: this,
                    closeOnConfirm:false,//点击确认时不关闭窗口
                    onConfirm: function() {
                        var classId = $("#classId").val();
                        var sId = -1303833150;//取session
                        $.post("course/join_class.do",{classId:classId,studentId:sId},function (data) {
                            if(data.status == 0){
                                alert(data.msg);
                                location.reload();
                            }else if(data.status == 1){
                                alert(data.msg);
                                location.reload();
                            }
                        });
                    },
                    onCancel: function() {
                        location.reload();
                    }
                });
            });
        });

        $(function() {
            $(".out-class-toggle").on('click', function() {
                $('#out-class').modal({
                    relatedElement: this,
                    closeOnConfirm:false,//点击确认时不关闭窗口
                    onConfirm: function(data) {
                        var classId = $('#delete-class-id').val();
                        var studentId = -1303833150;
                        $.post("course/out_class.do",{classId:classId,studentId:studentId},function (data) {
                            if(data.status == 0){
                                alert(data.msg);
                                location.reload();
                            }else if(data.status == 1){
                                alert(data.msg);
                                location.reload();
                            }
                        });
                    },
                    onCancel: function() {
                        location.reload();
                    }
                });
            });
        });

        //课程展示
        $(function (){
            var studentName = "student";
            $.post("course/course_view.do",{personName:studentName},function (data) {
                if(data.status == 0){
                    var jsData = data.data;
                    for (var i = 0; i < jsData.length; i++) {
                        var colors = "blue";
                        if(i%4 == 1){
                            colors = "red";
                        }else if(i%4 == 2){
                            colors = "green";
                        }else if(i%4 == 3){
                            colors = "purple";
                        }

                        var viewComponent  = "<div class=\"am-u-lg-3 am-u-md-6 am-u-sm-12\">\n" +
                            "                <div class=\"dashboard-stat "+ colors +"\">\n" +
                            "                    <div class=\"visual\">\n" +
                            "                        <i class=\"am-icon-comments-o\"></i>\n" +
                            "                    </div>\n" +
                            "                    <div class=\"details\">\n" +
                            "                        <div class=\"number\"> "+jsData[i].courseName+ "</div>\n" +
                            "                        <div class=\"desc\"> "+jsData[i].termName+" </div>\n" +
                            "                    </div>\n" +
                            "                    <a class=\"more\" href=\"course-class.jsp?courseId="+jsData[i].courseId+"&classId="+jsData[i].classId+"\"> 进入课程\n" +
                            "                        <i class=\"m-icon-swapright m-icon-white\"></i>\n" +
                            "                    </a>\n" +
                            "                </div>\n" +
                            "            </div>"
                        $("#show-course-view").append(viewComponent);
                    }

                }else if(data.status == 1){
                    alert(data.msg);
                }
            });

        });

        //用于退出课程信息确认
        $(function() {
            $(".out-class-toggle").on('click', function() {
                var courseId = $("#typeNum").val();
                var studentId = -1303833150;
                $.post("course/show_outClass_info.do",{courseId:courseId,studentId:studentId},function (data){
                    if(data.status == 0){
                        var jsData = data.data;
                        $("#delete-class-name").val(jsData.className);
                        $("#delete-class-desc").val(jsData.courseDesc);
                        $("#delete-class-term").val(jsData.termName);
                        $("#delete-class-id").val(jsData.classId);
                    }else if(data.status == 1){
                        alert(data.msg);
                    }
                },"json");
            });
        });

        //加载学生所有课程,到删除选择中
        $(function() {
            $(".out-class-toggle").on('click', function () {
                var studentName = "student";
                $.post("course/course_view.do", {personName: studentName}, function (data) {
                    //处理服务器响应
                    if (data.status == 0) {
                        var jsData = data.data;
                        for (var i = 0; i < jsData.length; i++) {
                            $("#typeNum").append("<option value=" + jsData[i].courseId + ">" + jsData[i].courseName + "</option>");
                        }
                    } else if (data.status == 1) {
                        alert(data.msg);
                    }
                });
            });
        });


        $(function () {
            /*先将数据存入数组*/
            var TempArr = [];//存储option
            $("#typeNum option").each(function (index, el) {
                TempArr[index] = $(this).text();
            });
            $(document).bind('click', function (e) {
                var e = e || window.event; //浏览器兼容性
                var elem = e.target || e.srcElement;
                while (elem) { //循环判断至跟节点，防止点击的是div子元素
                    if (elem.id && (elem.id == 'typeNum' || elem.id == "makeUpCo")) {
                        return;
                    }
                    elem = elem.parentNode;
                }
                $('#typeNum').css('display', 'none'); //点击的不是div或其子元素
            });
        })

        function changeF(this_) {
            $(this_).prev("input").val($(this_).find("option:selected").text());
            $("#typeNum").css({
                "display": "none"
            });
        }

        function setfocus(this_) {
            $("#typeNum").css({
                "display": ""
            });
            var select = $("#typeNum");
            for (i = 0; i < TempArr.length; i++) {
                var option = $("<option></option>").text(TempArr[i]);
                select.append(option);
            }
        }

        function setinput(this_) {
            var select = $("#typeNum");
            select.html("");
            for (i = 0; i < TempArr.length; i++) {
                //若找到以txt的内容开头的，添option
                if (TempArr[i].substring(0, this_.value.length).indexOf(this_.value) == 0) {
                    var option = $("<option></option>").text(TempArr[i]);
                    select.append(option);
                }
            }
        }
    </script>
</head>

<body data-type="index">


<header class="am-topbar am-topbar-inverse admin-header">
    <div class="am-topbar-brand">
        <a href="javascript:;" class="tpl-logo">
            <img src="assets/img/myLogo.png" alt="">
        </a>
    </div>
    <div class="am-icon-list tpl-header-nav-hover-ico am-fl am-margin-right">

    </div>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

        <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">
            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                    <span class="am-icon-bell-o"></span> 提醒 <span class="am-badge tpl-badge-success am-round">10</span></span>
                </a>
                <ul class="am-dropdown-content tpl-dropdown-content">
                    <li class="tpl-dropdown-content-external">
                        <h3>你有 <span class="tpl-color-success">10</span> 条提醒</h3><a href="###">全部</a></li>
                    <li class="tpl-dropdown-list-bdbc"><a href="#" class="tpl-dropdown-list-fl"><span class="am-icon-btn am-icon-plus tpl-dropdown-ico-btn-size tpl-badge-success"></span> 【预览模块】移动端 查看时 手机、电脑框隐藏。</a>
                        <span class="tpl-dropdown-list-fr">3小时前</span>
                    </li>
                    <li class="tpl-dropdown-list-bdbc"><a href="#" class="tpl-dropdown-list-fl"><span class="am-icon-btn am-icon-check tpl-dropdown-ico-btn-size tpl-badge-danger"></span> 移动端，导航条下边距处理</a>
                        <span class="tpl-dropdown-list-fr">15分钟前</span>
                    </li>
                    <li class="tpl-dropdown-list-bdbc"><a href="#" class="tpl-dropdown-list-fl"><span class="am-icon-btn am-icon-bell-o tpl-dropdown-ico-btn-size tpl-badge-warning"></span> 追加统计代码</a>
                        <span class="tpl-dropdown-list-fr">2天前</span>
                    </li>
                </ul>
            </li>
            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                    <span class="am-icon-comment-o"></span> 消息 <span class="am-badge tpl-badge-danger am-round">9</span></span>
                </a>
                <ul class="am-dropdown-content tpl-dropdown-content">
                    <li class="tpl-dropdown-content-external">
                        <h3>你有 <span class="tpl-color-danger">9</span> 条新消息</h3><a href="###">全部</a></li>
                    <li>
                        <a href="#" class="tpl-dropdown-content-message">
                                <span class="tpl-dropdown-content-photo">
                      <img src="assets/img/user02.png" alt=""> </span>
                            <span class="tpl-dropdown-content-subject">
                      <span class="tpl-dropdown-content-from"> 学生一 </span>
                                <span class="tpl-dropdown-content-time">10分钟前 </span>
                                </span>
                            <span class="tpl-dropdown-content-font"> Amaze UI 的诞生，依托于 GitHub 及其他技术社区上一些优秀的资源；Amaze UI 的成长，则离不开用户的支持。 </span>
                        </a>
                        <a href="#" class="tpl-dropdown-content-message">
                                <span class="tpl-dropdown-content-photo">
                      <img src="assets/img/user03.png" alt=""> </span>
                            <span class="tpl-dropdown-content-subject">
                      <span class="tpl-dropdown-content-from"> Steam </span>
                                <span class="tpl-dropdown-content-time">18分钟前</span>
                                </span>
                            <span class="tpl-dropdown-content-font"> 为了能最准确的传达所描述的问题， 建议你在反馈时附上演示，方便我们理解。 </span>
                        </a>
                    </li>

                </ul>
            </li>
            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                    <span class="tpl-header-list-user-nick" id="current-user">学生A</span><span class="tpl-header-list-user-ico"> <img src="assets/img/user01.png"></span>
                </a>
                <ul class="am-dropdown-content">
                    <li><a href="#"><span class="am-icon-bell-o"></span> 资料</a></li>
                    <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
                    <li><a href="#"><span class="am-icon-power-off"></span> 退出</a></li>
                </ul>
            </li>
            <li><a href="###" class="tpl-header-list-link"><span class="am-icon-sign-out tpl-header-list-ico-out-size"></span></a></li>
        </ul>
    </div>
</header>


<div class="tpl-page-container tpl-page-header-fixed">
    <div class="tpl-left-nav tpl-left-nav-hover">
        <div class="tpl-left-nav-title">
            我的功能
        </div>
        <div class="tpl-left-nav-list">
            <ul class="tpl-left-nav-menu">
                <li class="tpl-left-nav-item">
                    <a href="index.jsp" class="nav-link ">
                        <i class="am-icon-home"></i>
                        <span>主页</span>
                    </a>
                </li>
                <li class="tpl-left-nav-item">
                    <a href="" class="nav-link tpl-left-nav-link-list active">
                        <i class="am-icon-calendar"></i>
                        <span>课程</span>
                        <i class="tpl-left-nav-content tpl-badge-danger">
                            12
                        </i>
                    </a>
                </li>

                <li class="tpl-left-nav-item">
                    <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-wpforms"></i>
                        <span>作业区</span>
<!--                                                <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>-->
                        <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                    </a>
                    <ul class="tpl-left-nav-sub-menu">
<!--                                            <ul class="tpl-left-nav-sub-menu" style="display: block;">-->
                        <li>
                            <a href="feedback.html">
                                <i class="am-icon-angle-right"></i>
                                <span>反馈</span>
                                <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                            </a>

                            <a href="form-line.html">
                                <i class="am-icon-angle-right"></i>
                                <span>线条表单</span>
                            </a>
                        </li>
                    </ul>
                        </li>

                        <li class="tpl-left-nav-item">
                            <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                                <i class="am-icon-wpforms"></i>
                                <span>测试区</span>
<!--                                                        <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>-->
                                <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                            </a>
                            <ul class="tpl-left-nav-sub-menu">
<!--                                                   <ul class="tpl-left-nav-sub-menu" style="display: block;">-->
                                <li>
                                    <a href="pages/question-detail.jsp">
                                        <i class="am-icon-angle-right"></i>
                                        <span>试题库</span>
                                    </a>

                                    <a href="pages/test-result.jsp">
                                        <i class="am-icon-angle-right"></i>
                                        <span>测试</span>
                                        <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                    </a>

                                    <a href="form-line.html">
                                        <i class="am-icon-angle-right"></i>
                                        <span>自主练习</span>
                                    </a>
                                </li>
                            </ul>
                                </li>

                            </ul>
        </div>
    </div>


    <div class="tpl-content-wrapper">
        <div class="tpl-content-page-title">
            课程情况
        </div>
        <ol class="am-breadcrumb">
            <li><a href="./" class="am-icon-home">主页</a></li>
<!--            <li><a href="">课程</a></li>-->
            <li class="am-active">课程</li>
        </ol>

        <div class="tpl-portlet-components" id="show-course-view">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 课程列表
                </div>
                <div class="tpl-portlet-input tpl-fz-ml">
                    <div class="portlet-input input-small input-inline">
                        <%--                            <div class="input-icon right">--%>
                        <%--                                <i class="am-icon-search"></i>--%>
                        <%--                                <input type="text" class="form-control form-control-solid" placeholder="搜索..."> </div>--%>
                    </div>
                </div>
            </div>

            <div class="am-g">
                <div class="am-u-sm-12 am-u-md-6">
                    <div class="am-btn-toolbar">
                        <div class="am-btn-group am-btn-group-xs">
                            <button type="button" class="am-btn am-btn-default am-btn-primary join-class-toggle"><span class="am-icon-plus"></span> 加入课程班级</button>
                            <button type="button" class="am-btn am-btn-default am-btn-danger out-class-toggle"><span class="am-icon-trash-o"></span> 退出课程班级</button>
                        </div>
                    </div>
                </div>
            </div>
            <hr/>
        </div>
    </div>

    </div>

</div>

<script src="assets/js/app.js"></script>
</body>

<div class="am-modal am-modal-prompt" tabindex="-1" id="join-class">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">加入课程班级</div>
        <div class="am-modal-bd">
            <form class="am-form am-form-horizontal">
                <div class="am-g am-margin-top am-form-group-sm">
                    <div class="am-u-sm-4 am-u-md-3 am-text-right">
                        课程代码
                    </div>
                    <div class="am-u-sm-8 am-align-left">
                        <input type="text" class="am-modal-prompt-input check-null" id="classCode" name="classCode" onblur="checkAddContext()">
                        <a>输入后按下回车确认班级信息</a>
                        <a class="check-null-text"></a>
                    </div>
                </div>

                <div class="am-g am-margin-top am-form-group-sm">
                    <div class="am-u-sm-4 am-u-md-3 am-text-right">
                        学期
                    </div>
                    <div class="am-u-sm-8 am-align-left">
                        <input type="text" id="termName" readonly>
                    </div>
                </div>

                <div class="am-g am-margin-top am-form-group-sm">
                    <div class="am-u-sm-4 am-u-md-3 am-text-right">
                        课程名称
                    </div>
                    <div class="am-u-sm-8 am-align-left">
                        <input type="text" id="courseName" readonly>
                    </div>
                </div>


                <div class="am-g am-margin-top am-form-group-sm">
                    <div class="am-u-sm-4 am-u-md-3 am-text-right">
                        班级
                    </div>
                    <div class="am-u-sm-8 am-align-left">
                        <input type="text" id="className" readonly>
                        <input type="hidden" id="classId" ></input>
                    </div>
                </div>

                <div class="am-g am-margin-top am-form-group-sm">
                    <div class="am-u-sm-4 am-u-md-3 am-text-right">
                        课程描述
                    </div>
                    <div class="am-u-sm-8 am-align-left">
                        <textarea rows="4" id="courseDesc" readonly>本课程为教师A的Java程序设计</textarea>
                    </div>
                </div>
            </form>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn" data-am-modal-cancel>返回</span>
            <span class="am-modal-btn" data-am-modal-confirm>加入</span>
        </div>
    </div>
</div>

<div class="am-modal am-modal-prompt" tabindex="-1" id="out-class">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">退出课程班级</div>
        <div class="am-modal-bd">
            <form class="am-form am-form-horizontal">
                <div class="am-g am-margin-top am-form-group-sm">
                    <div class="am-u-sm-4 am-u-md-3 am-text-right">
                        课程名称
                    </div>
                    <div class="am-u-sm-8 am-align-left">
                        <input type="text" name="makeUpCo" id="makeUpCo" class="makeinp" onfocus="setfocus(this)"
                               oninput="setinput(this);" placeholder="请选择" />
                        <select name="makeUpCoSe" id="typeNum" onchange="changeF(this)"  size="10" style="display:none;">
                        </select>
                    </div>
                </div>

                <div class="am-g am-margin-top am-form-group-sm">
                    <div class="am-u-sm-4 am-u-md-3 am-text-right">
                        学期
                    </div>
                    <div class="am-u-sm-8 am-align-left">
                        <input type="text" id="delete-class-term" readonly></input>
                    </div>
                </div>

                <div class="am-g am-margin-top am-form-group-sm">
                    <div class="am-u-sm-4 am-u-md-3 am-text-right">
                        班级
                    </div>
                    <div class="am-u-sm-8 am-align-left">
                        <input type="text" id="delete-class-name" readonly></input>
                        <input type="hidden" id="delete-class-id" ></input>
                    </div>
                </div>

                <div class="am-g am-margin-top am-form-group-sm">
                    <div class="am-u-sm-4 am-u-md-3 am-text-right">
                        课程描述
                    </div>
                    <div class="am-u-sm-8 am-align-left">
                        <textarea rows="5" id="delete-class-desc" readonly></textarea>
                    </div>
                </div>
            </form>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn" data-am-modal-cancel>返回</span>
            <span class="am-modal-btn" data-am-modal-confirm>退出</span>
        </div>
    </div>
</div>

</html>