<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/9/4
  Time: 22:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户注册或编辑</title>
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
        <div class="col-md-4 column">
        </div>
        <div class="col-md-4 column" style="background-color: #f9f9f9">
            <h1 style="text-align: center;padding: 20px">
                <small>用户信息</small>
            </h1>
            <hr>
            <form class="form-horizontal" role="form" method="post"
                  action="/user/doUpdate" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="realname" class="col-sm-4 control-label">真实姓名</label>
                    <div class="col-sm-8">
                        <%--隐藏id--%>
                        <input type="text" name="user_id" value="${user.user_id}" hidden>
                        <input type="text" class="form-control" id="realname"
                               placeholder="请输入真实姓名" name="realname" value="${user.realname}"
                        >
                    </div>
                </div>
                <%--账号一经注册，不能变更--%>
                <div class="form-group">
                    <label for="username" class="col-sm-4 control-label">用户名</label>
                    <c:choose>
                        <c:when test="${empty user.user_id}">
                            <div class="col-sm-8">
                                <input type="text" required name="username"
                                       id="username" value="${user.username}"
                                       class="form-control" placeholder="请输入用户名"/>
                                <span id="msg"/>
                            </div>
                        </c:when>
                        <%--修改时，用户名不能修改--%>
                        <c:otherwise>
                            <div class="col-sm-8">
                                <span>${user.username}</span>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
                <%--新用户二次输入密码，注册用户自己变更密码或由管理员重置密码--%>
                <c:choose>
                    <c:when test="${empty user.user_id}">
                        <div class="form-group">
                            <label for="password" class="col-sm-4 control-label">密码</label>
                            <div class="col-sm-8">
                                <input type="password" class="form-control" id="password"
                                       name="password" placeholder="请输入密码" required minlength="6">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="repassword" class="col-sm-4 control-label">确认密码</label>
                            <div class="col-sm-8">
                                <input type="password" class="form-control" id="repassword"
                                       placeholder="请再次输入密码" required minlength="6">
                                <span id="passinfo"></span>
                            </div>
                        </div>
                    </c:when>
                    <%--修改时，用户名不能修改--%>
                    <c:otherwise>
                        <div class="form-group">
                            <label for="repassword" class="col-sm-4 control-label">密码</label>
                            <div class="col-sm-8">
                                <input type="password" name="password" class="form-control"
                                       placeholder="请输入密码" value="${user.password}" required minlength="6">
                            </div>
                        </div>

                    </c:otherwise>
                </c:choose>
                <div class="form-group">
                    <label for="phone" class="col-sm-4 control-label">联系电话</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="phone"
                               name="phone" value="${user.phone}" required
                               placeholder="请输入联系电话" maxlength="11">
                    </div>
                </div>
                <div class="form-group">
                    <label for="id_num" class="col-sm-4 control-label">身份证号码</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="id_num"
                               name="id_num" value="${user.id_num}"
                               placeholder="请输入身份证号码">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-0 col-sm-12 btn-block">
                        <c:choose>
                            <c:when test="${empty user.user_id}">
                                <input type="submit" value="注册" class="btn btn-success btn-block"/>
                            </c:when>
                            <c:otherwise>
                                <input type="submit" value="修改" class="btn btn-success btn-block"/>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-4 column">
        </div>
    </div>
</div>

</body>
</html>
<%--<script>--%>
<%--// 通过ID在页面上找到对象--%>
<%--var obj_username = document.getElementById("username");--%>
<%--var obj_msg = document.getElementById("msg");--%>
<%--// 离开输入框时--%>
<%--obj_username.onblur = function () {--%>
<%--// alert("onblur");--%>
<%--// alert(obj_username.value);--%>
<%--// 1 创建xmlHttp对象--%>
<%--xmlhttp = new XMLHttpRequest();--%>
<%--// 2 监控readystate--%>
<%--xmlhttp.onreadystatechange = function () {--%>
<%--if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {--%>
<%--//                alert(xmlhttp.responseText);--%>
<%--//                alert(xmlhttp.responseText.length);--%>
<%--if (xmlhttp.responseText == "\"yes\"") {--%>
<%--obj_msg.innerHTML = "该用户名已存在，请重新输入";--%>
<%--obj_msg.style.color = "red";--%>

<%--// 如果已经存在，强制焦点定位到输入框--%>
<%--obj_username.focus();--%>
<%--} else {--%>
<%--obj_msg.innerHTML = "可以注册";--%>
<%--// obj_msg.style.fontSize=8;--%>
<%--obj_msg.style.color = "green";--%>
<%--}--%>
<%--obj_msg.style.fontSize = 8;--%>
<%--}--%>
<%--}--%>
<%--// 3 请求信息--%>
<%--xmlhttp.open("GET", "/user/isExist/" + obj_username.value, true);--%>
<%--// 4 发起请求--%>
<%--xmlhttp.send();--%>
<%--}--%>
<%--</script>--%>


<script>
    var $inputVal = $("#username");
    var $msg = $("#msg");
    $inputVal.blur(function (event) {
        $.ajax({
            url: '/user/isExist',
            type: 'GET',
            data: {'username': $inputVal.val()},
            dataType: 'JSON',
            success: function (res, status, xhr) {
                if (res == "yes") {
                    $msg.html("该用户名已存在，请重新输入").css("color", "red");
                    <%--// 如果已经存在，强制焦点定位到输入框--%>
                    $inputVal.focus();
                } else {
                    $msg.html("可以注册").css("color", "green");
                }
            },
            error: function () {
                alert("error");
            }
        });
    });

    var $inputPas = $("#password");
    var $reInputPas = $("#repassword");
    var $passinfo = $("#passinfo");
    $reInputPas.blur(function (event) {
//        alert($reInputPas.val());
//        alert($inputPas.val());
        if ($reInputPas.val() != $inputPas.val()) {
//            alert($reInputPas.val());
            $passinfo.html("密码不匹配").css("color", "red");
            <%--// 如果已经存在，强制焦点定位到输入框--%>
//            $reInputVal.focus();
        } else {
//            alert($inputPas.val());
            $passinfo.html("密码匹配").css("color", "green");
        }
    });
</script>


