<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>测试结果</title>
    <meta name="description" content="测试结果">
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

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>

    <script>
        $(function() {
            $(".add-toggle").on('click', function() {
                $('#add').modal({
                    relatedElement: this,
                    onConfirm: function(data) {
                        alert('你输入的是：' + data)
                    },
                    onCancel: function() {
                        // alert('不想说!');
                    }
                });
            });
        });

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
                      <span class="tpl-dropdown-content-from"> 禁言小张 </span>
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
                        <span class="tpl-header-list-user-nick">禁言小张</span><span class="tpl-header-list-user-ico"> <img src="assets/img/user01.png"></span>
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
                    <a href="course.jsp" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-calendar"></i>
                        <span>课程</span>
                        <i class="tpl-left-nav-content tpl-badge-danger">
                            12
                        </i>
                    </a>
                </li>

                <li class="tpl-left-nav-item">
                    <a href="javascript:;" class="nav-link tpl-left-nav-link-list ">
                        <i class="am-icon-table"></i>
                        <span>课程功能</span>
                        <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
                    </a>
                    <ul class="tpl-left-nav-sub-menu" style="display: block;">
                        <li>
                            <a href="course-class.jsp" >
                                <i class="am-icon-angle-right"></i>
                                <span>班级学生</span>
                                <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                            </a>

                            <a href="course-resource.jsp" >
                                <i class="am-icon-angle-right"></i>
                                <span>课程资源</span>
                                <i class="tpl-left-nav-content tpl-badge-success">
                                    18
                                </i>
                            </a>
                            <a href="form-news.html">
                                <i class="am-icon-angle-right"></i>
                                <span>考勤</span>
                                <i class="tpl-left-nav-content tpl-badge-primary">
                                    5
                                </i>

                                <a href="form-news-list.html">
                                    <i class="am-icon-angle-right"></i>
                                    <span>作业</span>
                                </a>

                                <a href="course-test-list.jsp" class="active">
                                    <i class="am-icon-angle-right"></i>
                                    <span>测试</span>
                                </a>

                                <a href="t-course-question-list.jsp" >
                                    <i class="am-icon-angle-right"></i>
                                    <span>试题库</span>
                                </a>

                                <a href="course-vote-list.jsp" >
                                    <i class="am-icon-angle-right"></i>
                                    <span>投票反馈</span>
                                </a>

                                <a href="course-score.jsp">
                                    <i class="am-icon-angle-right"></i>
                                    <span>成绩</span>
                                </a>

                            </a>
                        </li>
                    </ul>
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
                测试
            </div>
            <ol class="am-breadcrumb">
                <li><a href="index.jsp" class="am-icon-home">主页</a></li>
                <li><a href="course.jsp">课程</a></li>
                <li class="am-active">测试</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 测试结果
                    </div>

                </div>
                <div class="tpl-block">
                    <div class="am-g tpl-amazeui-form">
                        <div class="am-u-sm-12 am-u-md-9">
                            <form class="am-form am-form-horizontal">
                                <div class="am-form-group">
                                    <div class="am-u-sm-12 am-text-left" style="font-weight: bold">一、选择题  (20小题，共60分)</div>
                                </div>

                                <div class="am-form-group ">
                                    <div class="am-u-sm-12 am-text-left">1.题目题目<span>(5</span>分)</div>
                                    <div class="am-u-sm-2 am-text-left">
                                        <input type="radio">选项1</input>
                                    </div>
                                    <div class="am-u-sm-10 am-text-left">选项内容</div>
                                    <div class="am-u-sm-8 am-text-left">
                                        <div id=0 style="background-color:#acd6ff; width:10px; height:30px; border-width:10px;"></div>
                                    </div>
                                    <div class="am-u-sm-4 am-text-left">
                                        <label id="label0">0</label>人选择
                                    </div>

                                    <div class="am-u-sm-2 am-text-left">
                                        <input type="radio">选项2</input>
                                    </div>
                                    <div class="am-u-sm-10 am-text-left">选项内容</div>
                                    <div class="am-u-sm-10 am-text-left">选项内容</div>
                                    <div class="am-u-sm-8 am-text-left">
                                        <div id=1 style="background-color:#acd6ff; width:10px; height:30px; border-width:10px;"></div>
                                    </div>
                                    <div class="am-u-sm-4 am-text-left">
                                        <label id="label1">0</label>人选择
                                    </div>

                                    <div class="am-u-sm-2 am-text-left">
                                        <input type="radio">选项3</input>
                                    </div>
                                    <div class="am-u-sm-10 am-text-left">选项内容</div>
                                    <div class="am-u-sm-10 am-text-left">选项内容</div>
                                    <div class="am-u-sm-8 am-text-left">
                                        <div id=2 style="background-color:#acd6ff; width:10px; height:30px; border-width:10px;"></div>
                                    </div>
                                    <div class="am-u-sm-4 am-text-left">
                                        <label id="label2">0</label>人选择
                                    </div>

                                    <div class="am-u-sm-2 am-text-left">
                                        <input type="radio">选项4</input>
                                    </div>
                                    <div class="am-u-sm-10 am-text-left">选项内容</div>
                                    <div class="am-u-sm-10 am-text-left">选项内容</div>
                                    <div class="am-u-sm-8 am-text-left">
                                        <div id=3 style="background-color:#acd6ff; width:10px; height:30px; border-width:10px;"></div>
                                    </div>
                                    <div class="am-u-sm-4 am-text-left">
                                        <label id="label3">0</label>人选择
                                    </div>
                                </div>

                                <div class="am-form-group ">
                                    <div class="am-u-sm-12 am-text-left">2.题目题目<span>(5</span>分)</div>
                                    <div class="am-u-sm-2 am-text-left">
                                        <input type="radio">选项1</input>
                                    </div>
                                    <div class="am-u-sm-10 am-text-left">选项内容</div>
                                    <div class="am-u-sm-8 am-text-left">
                                        <div id=0 style="background-color:#acd6ff; width:10px; height:30px; border-width:10px;"></div>
                                    </div>
                                    <div class="am-u-sm-4 am-text-left">
                                        <label id="label0">0</label>人选择
                                    </div>

                                    <div class="am-u-sm-2 am-text-left">
                                        <input type="radio">选项2</input>
                                    </div>
                                    <div class="am-u-sm-10 am-text-left">选项内容</div>
                                    <div class="am-u-sm-10 am-text-left">选项内容</div>
                                    <div class="am-u-sm-8 am-text-left">
                                        <div id=1 style="background-color:#acd6ff; width:10px; height:30px; border-width:10px;"></div>
                                    </div>
                                    <div class="am-u-sm-4 am-text-left">
                                        <label id="label1">0</label>人选择
                                    </div>

                                    <div class="am-u-sm-2 am-text-left">
                                        <input type="radio">选项3</input>
                                    </div>
                                    <div class="am-u-sm-10 am-text-left">选项内容</div>
                                    <div class="am-u-sm-10 am-text-left">选项内容</div>
                                    <div class="am-u-sm-8 am-text-left">
                                        <div id=2 style="background-color:#acd6ff; width:10px; height:30px; border-width:10px;"></div>
                                    </div>
                                    <div class="am-u-sm-4 am-text-left">
                                        <label id="label2">0</label>人选择
                                    </div>

                                    <div class="am-u-sm-2 am-text-left">
                                        <input type="radio">选项4</input>
                                    </div>
                                    <div class="am-u-sm-10 am-text-left">选项内容</div>
                                    <div class="am-u-sm-10 am-text-left">选项内容</div>
                                    <div class="am-u-sm-8 am-text-left">
                                        <div id=3 style="background-color:#acd6ff; width:10px; height:30px; border-width:10px;"></div>
                                    </div>
                                    <div class="am-u-sm-4 am-text-left">
                                        <label id="label3">0</label>人选择
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-text-left" style="font-weight: bold">二、判断题  (20小题，共60分)</div>
                                </div>

                                <div class="am-form-group ">
                                    <div class="am-form-group ">
                                        <div class="am-u-sm-12 am-text-left">1.题目题目<span>(5</span>分)</div>
                                        <div class="am-u-sm-2 am-text-left">
                                            <input type="radio">选项1</input>
                                        </div>
                                        <div class="am-u-sm-10 am-text-left">选项内容</div>
                                        <div class="am-u-sm-8 am-text-left">
                                            <div id=0 style="background-color:#acd6ff; width:10px; height:30px; border-width:10px;"></div>
                                        </div>
                                        <div class="am-u-sm-4 am-text-left">
                                            <label id="label0">0</label>人选择
                                        </div>

                                        <div class="am-u-sm-2 am-text-left">
                                            <input type="radio">选项2</input>
                                        </div>
                                        <div class="am-u-sm-10 am-text-left">选项内容</div>
                                        <div class="am-u-sm-10 am-text-left">选项内容</div>
                                        <div class="am-u-sm-8 am-text-left">
                                            <div id=1 style="background-color:#acd6ff; width:10px; height:30px; border-width:10px;"></div>
                                        </div>
                                        <div class="am-u-sm-4 am-text-left">
                                            <label id="label1">0</label>人选择
                                        </div>
                                </div>

                                <div class="am-form-group ">
                                    <div class="am-form-group ">
                                        <div class="am-u-sm-12 am-text-left">1.题目题目<span>(5</span>分)</div>
                                        <div class="am-u-sm-2 am-text-left">
                                            <input type="radio">选项1</input>
                                        </div>
                                        <div class="am-u-sm-10 am-text-left">选项内容</div>
                                        <div class="am-u-sm-8 am-text-left">
                                            <div id=0 style="background-color:#acd6ff; width:10px; height:30px; border-width:10px;"></div>
                                        </div>
                                        <div class="am-u-sm-4 am-text-left">
                                            <label id="label0">0</label>人选择
                                        </div>

                                        <div class="am-u-sm-2 am-text-left">
                                            <input type="radio">选项2</input>
                                        </div>
                                        <div class="am-u-sm-10 am-text-left">选项内容</div>
                                        <div class="am-u-sm-10 am-text-left">选项内容</div>
                                        <div class="am-u-sm-8 am-text-left">
                                            <div id=1 style="background-color:#acd6ff; width:10px; height:30px; border-width:10px;"></div>
                                        </div>
                                        <div class="am-u-sm-4 am-text-left">
                                            <label id="label1">0</label>人选择
                                        </div>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-text-left" style="font-weight: bold">三、填空题  (20小题，共60分)</div>
                                </div>

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-text-left">1.题目题目<span>(5</span>分)</div>
                                    <div class="am-u-sm-12 am-text-left">
                                        <textarea  rows="5"></textarea>
                                    </div>
                                    <div id="user-choice" ><span></span>人满分</div>
                                </div>

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-text-left">2.题目题目<span>(5</span>分)</div>
                                    <div class="am-u-sm-12 am-text-left">
                                        <textarea  rows="5"></textarea>
                                    </div>
                                    <div id="user-choice" ><span></span>人满分</div>
                                </div>

                                <div class="am-u-sm-12 am-form-group">
                                    <button type="button" class=" am-btn am-btn-primary am-align-left">创建</button>
                                    <button type="button" class=" am-btn am-btn-secondary am-align-left">取消</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script src="assets/js/app.js"></script>
</body>



</html>