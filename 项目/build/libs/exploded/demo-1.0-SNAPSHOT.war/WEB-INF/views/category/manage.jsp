<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/9/5
  Time: 22:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>场地分类管理</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //for-mobile-apps -->
    <link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- js -->
    <script src="/js/jquery-1.11.1.min.js"></script>
    <!-- //js -->
    <!-- FlexSlider -->
    <link rel="stylesheet" href="/css/flexslider.css" type="text/css" media="screen"/>
    <!-- FlexSlider -->
    <!-- script -->
    <script src="/js/jquery.chocolat.js"></script>
    <link rel="stylesheet" href="/css/chocolat.css" type="text/css" media="screen" charset="utf-8">
    <!--light-box-files-->
    <script type="text/javascript" charset="utf-8">
        $(function () {
            $('.gallery-grid a').Chocolat();
        });
    </script>
    <!-- script -->
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="/js/move-top.js"></script>
    <script type="text/javascript" src="/js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
</head>
<body style="background: #f9f9f9">
<div class="header">
    <div class="container">
        <div class="header-left">
            <a>公共运动场地预订系统</a>
        </div>
        <div class="header-left1">
            <p></p>
        </div>
        <div class="header-right">
            <c:choose>
                <c:when test="${empty manager.manager_account}">
                    <ul>
                            <%--<li><span>Username</span></li>--%>
                        <li><a href="/user/toLogin" class="label">登录</a></li>
                        <li><a href="/user/toRegiste" class="label">注册</a></li>
                        <li><a href="/manager1/toManagerLogin" class="label">管理员</a></li>
                    </ul>
                </c:when>
                <c:otherwise>
                    <ul>
                        <li><span>${manager.manager_account}</span></li>
                        <li><a href="/manager1/logOff">退出登录</a></li>
                            <%--<li><a href="/booking/booking_history_findByProp" class="label">查看历史预订记录</a></li>--%>
                    </ul>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<%--<div class="header-nav">--%>
    <%--<div class="container">--%>
        <%--<div class="header-nav-bottom">--%>
            <%--<nav class="navbar navbar-default">--%>
                <%--<!-- Brand and toggle get grouped for better mobile display -->--%>
                <%--<div class="navbar-header">--%>
                    <%--<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"--%>
                            <%--data-target="#bs-example-navbar-collapse-1">--%>
                        <%--<span class="sr-only">Toggle navigation</span>--%>
                        <%--<span class="icon-bar"></span>--%>
                        <%--<span class="icon-bar"></span>--%>
                        <%--<span class="icon-bar"></span>--%>
                    <%--</button>--%>
                <%--</div>--%>
                <%--<!-- Collect the nav links, forms, and other content for toggling -->--%>
                <%--<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">--%>
                    <%--<ul class="nav navbar-nav">--%>
                        <%--<li class="active"><a href="/index.jsp">Home</a></li>--%>
                        <%--<li><a href="#about" class="scroll">About</a></li>--%>
                        <%--<li><a href="/booking/toBooking_main" class="label">Booking</a></li>--%>
                        <%--<li><a href="#gallery" class="scroll">Photo Gallery</a></li>--%>
                        <%--<li><a href="#contact" class="scroll">Contact Us</a></li>--%>
                    <%--</ul>--%>
                <%--</div><!-- /.navbar-collapse -->--%>
            <%--</nav>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
<h1 style="text-align: center;padding: 10px">
    <small>分类管理</small>
</h1>
<h3><a href="/category/toManage_main" class="label label-success label-default">返回管理主页</a></h3>
<hr>
<%--数据表格展示区--%>
<div class="table-responsive">
    <table class="table table-hover table-striped">
        <thead>
        <tr>
            <th>类型编号</th>
            <th>类型名称</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${content.data}" var="c">
            <%--<c:forEach items="${pageinfo.list}" var="d">--%>
            <tr>
                <td>${c.category_id}</td>
                <td>${c.category_name}</td>
                <td>
                    <a href="/category/toEdit/${c.category_id}"
                       class="label label-danger large">修改
                    </a>
                </td>
                <td>
                    <a href="/category/delete/${c.category_id}"
                       class="label label-danger large">删除
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<%--数据展示表格结束--%>
<h3>
    <a href="/category/toEdit" class="label label-success label-lg">添加</a>
</h3>
</body>
</html>
