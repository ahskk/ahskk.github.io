<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/9/25
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>篮球场地添加或修改页</title>
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

<div class="container">
    <div class="row clearfix">
        <div class="col-md-4 column">
            <hr>
            <h3><a href="/category/toManage_main" class="label label-success label-default">返回管理主页</a></h3>
            <hr>
            <h3><a href="/category/manage" class="label label-success label-default">返回分类管理</a></h3>
        </div>
        <div class="col-md-4 column" style="background-color: #f9f9f9">
            <h1 style="text-align: center;padding: 20px">
                <small>分类信息</small>
            </h1>
            <hr>
            <form class="form-horizontal" role="form" method="post"
                  action="/category/doUpdate" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="category_name" class="col-sm-4 control-label">分类名称</label>
                    <div class="col-sm-8">
                        <%--隐藏id--%>
                        <input type="text" name="category_id" value="${category.category_id}" hidden>
                        <%--<input type="text" name="sellerID" value="${sessionScope.seller.id}" hidden>--%>
                        <input type="text" class="form-control" id="category_name"
                               placeholder="请输入分类名称" name="category_name" value="${category.category_name}"
                        >
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-0 col-sm-12 btn-block">
                        <c:choose>
                            <c:when test="${empty category.category_id}">
                                <input type="submit" value="添加分类信息" class="btn btn-success btn-block"/>
                            </c:when>
                            <c:otherwise>
                                <input type="submit" value="球场分类修改" class="btn btn-success btn-block"/>
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