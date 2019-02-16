<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/9/7
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>

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
            <a href="/index.jsp">球场预订系统</a>
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
                        <li><a href="/user/toEdit/${user.user_id}"><span>${user.username}</span></a></li>
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
                        <li><a href="/index.jsp">主页</a></li>
                        <li><a href="/announcement/toAnnouncement_main" class="label">公告</a></li>
                        <li class="active"><a href="/booking/toBooking_main" class="label">预约</a></li>
                        <%--<li><a href="#gallery" class="scroll">Photo Gallery</a></li>--%>
                        <%--<li><a href="#contact" class="scroll">Contact Us</a></li>--%>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </nav>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <%--<div class="carousel slide" id="carousel-636091">--%>
            <%--<ol class="carousel-indicators">--%>
            <%--<li data-target="#carousel-636091" data-slide-to="0">--%>
            <%--</li>--%>
            <%--<li data-target="#carousel-636091" data-slide-to="1">--%>
            <%--</li>--%>
            <%--<li class="active" data-target="#carousel-636091" data-slide-to="2">--%>
            <%--</li>--%>
            <%--</ol>--%>
            <%--<div class="carousel-inner">--%>
            <%--<div class="item">--%>
            <%--<img alt="" src="/images/18.jpg" />--%>
            <%--<div class="carousel-caption">--%>
            <%--<h4>--%>
            <%--First Thumbnail label--%>
            <%--</h4>--%>
            <%--<p>--%>
            <%--Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.--%>
            <%--</p>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="item">--%>
            <%--<img alt="" src="/images/20.jpg" />--%>
            <%--<div class="carousel-caption">--%>
            <%--<h4>--%>
            <%--Second Thumbnail label--%>
            <%--</h4>--%>
            <%--<p>--%>
            <%--Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.--%>
            <%--</p>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="item active">--%>
            <%--<img alt="" src="/images/20.jpg" />--%>
            <%--<div class="carousel-caption">--%>
            <%--<h4>--%>
            <%--Third Thumbnail label--%>
            <%--</h4>--%>
            <%--<p>--%>
            <%--Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.--%>
            <%--</p>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div> <a class="left carousel-control" href="#carousel-636091" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-636091" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>--%>
            <%--</div>--%>
            <%--<ul class="nav nav-tabs">--%>
            <%--<li class="active">--%>
            <%--<a href="#">首页</a>--%>
            <%--</li>--%>
            <%--<li>--%>
            <%--<a href="#">简介</a>--%>
            <%--</li>--%>
            <%--<li class="disabled">--%>
            <%--<a href="#">信息</a>--%>
            <%--</li>--%>
            <%--<li class="dropdown pull-right">--%>
            <%--<a class="dropdown-toggle" href="#" data-toggle="dropdown">下拉<strong class="caret"></strong></a>--%>
            <%--<ul class="dropdown-menu">--%>
            <%--<li>--%>
            <%--<a href="#">操作</a>--%>
            <%--</li>--%>
            <%--<li>--%>
            <%--<a href="#">设置栏目</a>--%>
            <%--</li>--%>
            <%--<li>--%>
            <%--<a href="#">更多设置</a>--%>
            <%--</li>--%>
            <%--<li class="divider">--%>
            <%--</li>--%>
            <%--<li>--%>
            <%--<a href="#">分割线</a>--%>
            <%--</li>--%>
            <%--</ul>--%>
            <%--</li>--%>
            <%--</ul>--%>
            <div class="row">
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img alt="300x200" src="/images/76.png"/>
                        <div class="caption">
                            <h3>
                                篮球场
                            </h3>
                            <p>
                                简介：Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi
                                porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                            </p>
                            <p>
                                <a class="btn btn-primary" href="/basketball_court/toBooking_basketball">预订</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img alt="300x200" src="/images/18.jpg"/>
                        <div class="caption">
                            <h3>
                                网球场
                            </h3>
                            <p>
                                简介：Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi
                                porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                            </p>
                            <p>
                                <a class="btn btn-primary" href="/tennis_court/toBooking_tennis">预订</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img alt="300x200" src="/images/73.png"/>
                        <div class="caption">
                            <h3>
                                羽毛球场
                            </h3>
                            <p>
                                简介：Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi
                                porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                            </p>
                            <p>
                                <a class="btn btn-primary" href="/badminton_court/toBooking_badminton">预订</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
