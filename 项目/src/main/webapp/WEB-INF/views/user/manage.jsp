<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/9/5
  Time: 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户管理</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
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
<body style="background: #f9f9f9">
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

<h1 style="text-align: center;padding: 10px">
    <small>用户管理</small>
</h1>
<h3><a href="/user/toManage_main" class="label label-success label-default">返回管理主页</a></h3>
<hr>
<%--查询form--%>
<form class="form-inline" role="form" method="post" action="/user/findByProp">
    注册时间
    <div class="form-group">
        <label class="sr-only" for="beginDate">请选择起始日期</label>
        <input type="date" class="form-control" name="beginDate" id="beginDate" placeholder="请选择起始日期">
    </div>
    <div class="form-group">
        到
        <label class="sr-only" for="endDate">请选择终止日期</label>
        <input type="date" class="form-control" name="endDate" id="endDate" placeholder="请选择终止日期">
    </div>
    <button type="submit" id="search" name="search" class="btn btn-search">查询</button>
</form>
<hr>
<%--数据表格展示区--%>
<div class="table-responsive">
    <table class="table table-hover table-striped">
        <thead>
        <tr>
            <th>用户编号</th>
            <th>用户姓名</th>
            <th>用户名</th>
            <th>联系电话</th>
            <th>身份证号</th>
            <th>注册时间</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${content.data}" var="u">
        <%--<c:forEach items="${content.lists}" var="u">--%>
            <%--<c:forEach items="${pageinfo.list}" var="d">--%>
            <tr>
                <td>${u.user_id}</td>
                <td>${u.realname}</td>
                <td>${u.username}</td>
                <td>${u.phone}</td>
                <td>${u.id_num}</td>
                <td>${u.regdate}</td>
                    <%--<td>--%>
                    <%--<a href="/user/toEdit/${u.user_id}"--%>
                    <%--class="label label-danger large">修改--%>
                    <%--</a>--%>
                    <%--</td>--%>
                <td>
                    <a href="/user/delete/${u.user_id}"
                       class="label label-danger large">删除
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<%--数据展示表格结束--%>

<table border="0" cellspacing="0" cellpadding="0" width="900px">
    <tr>
        <td class="td2">
            <span>第${content.currPage }/ ${content.totalPage}页</span>
            <span>总记录数：${content.totalCount }  每页显示:${content.pageSize}</span>
            <span>
            <c:if test="${content.currPage != 1}">
                <a href="${content.contextPath }/user/findByProp?currentPage=1&BeginDate=${condition.beginDate}&EndDate=${condition.endDate}">[首页]</a>
                <a href="${content.contextPath }/user/findByProp?currentPage=${content.currPage-1}&BeginDate=${condition.beginDate}&EndDate=${condition.endDate}">[上一页]</a>
            </c:if>

            <c:if test="${content.currPage != content.totalPage}">
                <a href="${content.contextPath }/user/findByProp?currentPage=${content.currPage+1}&BeginDate=${condition.beginDate}&EndDate=${condition.endDate}">[下一页]</a>
                <a href="${content.contextPath }/user/findByProp?currentPage=${content.totalPage}&BeginDate=${condition.beginDate}&EndDate=${condition.endDate}">[尾页]</a>
            </c:if>
            </span>
        </td>
    </tr>
</table>

</body>
</html>

<%--<body>--%>
<%--欢迎你：${currentUser}--%>
<%--<br>--%>
<%--&lt;%&ndash; 当前用户：${pageScope.currentUser}<!-- (只能在同一个页面中使用) --> <br>--%>
<%--当前用户：${requestScope.currentUser}-${roleName} 有重定向数据就访问不到<br>--%>
<%--当前用户：${sessionScope.currentUser}-${roleName} 可以使用<br> &ndash;%&gt;--%>
<%--<hr>--%>
<%--<a href="add"> 添加用户</a><br>--%>
<%--<c:if test="${empty content}">--%>
    <%--没有任何用户信息！--%>
<%--</c:if>--%>
<%--<c:if test="${!empty content}">--%>
    <%--<table border="1" cellpadding="10" cellspacing="0" class="table1">--%>
        <%--<thead>--%>
        <%--<tr>--%>
            <%--<td>编号</td>--%>
            <%--<td>用户名</td>--%>
            <%--<td>密码</td>--%>
            <%--<td>邮件</td>--%>
            <%--<td>联系电话</td>--%>
            <%--<td>职位</td>--%>
            <%--<td>Edit</td>--%>
            <%--<td>Delete</td>--%>
        <%--</tr>--%>
        <%--</thead>--%>
        <%--<c:forEach items="${content.lists}" var="u">--%>
            <%--<tr>--%>
                <%--<th>${u.user_id }</th>--%>
                <%--<th>${u.username }</th>--%>
                <%--<th>${u.password }</th>--%>
                <%--<th>${u.email }</th>--%>
                <%--<th>${u.phone }</th>--%>
                <%--<th>${u.rolename }</th>--%>
                <%--<th><a href="edit?id=${u.user_id}">Edit</a></th>--%>
                <%--<th><a href="delete?id=${u.user_id}" onclick="return confirm('确定要删除吗')">Delete</a></th>--%>
            <%--</tr>--%>
        <%--</c:forEach>--%>
    <%--</table>--%>
<%--</c:if>--%>

<%--<table border="0" cellspacing="0" cellpadding="0" width="900px">--%>
    <%--<tr>--%>

        <%--<td class="td2">--%>


            <%--<span>第${content.currPage }/ ${content.totalPage}页</span>--%>
            <%--<span>总记录数：${content.totalCount }  每页显示:${content.pageSize}</span>--%>
            <%--<span>--%>
       <%--<c:if test="${content.currPage != 1}">--%>
           <%--<a href="${content.contextPath }/user/manage?currentPage=1">[首页]</a>--%>
           <%--<a href="${content.contextPath }/user/manage?currentPage=${content.currPage-1}">[上一页]</a>--%>
       <%--</c:if>--%>

       <%--<c:if test="${content.currPage != content.totalPage}">--%>
           <%--<a href="${content.contextPath }/user/manage?currentPage=${content.currPage+1}">[下一页]</a>--%>
           <%--<a href="${content.contextPath }/user/manage?currentPage=${content.totalPage}">[尾页]</a>--%>
       <%--</c:if>--%>
   <%--</span>--%>
        <%--</td>--%>
    <%--</tr>--%>
<%--</table>--%>
<%--</body>--%>


<%--<script>--%>
<%--//    $inputVal.blur(function (event) {--%>
<%--$(function () {--%>
<%--//        alert("aaaa");--%>
<%--$.ajax({--%>
<%--url: '/user/manage',--%>
<%--type: 'GET',--%>
<%--dataType: 'JSON',--%>
<%--success: function (res, status, xhr) {--%>
<%--var a=JSON.parse(res);--%>
<%--alert(a);--%>
<%--alert(a.data.length);--%>
<%--var html = '';--%>
<%--for(var i = 0;i<a.data.length;i++){--%>
<%--////                    alert(i);--%>
<%--var username = a.data[i]['username'];--%>
<%--$("#username").innerHTML ="qweqw";--%>
<%--alert(username);--%>
<%--//                    data1[i] = {user_id:user_id};--%>

<%--//                    html = html + '<tr>';--%>
<%--//                    html = html + '<td id="user_id">' + a.data[i]['user_id'] + '</td>';--%>
<%--//                    html = html + '<td id="realname">' + a.data[i]['realname'] + '</td>';--%>
<%--//                    html = html + '<td id="username">' + a.data[i]['username'] + '</td>';--%>
<%--//                    html = html + '</tr>';--%>
<%--}--%>
<%--//                $('#table table-hover').append(html);--%>
<%--},--%>
<%--error: function () {--%>
<%--alert("error");--%>
<%--}--%>
<%--});--%>
<%--});--%>
<%--//    })--%>
<%--</script>--%>