<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/9/20
  Time: 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>公告管理</title>
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

<h1 style="text-align: center;padding: 10px">
    <small>公告管理</small>
</h1>
<h3><a href="/announcement/toManage_main" class="label label-success label-default">返回管理主页</a></h3>
<hr>
<%--数据表格展示区--%>
<table class="table table-hover table-striped">
    <thead>
    <tr>
        <th>公告编号</th>
        <th>公告标题</th>
        <th>公告内容</th>
        <th>创建日期</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${content.data}" var="a">
        <%--<c:forEach items="${pageinfo.list}" var="d">--%>
        <tr>
            <td>${a.announcement_id}</td>
            <td>${a.announcement_title}</td>
            <td>${a.announcement_content}</td>
            <td>${a.create_date}</td>
            <td>
                <a href="/announcement/toAnnouncement_edit/${a.announcement_id}"
                   class="label label-danger large">修改
                </a>
            </td>
            <td>
                <a href="/announcement/delete/${a.announcement_id}"
                   class="label label-danger large">删除
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<%--<table border="0" cellspacing="0" cellpadding="0" width="900px">--%>
    <%--<tr>--%>
        <%--<td class="td2">--%>
            <%--<span>第${requestScope.pagemsg.currPage }/ ${requestScope.pagemsg.totalPage}页</span>--%>
            <%--<span>总记录数：${requestScope.pagemsg.totalCount }  每页显示:${requestScope.pagemsg.pageSize}</span>--%>
            <%--<span>--%>
                <%--<c:if test="${requestScope.pagemsg.currPage != 1}">--%>
                    <%--<a href="${pageContext.request.contextPath }/user/manage?currentPage=1">[首页]</a>--%>
                    <%--<a href="${pageContext.request.contextPath }/user/manage?currentPage=${requestScope.pagemsg.currPage-1}">[上一页]</a>--%>
                <%--</c:if>--%>

                <%--<c:if test="${requestScope.pagemsg.currPage != requestScope.pagemsg.totalPage}">--%>
                    <%--<a href="${pageContext.request.contextPath }/user/manage?currentPage=${requestScope.pagemsg.currPage+1}">[下一页]</a>--%>
                    <%--<a href="${pageContext.request.contextPath }/user/manage?currentPage=${requestScope.pagemsg.totalPage}">[尾页]</a>--%>
                <%--</c:if>--%>
            <%--</span>--%>
        <%--</td>--%>
    <%--</tr>--%>
<%--</table>--%>

<h3>
    <a href="/announcement/toAnnouncement_add" class="label label-success label-lg">添加</a>
</h3>

</body>
</html>
