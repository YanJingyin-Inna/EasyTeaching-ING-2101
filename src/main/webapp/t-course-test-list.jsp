<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>测试</title>
    <meta name="description" content="测试">
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
            $('#add-toggle').on('click', function() {
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

        $(function() {
            $('#edit-toggle').on('click', function() {
                $('#edit').modal({
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
            $('#result-toggle').on('click', function() {
                $('#result').modal({
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
                        <span class="am-icon-code"></span> 测试列表
                    </div>
                    <div class="tpl-portlet-input tpl-fz-ml">
                        <div class="portlet-input input-small input-inline">
                            <%--                            <div class="input-icon right">--%>
                            <%--                                <i class="am-icon-search"></i>--%>
                            <%--                                <input type="text" class="form-control form-control-solid" placeholder="搜索..."> </div>--%>
                        </div>
                    </div>

                </div>
                <div class="tpl-block">
                    <div class="am-g">
                        <div class="am-u-sm-12 am-u-md-6">
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button type="button" class="am-btn am-btn-default am-btn-success" id="add-toggle"><span class="am-icon-plus"></span> 新增</button>
                                    <button type="button" class="am-btn am-btn-default am-btn-danger"><span class="am-icon-trash-o"></span> 删除</button>
                                    <button type="button" class="am-btn am-btn-default am-btn-warning"><span class="am-icon-bell"></span> 发布</button>
                                    <%--                                    <button type="button" class="am-btn am-btn-default am-btn-warning"><span class="am-icon-archive"></span> 下载</button>--%>
                                </div>
                            </div>
                        </div>
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

                    <div class="am-g">
                        <div class="am-u-sm-12">
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                    <tr>
                                        <th class="table-check"><input type="checkbox" class="tpl-table-fz-check"></th>
                                        <th class="table-id">序号</th>
                                        <th class="table-title">测试名称</th>
                                        <th class="table-type">班级</th>
                                        <th class="table-author am-hide-sm-only">状态</th>
                                        <th class="table-date am-hide-sm-only">创建时间</th>
                                        <th class="table-set">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td><input type="checkbox"></td>
                                        <td>1</td>
                                        <td><a href="#">第一章小测</a></td>
                                        <td>1901</td>
                                        <td class="am-hide-sm-only">已发布</td>
                                        <td class="am-hide-sm-only">2021年9月4日 7:28:47</td>
                                        <td>
                                            <div class="am-btn-toolbar">
                                                <div class="am-btn-group am-btn-group-xs">
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary" id="edit-toggle"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-warning am-hide-sm-only"><span class="am-icon-bell"></span> 发布</button>
                                                    <button type="button" class="am-btn am-btn-default am-btn-xs am-hide-sm-only" onclick="location.href='t-course-test-result.jsp'"><span class="am-icon-check"></span> 结果</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox"></td>
                                        <td>2</td>
                                        <td><a href="#">小测2</a></td>
                                        <td>1901</td>
                                        <td class="am-hide-sm-only">已完成</td>
                                        <td class="am-hide-sm-only">2021年9月4日 7:28:47</td>
                                        <td>
                                            <div class="am-btn-toolbar">
                                                <div class="am-btn-group am-btn-group-xs">
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary" id="edit-toggle"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-warning am-hide-sm-only"><span class="am-icon-bell"></span> 发布</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-check"></span> 结果</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox"></td>
                                        <td>3</td>
                                        <td><a href="#">期中测试</a></td>
                                        <td>1901</td>
                                        <td class="am-hide-sm-only">未发布</td>
                                        <td class="am-hide-sm-only">2021年9月4日 7:28:47</td>
                                        <td>
                                            <div class="am-btn-toolbar">
                                                <div class="am-btn-group am-btn-group-xs">
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary" id="edit-toggle"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-warning am-hide-sm-only"><span class="am-icon-bell"></span> 发布</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-check"></span> 结果</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox"></td>
                                        <td>4</td>
                                        <td><a href="#">Business management</a></td>
                                        <td>default</td>
                                        <td class="am-hide-sm-only">测试1号</td>
                                        <td class="am-hide-sm-only">2021年9月4日 7:28:47</td>
                                        <td>
                                            <div class="am-btn-toolbar">
                                                <div class="am-btn-group am-btn-group-xs">
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary" id="edit-toggle"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-warning am-hide-sm-only"><span class="am-icon-bell"></span> 发布</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-check"></span> 结果</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox"></td>
                                        <td>5</td>
                                        <td><a href="#">Business management</a></td>
                                        <td>default</td>
                                        <td class="am-hide-sm-only">测试1号</td>
                                        <td class="am-hide-sm-only">2021年9月4日 7:28:47</td>
                                        <td>
                                            <div class="am-btn-toolbar">
                                                <div class="am-btn-group am-btn-group-xs">
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary" id="edit-toggle"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-warning am-hide-sm-only"><span class="am-icon-bell"></span> 发布</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-check"></span> 结果</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox"></td>
                                        <td>6</td>
                                        <td><a href="#">Business management</a></td>
                                        <td>default</td>
                                        <td class="am-hide-sm-only">测试1号</td>
                                        <td class="am-hide-sm-only">2021年9月4日 7:28:47</td>
                                        <td>
                                            <div class="am-btn-toolbar">
                                                <div class="am-btn-group am-btn-group-xs">
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary" id="edit-toggle"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-warning am-hide-sm-only"><span class="am-icon-bell"></span> 发布</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-check"></span> 结果</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox"></td>
                                        <td>7</td>
                                        <td><a href="#">Business management</a></td>
                                        <td>default</td>
                                        <td class="am-hide-sm-only">测试1号</td>
                                        <td class="am-hide-sm-only">2021年9月4日 7:28:47</td>
                                        <td>
                                            <div class="am-btn-toolbar">
                                                <div class="am-btn-group am-btn-group-xs">
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-warning am-hide-sm-only"><span class="am-icon-bell"></span> 发布</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-check"></span> 结果</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox"></td>
                                        <td>8</td>
                                        <td><a href="#">Business management</a></td>
                                        <td>default</td>
                                        <td class="am-hide-sm-only">测试1号</td>
                                        <td class="am-hide-sm-only">2021年9月4日 7:28:47</td>
                                        <td>
                                            <div class="am-btn-toolbar">
                                                <div class="am-btn-group am-btn-group-xs">
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-warning am-hide-sm-only"><span class="am-icon-bell"></span> 发布</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-check"></span> 结果</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox"></td>
                                        <td>9</td>
                                        <td><a href="#">Business management</a></td>
                                        <td>default</td>
                                        <td class="am-hide-sm-only">测试1号</td>
                                        <td class="am-hide-sm-only">2021年9月4日 7:28:47</td>
                                        <td>
                                            <div class="am-btn-toolbar">
                                                <div class="am-btn-group am-btn-group-xs">
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-warning am-hide-sm-only"><span class="am-icon-bell"></span> 发布</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-check"></span> 结果</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox"></td>
                                        <td>10</td>
                                        <td><a href="#">Business management</a></td>
                                        <td>default</td>
                                        <td class="am-hide-sm-only">测试1号</td>
                                        <td class="am-hide-sm-only">2021年9月4日 7:28:47</td>
                                        <td>
                                            <div class="am-btn-toolbar">
                                                <div class="am-btn-group am-btn-group-xs">
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-warning am-hide-sm-only"><span class="am-icon-bell"></span> 发布</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-check"></span> 结果</button>
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
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
                                <hr>


                        </div>

                    </div>
                </div>

            </div>

        </div>

    </div>



    <script src="assets/js/app.js"></script>
</body>

<%--模块窗口--%>
<div class="am-modal am-modal-prompt" tabindex="-1" id="edit">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">编辑测试</div>
        <div class="am-modal-bd">
            <form class="am-form am-form-horizontal">
                <div class="am-g am-margin-top am-form-group-sm">
                    <div class="am-u-sm-4 am-u-md-3 am-text-right">
                        测试标题
                    </div>
                    <div class="am-u-sm-8 am-align-left">
                        <input type="text" class="am-modal-prompt-input" >
                    </div>
                </div>

                <div class="am-g am-margin-top am-form-group-sm">
                    <div class="am-u-sm-4 am-u-md-3 am-text-right">
                        测试试卷
                    </div>
                    <div class="am-u-sm-8 am-align-left">
                        <div class="am-form-group-sm am-align-left">
                            <select data-am-selected="{btnSize: 'sm'}">
                                <option value="option1">选择试卷</option>
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

                <div class="am-g am-margin-top am-form-group-sm">
                    <div class="am-u-sm-4 am-u-md-3 am-text-right">
                        测试时长
                    </div>
                    <div class="am-u-sm-8 am-align-left">
                        <input type="text" class="am-modal-prompt-input" >
                    </div>
                </div>

                <div class="am-g am-margin-top am-form-group-sm">
                    <div class="am-u-sm-4 am-u-md-3 am-text-right">
                        开考时间
                    </div>
                    <div class="am-u-sm-8 am-align-left">
                            <div class="am-form-group am-form-icon">
                                <i class="am-icon-calendar"></i>
                                <input type="datetime-local" class="am-form-field am-input-sm" placeholder="时间">
                            </div>
                    </div>
                </div>

                <div class="am-g am-margin-top am-form-group-sm">
                    <div class="am-u-sm-4 am-u-md-3 am-text-right">
                        发布时间
                    </div>
                    <div class="am-u-sm-8 am-align-left">
                        <div class="am-form-group am-form-icon">
                            <i class="am-icon-calendar"></i>
                            <input type="datetime-local" class="am-form-field am-input-sm" placeholder="时间">
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn" data-am-modal-cancel>返回</span>
            <span class="am-modal-btn" data-am-modal-confirm>保存</span>
        </div>
    </div>
</div>

<div class="am-modal am-modal-prompt" tabindex="-1" id="add">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">新建测试</div>
        <div class="am-modal-bd">
            <form class="am-form am-form-horizontal">
                <div class="am-g am-margin-top am-form-group-sm">
                    <div class="am-u-sm-4 am-u-md-3 am-text-right">
                        测试标题
                    </div>
                    <div class="am-u-sm-8 am-align-left">
                        <input type="text" class="am-modal-prompt-input" >
                    </div>
                </div>

                <div class="am-g am-margin-top am-form-group-sm">
                    <div class="am-u-sm-4 am-u-md-3 am-text-right">
                        测试试卷
                    </div>
                    <div class="am-u-sm-8 am-align-left">
                        <div class="am-form-group-sm am-align-left">
                            <select data-am-selected="{btnSize: 'sm'}">
                                <option value="option1">选择试卷</option>
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

                <div class="am-g am-margin-top am-form-group-sm">
                    <div class="am-u-sm-4 am-u-md-3 am-text-right">
                        测试时长
                    </div>
                    <div class="am-u-sm-8 am-align-left">
                        <input type="text" class="am-modal-prompt-input" >
                    </div>
                </div>

                <div class="am-g am-margin-top am-form-group-sm">
                    <div class="am-u-sm-4 am-u-md-3 am-text-right">
                        开考时间
                    </div>
                    <div class="am-u-sm-8 am-align-left">
                        <div class="am-form-group am-form-icon">
                            <i class="am-icon-calendar"></i>
                            <input type="datetime-local" class="am-form-field am-input-sm" placeholder="时间">
                        </div>
                    </div>
                </div>

                <div class="am-g am-margin-top am-form-group-sm">
                    <div class="am-u-sm-4 am-u-md-3 am-text-right">
                        发布时间
                    </div>
                    <div class="am-u-sm-8 am-align-left">
                        <div class="am-form-group am-form-icon">
                            <i class="am-icon-calendar"></i>
                            <input type="datetime-local" class="am-form-field am-input-sm" placeholder="时间">
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn" data-am-modal-cancel>返回</span>
            <span class="am-modal-btn" data-am-modal-confirm>创建</span>
        </div>
    </div>
</div>


</html>