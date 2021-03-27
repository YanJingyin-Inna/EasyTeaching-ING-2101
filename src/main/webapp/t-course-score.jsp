<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>成绩</title>
    <meta name="description" content="成绩">
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
            $('#my-prompt-toggle').on('click', function() {
                $('#my-prompt').modal({
                    relatedElement: this,
                    onConfirm: function(data) {
                        alert('你输入的是：' + data)
                    },
                    onCancel: function() {
                        alert('不想说!');
                    }
                });
            });
        });

        $(function() {
            $('#check-score-toggle').on('click', function() {
                $('#check-score').modal({
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

        $(function() {
            $('#work-score-toggle').on('click', function() {
                $('#work-score').modal({
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

        $(function() {
            $('#test-score-toggle').on('click', function() {
                $('#test-score').modal({
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

                                <a href="course-test-list.jsp" >
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

                                <a href="course-score.jsp" class="active">
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
                成绩
            </div>
            <ol class="am-breadcrumb">
                <li><a href="index.jsp" class="am-icon-home">主页</a></li>
                <li><a href="course.jsp">课程</a></li>
                <li class="am-active">成绩</li>
            </ol>

            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 成绩情况
                    </div>
                    <div class="tpl-portlet-input tpl-fz-ml">
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                                <select data-am-selected="{btnSize: 'sm'}">
                                    <option value="option1">班级选择</option>
                                    <option value="option2">1901</option>
                                    <option value="option3">1902</option>
                                    <%--                                      <option value="option3">笔记本电脑</option>--%>
                                    <%--                                      <option value="option3">平板电脑</option>--%>
                                    <%--                                      <option value="option3">只能手机</option>--%>
                                    <%--                                      <option value="option3">超极本</option>--%>
                                </select>
                            </div>
                        </div>
                    </div>


                </div>


                    <div class="am-tabs am-margin" data-am-tabs>
                        <ul class="am-tabs-nav am-nav am-nav-tabs">
                            <li class="am-active"><a href="#tab1">成绩比例设置</a></li>
                            <li><a href="#tab2">成绩结果</a></li>
                            <li><a href="#tab3">导出成绩册</a></li>
                        </ul>


                        <div class="am-tabs-bd">
                            <div class="am-tab-panel am-fade " id="tab2">
                                <div class="am-u-sm-10 am-u-md-6">
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-check"></span> 确认</button>
                                            <button type="button" class="am-btn am-btn-default am-btn-secondary"><span class="am-icon-calculator"></span> 全体重新计算</button>
                                        </div>
                                    </div>
                                </div>
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                    <tr>
                                        <th class="table-check"><input type="checkbox" class="tpl-table-fz-check"></th>
                                        <th class="table-id">学号</th>
                                        <th class="table-name">姓名</th>
                                        <th class="table-name">班级</th>
                                        <th class="table-name">考勤</th>
                                        <th class="table-name am-hide-sm-only">作业</th>
                                        <th class="table-name am-hide-sm-only">测试</th>
                                        <th class="table-name am-hide-sm-only">计算结果</th>
                                        <th class="table-name">最终成绩</th>
                                        <th class="table-name">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td><input type="checkbox"></td>
                                        <td class="am-hide-sm-only">1</td>
                                        <td><a href="#">颜静茵</a></td>
                                        <td class="am-hide-sm-only">1901</td>
                                        <td class="am-hide-sm-only">10</td>
                                        <td class="am-hide-sm-only">40</td>
                                        <td class="am-hide-sm-only">50</td>
                                        <td class="am-hide-sm-only">100</td>
                                        <td ><input type="text" class="am-input-sm" value="100.0"></td>
                                        <td>
                                            <div class="am-btn-toolbar">
                                                <div class="am-btn-group am-btn-group-xs">
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-success"><span class="am-icon-check"></span> 确认</button>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>

                                    </tbody>
                                </table>
<%--                                <button class="am-btn am-btn-success" id="doc-prompt-toggle">Prompt</button>--%>

                                <div class="am-cf">

                                    <div class="am-fr">
                                        <ul class="am-pagination tpl-pagination">
                                            <li class="am-disabled"><a href="#">«</a></li>
                                            <li class="am-active"><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#">5</a></li>
                                            <li><a href="#">»</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                                <div class="am-u-sm-12 am-u-md-6">
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button type="button" class="am-btn am-btn-success am-btn-xs" id="check-score-toggle">设置考勤分制</button>
                                            <button type="button" class="am-btn am-btn-success am-btn-xs" id="work-score-toggle">设置单次作业比例</button>
                                            <button type="button" class="am-btn am-btn-success am-btn-xs" id="test-score-toggle">设置单次测试比例</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="am-g tpl-amazeui-form">
                                    <div class="am-u-sm-10 am-u-md-9">
                                        <form class="am-form am-form-horizontal">
                                            <div class="am-g am-margin-top am-form-group">
                                                <div class="am-u-sm-4 am-u-md-2 am-text-right">
                                                    考勤
                                                </div>
                                                <div class="am-u-sm-8 am-u-md-4">
                                                    <input type="text" class="am-input-sm">
                                                </div>
                                                <div class="am-hide-sm-only ">% </div>
                                            </div>

                                            <div class="am-g am-margin-top am-form-group">
                                                <div class="am-u-sm-4 am-u-md-2 am-text-right">
                                                    作业
                                                </div>
                                                <div class="am-u-sm-8 am-u-md-4">
                                                    <input type="text" class="am-input-sm">
                                                </div>
                                                <div class="am-hide-sm-only ">%</div>
                                            </div>

                                            <div class="am-g am-margin-top am-form-group">
                                                <div class="am-u-sm-4 am-u-md-2 am-text-right">
                                                    测试
                                                </div>
                                                <div class="am-u-sm-8 am-u-md-4">
                                                    <input type="text" class="am-input-sm">
                                                </div>
                                                <div class="am-hide-sm-only ">%</div>
                                            </div>
                                        </form>
                                        <div class="">
                                            <button type="button" class="am-btn am-btn-primary am-btn-xs">提交</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="am-tab-panel am-fade" id="tab3">
                                <form class="am-form">
                                    <div class="am-g am-margin-top-sm">
                                        <div class="am-u-sm-4 am-u-md-2 am-text-right">
                                            SEO 标题
                                        </div>
                                        <div class="am-u-sm-8 am-u-md-4 am-u-end">
                                            <input type="text" class="am-input-sm">
                                        </div>
                                    </div>

                                    <div class="am-g am-margin-top-sm">
                                        <div class="am-u-sm-4 am-u-md-2 am-text-right">
                                            SEO 关键字
                                        </div>
                                        <div class="am-u-sm-8 am-u-md-4 am-u-end">
                                            <input type="text" class="am-input-sm">
                                        </div>
                                    </div>

                                    <div class="am-g am-margin-top-sm">
                                        <div class="am-u-sm-4 am-u-md-2 am-text-right">
                                            SEO 描述
                                        </div>
                                        <div class="am-u-sm-8 am-u-md-4 am-u-end">
                                            <textarea rows="4"></textarea>
                                        </div>
                                    </div>
                                </form>
                            </div>

                    </div>

            </div>

        </div>

    </div>

</div>
<%--    弹窗设置--%>
<div class="am-modal am-modal-prompt" tabindex="-1" id="my-prompt">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">Amaze UI</div>
        <div class="am-modal-bd">
            来来来，吐槽点啥吧
            <input type="text" class="am-modal-prompt-input">
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn" data-am-modal-cancel>取消</span>
            <span class="am-modal-btn" data-am-modal-confirm>提交</span>
        </div>
    </div>
</div>

<div class="am-modal am-modal-prompt" tabindex="-1" id="check-score">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">考勤分制</div>
        <div class="am-modal-bd">
            <form class="am-form am-form-horizontal">
                <div class="am-g am-margin-top am-form-group">
                    <div class="am-u-sm-4 am-u-md-2 am-text-right">
                        出勤
                    </div>
                    <div class="am-u-sm-8 ">
                        <input type="text" class="am-modal-prompt-input">
                    </div>
                    <div class="am-hide-sm-only">分</div>
                </div>

                <div class="am-g am-margin-top am-form-group">
                    <div class="am-u-sm-4 am-u-md-2 am-text-right">
                        迟到
                    </div>
                    <div class="am-u-sm-8 ">
                        <input type="text" class="am-modal-prompt-input">
                    </div>
                    <div class="am-hide-sm-only">分</div>
                </div>

                <div class="am-g am-margin-top am-form-group">
                    <div class="am-u-sm-4 am-u-md-2 am-text-right">
                        请假
                    </div>
                    <div class="am-u-sm-8 ">
                        <input type="text" class="am-modal-prompt-input">
                    </div>
                    <div class="am-hide-sm-only">分</div>
                </div>

                <div class="am-g am-margin-top am-form-group">
                    <div class="am-u-sm-4 am-u-md-2 am-text-right">
                        缺勤
                    </div>
                    <div class="am-u-sm-8 ">
                        <input type="text" class="am-modal-prompt-input">
                    </div>
                    <div class="am-hide-sm-only">分</div>
                </div>
            </form>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn" data-am-modal-cancel>取消</span>
            <span class="am-modal-btn" data-am-modal-confirm>提交</span>
        </div>
    </div>
</div>

<div class="am-modal am-modal-prompt" tabindex="-1" id="work-score">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">作业比例设置</div>
        <div class="am-modal-bd">
            <form class="am-form am-form-horizontal">
                <div class="am-g am-margin-top am-form-group">
                    <div class="am-u-sm-4 am-u-md-2 am-text-right">
                        作业1
                    </div>
                    <div class="am-u-sm-8 ">
                        <input type="text" class="am-modal-prompt-input">
                    </div>
                    <div class="am-hide-sm-only">%</div>
                </div>

                <div class="am-g am-margin-top am-form-group">
                    <div class="am-u-sm-4 am-u-md-2 am-text-right">
                        作业2
                    </div>
                    <div class="am-u-sm-8 ">
                        <input type="text" class="am-modal-prompt-input">
                    </div>
                    <div class="am-hide-sm-only">%</div>
                </div>

                <div class="am-g am-margin-top am-form-group">
                    <div class="am-u-sm-4 am-u-md-2 am-text-right">
                        作业3
                    </div>
                    <div class="am-u-sm-8 ">
                        <input type="text" class="am-modal-prompt-input">
                    </div>
                    <div class="am-hide-sm-only">%</div>
                </div>

                <div class="am-g am-margin-top am-form-group">
                    <div class="am-u-sm-4 am-u-md-2 am-text-right">
                        作业4
                    </div>
                    <div class="am-u-sm-8 ">
                        <input type="text" class="am-modal-prompt-input">
                    </div>
                    <div class="am-hide-sm-only">%</div>
                </div>
            </form>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn" data-am-modal-cancel>取消</span>
            <span class="am-modal-btn" data-am-modal-confirm>提交</span>
        </div>
    </div>
</div>

<div class="am-modal am-modal-prompt" tabindex="-1" id="test-score">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">测试比例设置</div>
        <div class="am-modal-bd">
            <form class="am-form am-form-horizontal">
                <div class="am-g am-margin-top am-form-group">
                    <div class="am-u-sm-4 am-u-md-2 am-text-right">
                        测试1
                    </div>
                    <div class="am-u-sm-8 ">
                        <input type="text" class="am-modal-prompt-input">
                    </div>
                    <div class="am-hide-sm-only">%</div>
                </div>

                <div class="am-g am-margin-top am-form-group">
                    <div class="am-u-sm-4 am-u-md-2 am-text-right">
                        测试2
                    </div>
                    <div class="am-u-sm-8 ">
                        <input type="text" class="am-modal-prompt-input">
                    </div>
                    <div class="am-hide-sm-only">%</div>
                </div>

                <div class="am-g am-margin-top am-form-group">
                    <div class="am-u-sm-4 am-u-md-2 am-text-right">
                        测试3
                    </div>
                    <div class="am-u-sm-8 ">
                        <input type="text" class="am-modal-prompt-input">
                    </div>
                    <div class="am-hide-sm-only">%</div>
                </div>

                <div class="am-g am-margin-top am-form-group">
                    <div class="am-u-sm-4 am-u-md-2 am-text-right">
                        测试4
                    </div>
                    <div class="am-u-sm-8 ">
                        <input type="text" class="am-modal-prompt-input">
                    </div>
                    <div class="am-hide-sm-only">%</div>
                </div>
            </form>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn" data-am-modal-cancel>取消</span>
            <span class="am-modal-btn" data-am-modal-confirm>提交</span>
        </div>
    </div>
</div>

    <script src="assets/js/app.js"></script>
</body>

</html>