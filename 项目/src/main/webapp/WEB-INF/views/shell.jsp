<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/9/18
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>shell</title>
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
            <a href="/index.jsp">公共运动场地预订系统</a>
        </div>
        <div class="header-left1">
            <p></p>
        </div>
        <div class="header-right">
            <c:choose>
                <c:when test="${empty user.user_id}">
                    <ul>
                            <%--<li><span>Username</span></li>--%>
                        <li><a href="/user/toLogin" class="label">登录</a></li>
                        <li><a href="/user/toRegiste" class="label">注册</a></li>
                        <li><a href="/manager1/toMLogin" class="label">管理员</a></li>
                    </ul>
                </c:when>
                <c:otherwise>
                    <ul>
                        <li><a href="/user/toEdit"><span>${user.username}</span></a></li>
                        <li><a href="/user/logOff">退出登录</a></li>
                        <li><a href="/booking/booking_history_findByProp" class="label">查看历史预订记录</a></li>
                    </ul>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<div class="header-nav">
    <div class="container">
        <div class="header-nav-bottom">
            <nav class="navbar navbar-default">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/index.jsp">主页</a></li>
                        <li><a href="/announcement/toAnnouncement_main" class="label">公告</a></li>
                        <li><a href="/booking/toBooking_main" class="label">预约</a></li>
                        <%--<li><a href="#gallery" class="scroll">Photo Gallery</a></li>--%>
                        <%--<li><a href="#contact" class="scroll">Contact Us</a></li>--%>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </nav>
        </div>
    </div>
</div>

<div class="footer">
    <div class="container">
        <div class="footer-grids">
            <div class="footer-grid-left">
                <p>&copy; 2018.运动场地预订系统</p>
            </div>
            <%--<div class="footer-grid-right">--%>
            <%--<ul>--%>
            <%--<li><a href="#" class="facebook"></a></li>--%>
            <%--<li><a href="#" class="in"></a></li>--%>
            <%--<li><a href="#" class="p"></a></li>--%>
            <%--<li><a href="#" class="dribble"></a></li>--%>
            <%--</ul>--%>
            <%--</div>--%>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
</body>
</html>
