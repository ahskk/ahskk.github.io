<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/9/6
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>预订信息管理</title>
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
    <small>订单管理</small>
</h1>
<h3><a href="/booking/toManage_main" class="label label-success label-default">返回管理主页</a></h3>
<hr>
<%--查询form--%>

<form class="form-inline" role="form" method="post" action="/booking/findByProp">
    所属分类
    <div class="form-group">
        <label for="sel_ca" class="col-sm-2 control-label"></label>
        <select name="category_name" id="sel_ca" class="form-control">
            <option></option>
        </select>
    </div>
    <%--<button type="submit" id="search_c" name="search_c" class="btn btn-search">查询分类</button>--%>
<%--</form>--%>
<%--<form class="form-inline" role="form" method="post" action="/booking/findByProp">--%>
    订单创建日期
    <div class="form-group">
        <label class="sr-only" for="beginDate">请选择起始日期</label>
        <input type="date" class="form-control" name="beginDate" id="beginDate" placeholder="请选择起始日期">
    </div>
    <div class="form-group">
        到
        <label class="sr-only" for="endDate">请选择终止日期</label>
        <input type="date" class="form-control" name="endDate" id="endDate" placeholder="请选择终止日期">
    </div>
    <%--<button type="submit" id="search" name="search" class="btn btn-search">查询订单创建日期</button>--%>
<%--</form>--%>
<%--<form class="form-inline" role="form" method="post" action="/booking/findByProp">--%>
    预订日期
    <div class="form-group">
        <label class="sr-only" for="beginBookingDate">请选择起始日期</label>
        <input type="date" class="form-control" name="beginBookingDate" id="beginBookingDate" placeholder="请选择起始日期">
    </div>
    <div class="form-group">
        到
        <label class="sr-only" for="endBookingDate">请选择终止日期</label>
        <input type="date" class="form-control" name="endBookingDate" id="endBookingDate" placeholder="请选择终止日期">
    </div>
    <button type="submit" id="search_b" name="search_b" class="btn btn-search">查询</button>
</form>
<hr>
<%--数据表格展示区--%>
<div class="table-responsive">
    <table class="table table-hover table-striped">
        <thead>
        <tr>
            <th>预订编号</th>
            <th>用户编号</th>
            <th>预订人姓名</th>
            <th>预订人电话</th>
            <th>场地类型</th>
            <th>场地名称</th>
            <th>订单创建日期</th>
            <th>预订日期</th>
            <th>预订时间段</th>
            <%--<th>预订价格</th>--%>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${content.data}" var="b">
        <%--<c:forEach items="${requestScope.pagemsg.lists}" var="b">--%>
        <%--<c:forEach items="${requestScope.data}" var="b">--%>
            <%--<c:forEach items="${pageinfo.list}" var="d">--%>
            <tr>
                <td>${b.order_id}</td>
                <td>${b.user_id}</td>
                <td>${b.realname}</td>
                <td>${b.phone}</td>
                <td>${b.category_name}</td>
                <td>${b.court_name}</td>
                <td>${b.create_date}</td>
                <td>${b.booking_date}</td>
                <td>${b.booking_time}</td>
                <%--<td>${b.booking_price}</td>--%>
                <td>
                    <a href="/booking/delete/${b.order_id}"
                       class="label label-danger large">删除
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<%--数据展示表格结束--%>

<%--<table border="0" cellspacing="0" cellpadding="0" width="900px">--%>
    <%--<tr>--%>
        <%--<td class="td2">--%>
            <%--<span>第${requestScope.pagemsg.currPage }/ ${requestScope.pagemsg.totalPage}页</span>--%>
            <%--<span>总记录数：${requestScope.pagemsg.totalCount }  每页显示:${requestScope.pagemsg.pageSize}</span>--%>
            <%--<span>--%>
                <%--<c:if test="${requestScope.pagemsg.currPage != 1}">--%>
                    <%--<a href="${pageContext.request.contextPath }/booking/manage?currentPage=1">[首页]</a>--%>
                    <%--<a href="${pageContext.request.contextPath }/booking/manage?currentPage=${requestScope.pagemsg.currPage-1}">[上一页]</a>--%>
                <%--</c:if>--%>

                <%--<c:if test="${requestScope.pagemsg.currPage != requestScope.pagemsg.totalPage}">--%>
                    <%--<a href="${pageContext.request.contextPath }/booking/manage?currentPage=${requestScope.pagemsg.currPage+1}">[下一页]</a>--%>
                    <%--<a href="${pageContext.request.contextPath }/booking/manage?currentPage=${requestScope.pagemsg.totalPage}">[尾页]</a>--%>
                <%--</c:if>--%>
            <%--</span>--%>
        <%--</td>--%>
    <%--</tr>--%>
<%--</table>--%>


<table border="0" cellspacing="0" cellpadding="0" width="900px">
    <tr>
        <td class="td2">
            <span>第${content.currPage }/ ${content.totalPage}页</span>
            <span>总记录数：${content.totalCount }  每页显示:${content.pageSize}</span>
            <span>
                <c:if test="${content.currPage != 1}">
                    <a href="${content.contextPath }/booking/findByProp?currentPage=1&Category_name=${condition.category_name}&BeginDate=${condition.beginDate}&EndDate=${condition.endDate}&BeginBookingDate=${condition.beginBookingDate}&EndBookingDate=${condition.endBookingDate}">[首页]</a>
                    <a href="${content.contextPath }/booking/findByProp?currentPage=${content.currPage-1}&Category_name=${condition.category_name}&BeginDate=${condition.beginDate}&EndDate=${condition.endDate}&BeginBookingDate=${condition.beginBookingDate}&EndBookingDate=${condition.endBookingDate}">[上一页]</a>
                </c:if>

                <c:if test="${content.currPage != content.totalPage}">
                    <a href="${content.contextPath }/booking/findByProp?currentPage=${content.currPage+1}&Category_name=${condition.category_name}&BeginDate=${condition.beginDate}&EndDate=${condition.endDate}&BeginBookingDate=${condition.beginBookingDate}&EndBookingDate=${condition.endBookingDate}">[下一页]</a>
                    <a href="${content.contextPath }/booking/findByProp?currentPage=${content.totalPage}&Category_name=${condition.category_name}&BeginDate=${condition.beginDate}&EndDate=${condition.endDate}&BeginBookingDate=${condition.beginBookingDate}&EndBookingDate=${condition.endBookingDate}">[尾页]</a>
                </c:if>
            </span>
        </td>
    </tr>
</table>


</body>
</html>
<script>
    $(function () {
        //jquery找对象
        var $obj_sel_ca = $("#sel_ca");
        //    查找web本地存储有无分类数据
        var data_ca = localStorage.getItem("categoryData");
        //    如果没有数据，异步调用远程数据，显示数据，如果有，直接显示数据;
        if (data_ca == null) {
            get_data_ca();
            show_data_ca();
        } else {
//            get_data_ca();
            show_data_ca();
        }

        //    异步调用数据
        function get_data_ca() {
            $.ajax({
                url: '/category/getData',
                type: 'GET',
                dataType: 'json',
                success: function (response, status, xhr) {
//                    alert(response);
                    //      将返回的数据存储到本地web存储
                    localStorage.setItem("categoryData", response);
//                    alert(response.data.category_id);
                },
                error: function () {
                    alert("getCaDataError");
                }
            });
        }

        //    异步调用数据
        function show_data_ca() {
            //      得到本地web存储中的key
            var data_ca = localStorage.getItem("categoryData");
//            alert(data_ca)
            //   将JSON串转换成JSON对象
            var JSON_data_ca = JSON.parse(data_ca);
//            alert(JSON_data_ca)
            var da = JSON_data_ca.data;
            //        遍历对象，生成OPTION,添加OPTION到select
            for (var i = 0; i < da.length; i++) {
                $("#sel_ca").append("<option value='" + da[i].category_name + "'>" + da[i].category_name + "</option>");
            }
        }
    });//end of jquery;
</script>

