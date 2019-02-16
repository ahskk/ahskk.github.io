<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/9/19
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>管理主页</title>
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
<body>
<div class="header">
    <div class="container">
        <div class="header-left">
            <a>球场预订系统</a>
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
<div class="container">
    <div class="row clearfix">
        <div class="col-md-3 column">
        </div>
        <div class="col-md-6 column">
            <a href="${pageContext.request.contextPath}/category/manage" class="btn btn-info btn-block" style="margin-top: 10px" role="button">分类管理</a>
            <a href="${pageContext.request.contextPath}/user/findByProp" class="btn btn-danger btn-block" role="button">用户管理</a>
            <a href="${pageContext.request.contextPath}/booking/findByProp" class="btn btn-success btn-block" role="button">订单管理</a>
            <a href="${pageContext.request.contextPath}/announcement/announcement_manage" class="btn btn-warning btn-block" role="button">公告管理</a>
            <a href="${pageContext.request.contextPath}/basketball_court/manage" class="btn btn-primary btn-block" role="button">篮球场管理</a>
            <a href="${pageContext.request.contextPath}/tennis_court/manage" class="btn btn-primary btn-block" role="button">网球场管理</a>
            <a href="${pageContext.request.contextPath}/badminton_court/manage" class="btn btn-primary btn-block" role="button">羽毛球场管理</a>

            <%--<div>--%>
                <%--<h1 style="text-align: center;padding: 20px">--%>
                    <%--<small>公告编辑</small>--%>
                <%--</h1>--%>
                <%--<h2 style="padding: 10px">--%>
                    <%--<small>标题</small>--%>
                <%--</h2>--%>
                <%--<textarea id="title" cols="75" rows="1"></textarea>--%>
                <%--<h2 style="padding: 10px">--%>
                    <%--<small>内容</small>--%>
                <%--</h2>--%>
                <%--<textarea id="content" cols="75" rows="10"></textarea>--%>
                <%--<input type="button" id="submit" class="btn btn-success btn-block" value="提交"/>--%>
                <%--&lt;%&ndash;<button type="submit" onclick="displayResult()">提交</button></p>&ndash;%&gt;--%>
            <%--</div>--%>
        </div>
        <div class="col-md-3 column">
        </div>
    </div>
</div>
</body>
</html>
<%--<script>--%>
    <%--$(document).ready(function () {--%>
        <%--$("#submit").click(function (event) {--%>
            <%--var text_title = $("#title").val();--%>
            <%--var text_content = $("#content").val();--%>
            <%--alert(text_title);--%>
            <%--alert(text_content);--%>
            <%--$.ajax({--%>
                <%--data: {--%>
                    <%--'text_title': text_title,--%>
                    <%--'text_content': text_content--%>
                <%--},--%>
                <%--type: 'POST',--%>
                <%--dataType: 'json',--%>
                <%--url: '/booking/getVenueDeTailByDate',--%>
                <%--// beforeSend:removeBind,--%>
                <%--error: function () {--%>
                    <%--alert("提交出错了");--%>
                <%--},--%>
                <%--success: function (res, status, xhr) {--%>
                    <%--if (res == "yes") {--%>
<%--//                        alert("123");--%>
                        <%--window.location.href = "/manager/announcement_manage";--%>
                    <%--} else {--%>
                        <%--window.location.href = "/manager/announcement_edit";--%>
                    <%--}--%>
                <%--}--%>
            <%--});--%>
        <%--});--%>
    <%--});--%>
<%--</script>--%>