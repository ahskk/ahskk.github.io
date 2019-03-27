<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/9/20
  Time: 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>公告编辑页</title>
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
            <a>公共运动场地预订系统</a></div>
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

<div class="container">
    <div class="row clearfix">
        <div class="col-md-3 column">
            <hr>
            <h3><a href="/announcement/toManage_main" class="label label-success label-default">返回管理主页</a></h3>
            <hr>
            <h3><a href="/announcement/announcement_manage" class="label label-success label-default">返回公告管理</a></h3>
        </div>
        <div class="col-md-6 column" style="background-color: #f9f9f9">
            <form class="form-horizontal" role="form" method="post"
                  action="/announcement/doUpdate" enctype="multipart/form-data">
                <div>
                    <h1 style="text-align: center;padding: 20px">
                        <small>公告编辑</small>
                    </h1>
                    <input type="text" name="announcement_id" value="${announcement.announcement_id}" hidden>
                    <input type="text" name="create_date" value="${announcement.create_date}" hidden>
                    <h2 style="padding: 10px">
                        <small>标题</small>
                    </h2>
                    <textarea id="announcement_title" name="announcement_title" cols="75"
                              rows="1">${announcement.announcement_title}</textarea>
                    <h2 style="padding: 10px">
                        <small>内容</small>
                    </h2>
                    <textarea id="announcement_content" name="announcement_content" cols="75"
                              rows="10">${announcement.announcement_content}</textarea>
                    <input id="submit" type="submit" class="btn btn-success btn-block" value="提交"/>
                    <%--<button type="submit" onclick="displayResult()">提交</button></p>--%>
                </div>
            </form>
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
<%--var announcement_id = $("#announcement_id").val();--%>
<%--var create_date = $("#create_date").val();--%>
<%--var announcement_title = $("#announcement_title").val();--%>
<%--var announcement_content = $("#announcement_content").val();--%>
<%--alert(announcement_title);--%>
<%--alert(announcement_content);--%>
<%--$.ajax({--%>
<%--data: {--%>
<%--'announcement_id':announcement_id,--%>
<%--'announcement_title': announcement_title,--%>
<%--'announcement_content': announcement_content,--%>
<%--'create_date':create_date--%>
<%--},--%>
<%--type: 'POST',--%>
<%--dataType: 'json',--%>
<%--url: '/announcement/doUpdate',--%>
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