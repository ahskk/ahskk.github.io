<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/1/24
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>确认预订信息</title>
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
<body>
<%--查询form--%>
<%--<form class="form-inline" role="form" method="post" action="/booking/findByProp">--%>
<%--订单创建日期--%>
<%--<div class="form-group">--%>
<%--<label class="sr-only" for="beginDate">请选择起始日期</label>--%>
<%--<input type="date" class="form-control" name="beginDate" id="beginDate" placeholder="请选择起始日期">--%>
<%--</div>--%>
<%--<div class="form-group">--%>
<%--到--%>
<%--<label class="sr-only" for="endDate">请选择终止日期</label>--%>
<%--<input type="date" class="form-control" name="endDate" id="endDate" placeholder="请选择终止日期">--%>
<%--</div>--%>
<%--<button type="submit" id="search" name="search" class="btn btn-search">查询订单创建日期</button>--%>
<%--</form>--%>
<%--<form class="form-inline" role="form" method="post" action="/booking/findByProp">--%>
<%--预订日期--%>
<%--<div class="form-group">--%>
<%--<label class="sr-only" for="beginBookingDate">请选择起始日期</label>--%>
<%--<input type="date" class="form-control" name="beginBookingDate" id="beginBookingDate" placeholder="请选择起始日期">--%>
<%--</div>--%>
<%--<div class="form-group">--%>
<%--到--%>
<%--<label class="sr-only" for="endBookingDate">请选择终止日期</label>--%>
<%--<input type="date" class="form-control" name="endBookingDate" id="endBookingDate" placeholder="请选择终止日期">--%>
<%--</div>--%>
<%--<button type="submit" id="search_b" name="search_b" class="btn btn-search">查询预订日期</button>--%>
<%--</form>--%>
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
                        <li><a href="/booking/booking_history" class="label">查看历史预订记录</a></li>
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



<div class="container">
    <div class="row clearfix">
        <div class="col-md-2 column">
        </div>
        <div class="col-md-8 column" style="background-color: #f9f9f9">
            <h3 style="text-align: center;padding: 20px; background-color: #f9f9f9">
                确认预订信息
            </h3>
            <dl class="dl-horizontal">
                <%--<c:forEach items="${content.data}" var="b">--%>

                    <dt>预订人姓名</dt>
                    <dd>${content.order_id}</dd>
                    <dt>预订人电话</dt>
                    <dd>${content.phone}</dd>
                    <dt>场地类型</dt>
                    <dd>${content.category_name}</dd>
                    <dt>场地名称</dt>
                    <dd>${content.court_name}</dd>
                    <dt>预订日期</dt>
                    <dd>${content.booking_date}</dd>
                    <dt>预定时间段</dt>
                    <dd>${content.booking_time}</dd>
                <%--</c:forEach>--%>
            </dl>
            <div class="col-md-6 column">
                <a class="btn btn-default" style="display: inline-block;text-align: center" href="/booking/cancel/${content.order_id}">取消预订</a>
                <%--<button type="button" class="btn btn-default">按钮</button>--%>
            </div>
            <div class="col-md-6 column">
                <a class="btn btn-primary" style="display: inline-block;text-align: center" href="/booking/booking_message">确认预订</a>
                <%--<button type="button" class="btn btn-default btn-primary">按钮</button>--%>
            </div>
        </div>
        <div class="col-md-2 column">
        </div>
    </div>
</div>


<%--数据表格展示区--%>
<%--<div class="table-responsive" style="background-color: #f9f9f9">--%>
<%--<table class="table table-hover">--%>
<%--<thead>--%>
<%--<tr>--%>
<%--<th>预订编号</th>--%>
<%--<th>场地类型</th>--%>
<%--<th>场地名称</th>--%>
<%--<th>订单创建日期</th>--%>
<%--<th>预订日期</th>--%>
<%--<th>预订时间段</th>--%>
<%--<th>预订价格</th>--%>
<%--</tr>--%>
<%--</thead>--%>
<%--<tbody>--%>
<%--&lt;%&ndash;<c:forEach items="${content.booking}">&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:forEach items="${pageinfo.list}" var="d">&ndash;%&gt;--%>
<%--<tr>--%>
<%--<td>${content.order_id}</td>--%>
<%--<td>${content.category_name}</td>--%>
<%--<td>${content.court_name}</td>--%>
<%--<td>${content.create_date}</td>--%>
<%--<td>${content.booking_date}</td>--%>
<%--<td>${content.booking_time}</td>--%>
<%--<td>${content.booking_price}</td>--%>
<%--</tr>--%>
<%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
<%--</tbody>--%>
<%--</table>--%>
<%--</div>--%>

<%--<h3 style="padding: 10px;text-align: center"><a href="/booking/booking_message" class="label label-success label-default">确认预订</a>--%>
<%--</h3>--%>

<%--数据展示表格结束--%>

<%--<div class="footer">--%>
<%--<div class="container">--%>
<%--<div class="footer-grids">--%>
<%--<div class="footer-grid-left">--%>
<%--<p>&copy; 2018.运动场地预订系统</p>--%>
<%--</div>--%>
<%--&lt;%&ndash;<div class="footer-grid-right">&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#" class="facebook"></a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#" class="in"></a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#" class="p"></a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#" class="dribble"></a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--<div class="clearfix"></div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
</body>
</html>
