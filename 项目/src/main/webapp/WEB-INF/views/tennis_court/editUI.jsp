<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/9/5
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>网球场地添加或修改页</title>
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
                            <%--<li><a href="/booking/booking_history" class="label">查看历史预订记录</a></li>--%>
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
            <h3><a href="/tennis_court/toManage_main" class="label label-success label-default">返回管理主页</a></h3>
            <hr>
            <h3><a href="/tennis_court/manage" class="label label-success label-default">返回网球场管理</a></h3>
        </div>
        <div class="col-md-4 column" style="background-color: #f9f9f9">
            <h1 style="text-align: center;padding: 20px">
                <small>网球场地信息</small>
            </h1>
            <hr>
            <form class="form-horizontal" role="form" method="post"
                  action="/tennis_court/doUpdate" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="court_name" class="col-sm-4 control-label">球场名称</label>
                    <div class="col-sm-8">
                        <%--隐藏id--%>
                        <input type="text" name="court_id" value="${tennis_court.court_id}" hidden>
                        <%--<input type="text" name="sellerID" value="${sessionScope.seller.id}" hidden>--%>
                        <input type="text" class="form-control" id="court_name"
                               placeholder="请输入球场名称" name="court_name" value="${tennis_court.court_name}"
                        >
                    </div>
                </div>
                <div class="form-group">
                    <label for="court_price" class="col-sm-4 control-label">场地单价</label>
                    <div class="col-sm-8">
                        <input type="number" class="form-control" id="court_price"
                               placeholder="请输入场地单价" name="court_price" value="${tennis_court.court_price}"
                        >
                    </div>
                </div>
                <div class="form-group">
                    <label for="sel_ca" class="col-sm-4 control-label">所属分类</label>
                    <div class="col-sm-8">
                        <select name="category_id" id="sel_ca" class="form-control">
                        </select>
                    </div>
                </div>
                <%--<div class="form-group">--%>
                    <%--<label class="col-sm-4 control-label">商品图片</label>--%>
                    <%--<div class="col-sm-8">--%>
                        <%--<image src="/upload/${goods.image}" width="50px" height="50px"/>--%>
                        <%--<input type="file" name="uploadfile"/>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="form-group">--%>
                    <%--<label for="state" class="col-sm-4 control-label">状态</label>--%>
                    <%--<div class="col-sm-8">--%>
                        <%--<select name="state" id="state" class="form-control">--%>
                            <%--<option value="0"--%>
                                    <%--<c:if test="${goods.state=='0'}">--%>
                                        <%--selected="selected"--%>
                                    <%--</c:if>--%>
                            <%-->在售--%>
                            <%--</option>--%>
                            <%--<option value="1"--%>
                                    <%--<c:if test="${goods.state=='1'}">--%>
                                        <%--selected="selected"--%>
                                    <%--</c:if>--%>
                            <%-->下架--%>
                            <%--</option>--%>
                            <%--<option value="2"--%>
                                    <%--<c:if test="${goods.state=='2'}">--%>
                                        <%--selected="selected"--%>
                                    <%--</c:if>--%>
                            <%-->缺货--%>
                            <%--</option>--%>
                        <%--</select>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <div class="form-group">
                    <div class="col-sm-offset-0 col-sm-12 btn-block">
                        <c:choose>
                            <c:when test="${empty tennis_court.category_id}">
                                <input type="submit" value="添加球场信息" class="btn btn-success btn-block"/>
                            </c:when>
                            <c:otherwise>
                                <input type="submit" value="球场信息修改" class="btn btn-success btn-block"/>
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
            var da=JSON_data_ca.data;
            //        遍历对象，生成OPTION,添加OPTION到select
            for (var i = 0; i <da.length; i++) {
                $("#sel_ca").append("<option value='"+da[i].category_id+"'>"+da[i].category_name+"</option>");
            }
        }
    });//end of jquery;
</script>


