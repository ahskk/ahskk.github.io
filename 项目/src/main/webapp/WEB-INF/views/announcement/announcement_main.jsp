<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/9/27
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <%--<script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>--%>
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
                        <li><a href="/index.jsp">主页</a></li>
                        <li class="active"><a href="/announcement/toAnnouncement_main" class="label">公告</a></li>
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
        <div class="col-md-3 column">
        </div>
        <div class="col-md-6 column" style="background-color: ghostwhite">
            <h1 style="text-align: center;padding: 10px">
                <small>公告</small>
            </h1>
            <div class="list-group">

                <%--<a class="list-group-item">--%>
                <%--<h4 class="list-group-item-heading" id="list1" data-toggle="modal" data-target="#myModal">--%>

                <%--</h4>--%>
                <%--</a>--%>
                <div id="group"></div>

            </div>
        </div>
        <div class="col-md-3 column">
        </div>
    </div>
</div>


<%--<h2>创建模态框（Modal）</h2>--%>
<!-- 按钮触发模态框 -->
<%--<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">--%>
<%--开始演示模态框--%>
<%--</button>--%>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                </h4>
            </div>
            <div class="modal-body">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <%--<button type="button" class="btn btn-primary">--%>
                <%--提交更改--%>
                <%--</button>--%>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

</body>
</html>
<script>
    $(document).ready(function () {
        var a;
        $.ajax({
            data: {},
            type: 'POST',
            dataType: 'json',
            url: '/announcement/getannoutcement',
            error: function () {
                alert("error");
            },
            success: function (res, status, xhr) {
//                    alert(res);
                a = JSON.parse(res);
                var b = "";
//                $(list).html(a.data[0]['announcement_title']);
                for (i = 0; i < a.data.length; i++) {
                    var str = a.data[a.data.length - i - 1]['create_date'];
                    b += "    <a class=\"list-group-item\">\n" +
                        "        <h4 class=\"list-group-item-heading\" id=\"" + i + "\" data-toggle=\"modal\" data-target=\"#myModal\">\n" +
                        "标题：" + a.data[a.data.length - i - 1]['announcement_title'] + "<span style=\"float:right\">" + "日期：" +getMyDate(str) + "</span>"+ "\n" +
                        "        </h4>\n" +
                        "    </a>\n";
//                   alert($("#list+i"));
                    function getMyDate(str){
                        var oDate = new Date(str),
                            oYear = oDate.getFullYear(),
                            oMonth = oDate.getMonth()+1,
                            oDay = oDate.getDate(),
                            oHour = oDate.getHours(),
                            oMin = oDate.getMinutes(),
                            oSen = oDate.getSeconds(),
                            oTime = oYear +'-'+ getzf(oMonth) +'-'+ getzf(oDay);//最后拼接时间
                        return oTime;
                    };
                    //补0操作
                    function getzf(num){
                        if(parseInt(num) < 10){
                            num = '0'+num;
                        }
                        return num;
                    }
                }
                $("#group").html(b + "");
                $(".list-group-item-heading").click(function (event) {
//            alert("aa");
//            alert(a.data[0]['announcement_title']);
//                    alert(this.id);
                    $("#myModalLabel").html(a.data[a.data.length - this.id - 1]['announcement_title']);
//            alert($("#myModalLabel").html());
                    $(".modal-body").html(a.data[a.data.length - this.id - 1]['announcement_content']);
                })
//                var list = "#list"+"1";
//                document.getElementsByClassName("list-group-item-heading")[1].html(a.data[0]['announcement_title']);
//                $(list).html(a.data[0]['announcement_title']);
            }
        });

//        $(".list-group-item-heading").each(function () {
//            $(this).html(a.data[0]['announcement_title']);
//        })
//        $(".list-group-item-heading").innerHTML=(a.data[0]['announcement_title']);


    })
</script>