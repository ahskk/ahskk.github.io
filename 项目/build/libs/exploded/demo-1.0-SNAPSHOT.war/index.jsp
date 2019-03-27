<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Tennis Club Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
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

<!-- header -->
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
                        <%--<li class="dropdown active">--%>
                            <%--<a class="dropdown-toggle" data-toggle="dropdown" href="index.jsp">Home<span class="caret"></span></a>--%>
                            <%--<ul class="dropdown-menu">--%>
                                <%--<li><a href="#about" class="scroll">About</a></li>--%>
                                <%--<li><a href="#gallery" class="scroll">Photo Gallery</a></li>--%>
                                <%--<li><a href="#contact" class="scroll">Contact Us</a></li>--%>
                            <%--</ul>--%>
                        </li>
                        <li><a href="/announcement/toAnnouncement_main" class="label">公告</a></li>
                        <li><a href="/booking/toBooking_main" class="label">预约</a></li>
                        <li><a href="#gallery" class="scroll">图片集</a></li>
                        <li><a href="#contact" class="scroll">联系我们</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </nav>
        </div>
    </div>
</div>
<!-- //header -->
<!-- banner -->
<div class="banner">
    <div class="container">
        <div class="banners-info">
            <section class="slider">
                <div class="flexslider">
                    <ul class="slides">
                        <li>
                            <div class="banner1">
                            </div>
                        </li>
                        <li>
                            <div class="banner2">
                            </div>
                        </li>
                        <li>
                            <div class="banner3">
                            </div>
                        </li>
                    </ul>
                </div>
            </section>
            <!-- script -->
            <script defer src="/js/jquery.flexslider.js"></script>
            <script type="text/javascript">
                $(window).load(function () {
                    $('.flexslider').flexslider({
                        animation: "slide",
                        start: function (slider) {
                            $('body').removeClass('loading');
                        }
                    });
                });
            </script>
            <!-- //script -->
        </div>
    </div>
</div>
<!-- //banner -->
<!-- banner-bottom -->
<div id="about" class="banner-bottom">
    <div class="container">
        <h3>最新公告</h3>
        <%--<p class="ex">To take a trivial example, which of us ever undertakes.</p>--%>
        <div class="banner-bottom-grids">
            <div class="col-md-4 banner-bottom-grid">
                <div class="banner-bottom-grid-rel">
                    <p>01.</p>
                    <div class="banner-bottom-grid-rel-pos">
                        <p id="0"></p>
                        <div class="more">
                            <a href="/announcement/toAnnouncement_main" class="hvr-overline-from-right">查看更多</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 banner-bottom-grid">
                <div class="banner-bottom-grid-rel">
                    <p>02.</p>
                    <div class="banner-bottom-grid-rel-pos">
                        <p id="1"></p>
                        <div class="more">
                            <a href="/announcement/toAnnouncement_main" class="hvr-overline-from-right">查看更多</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 banner-bottom-grid">
                <div class="banner-bottom-grid-rel">
                    <p>03.</p>
                    <div class="banner-bottom-grid-rel-pos">
                        <p id="2"></p>
                        <div class="more">
                            <a href="/announcement/toAnnouncement_main" class="hvr-overline-from-right">查看更多</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //banner-bottom -->
<!-- features -->
<%--<div class="features">--%>
    <%--<div class="container">--%>
        <%--<div class="features-grids">--%>
            <%--<div class="features-grid-left">--%>
                <%--<h1>aut perferendis maiores</h1>--%>
                <%--<h2>Hic tenetur a sapiente delectus</h2>--%>
                <%--<p>No one rejects, dislikes, or avoids pleasure itself, because it is--%>
                    <%--pleasure, but because those who do not know how to pursue pleasure--%>
                    <%--rationally encounter consequences that are extremely painful.</p>--%>
                <%--<ul>--%>
                    <%--<li><a href="#" class="facebook"></a></li>--%>
                    <%--<li><a href="#" class="in"></a></li>--%>
                    <%--<li><a href="#" class="p"></a></li>--%>
                    <%--<li><a href="#" class="dribble"></a></li>--%>
                <%--</ul>--%>
            <%--</div>--%>
            <%--<div class="features-grid-right">--%>
                <%--<div class="features-grid-right-text">--%>
                    <%--<h4>Tennis Player</h4>--%>
                    <%--<p>Encounter consequences that are extremely painful.</p>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="clearfix"></div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
<!-- //features -->
<!-- services -->
<div id="services" class="services">
    <div class="container">
        <%--<h3>Services</h3>--%>
        <%--<p class="ex">To take a trivial example, which of us ever undertakes.</p>--%>
        <%--<div class="services-grids">--%>
            <%--<div class="col-md-4 services-grid">--%>
                <%--<div class="col-xs-4 services-grid-left">--%>
                    <%--<span class="glyphicon glyphicon-star" aria-hidden="true"></span>--%>
                <%--</div>--%>
                <%--<div class="col-xs-8 services-grid-right">--%>
                    <%--<h4>sint et molestiae</h4>--%>
                    <%--<p>Temporibus autem quibusdam et aut officiis debitis aut rerum.</p>--%>
                <%--</div>--%>
                <%--<div class="clearfix"></div>--%>
            <%--</div>--%>
            <%--<div class="col-md-4 services-grid">--%>
                <%--<div class="col-xs-4 services-grid-left">--%>
                    <%--<span class="glyphicon glyphicon-tint" aria-hidden="true"></span>--%>
                <%--</div>--%>
                <%--<div class="col-xs-8 services-grid-right">--%>
                    <%--<h4>Officiis molestiae</h4>--%>
                    <%--<p>Temporibus autem quibusdam et aut officiis debitis aut rerum.</p>--%>
                <%--</div>--%>
                <%--<div class="clearfix"></div>--%>
            <%--</div>--%>
            <%--<div class="col-md-4 services-grid">--%>
                <%--<div class="col-xs-4 services-grid-left">--%>
                    <%--<span class="glyphicon glyphicon-screenshot" aria-hidden="true"></span>--%>
                <%--</div>--%>
                <%--<div class="col-xs-8 services-grid-right">--%>
                    <%--<h4>Debitis molestiae</h4>--%>
                    <%--<p>Temporibus autem quibusdam et aut officiis debitis aut rerum.</p>--%>
                <%--</div>--%>
                <%--<div class="clearfix"></div>--%>
            <%--</div>--%>
            <%--<div class="clearfix"></div>--%>
        <%--</div>--%>
        <div class="services-grids-bottom">
            <h3>球场介绍</h3>
            <%--<p class="ex exercise">To take a trivial example, which of us ever undertakes.</p>--%>
            <div class="services-grids-bottom-grids">
                <div class="col-md-6 services-grids-bottom-grid">
                    <div class="col-xs-4 services-grids-bottom-grid-left">
                        <div class="services-grids-bottom-grid-leftrel">
                            <img src="/images/75.png" alt=" " class="img-responsive"/>
                            <%--<div class="services-grids-bottom-grid-leftpos">--%>
                                <%--<ul>--%>
                                    <%--<li><a href="#" class="facebook1"></a></li>--%>
                                    <%--<li><a href="#" class="facebook2"></a></li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>
                        </div>
                    </div>
                    <div class="col-xs-8 services-grids-bottom-grid-right">
                        <h4>篮球场</h4>
                        <p>Ipsum quia dolor sit amet, consectetur, adipisci velit, sed
                            quia non numquam eius modi tempora incidunt.</p>
                        <div class="more m1">
                            <a href="/basketball_court/toBooking_basketball" class="hvr-overline-from-right">立即预订</a>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="col-md-6 services-grids-bottom-grid">
                    <div class="col-xs-4 services-grids-bottom-grid-left">
                        <div class="services-grids-bottom-grid-leftrel">
                            <img src="/images/21.jpg" alt=" " class="img-responsive"/>
                            <%--<div class="services-grids-bottom-grid-leftpos">--%>
                                <%--<ul>--%>
                                    <%--<li><a href="#" class="facebook1"></a></li>--%>
                                    <%--<li><a href="#" class="facebook2"></a></li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>
                        </div>
                    </div>
                    <div class="col-xs-8 services-grids-bottom-grid-right">
                        <h4>网球场</h4>
                        <p>Ipsum quia dolor sit amet, consectetur, adipisci velit, sed
                            quia non numquam eius modi tempora incidunt.</p>
                        <div class="more m1">
                            <a href="/tennis_court/toBooking_tennis" class="hvr-overline-from-right">立即预订</a>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="copyrights">Collect from <a href="http://www.cssmoban.com/">网页模板</a></div>
            <div class="services-grids-bottom-grids">
                <div class="col-md-6 services-grids-bottom-grid">
                    <div class="col-xs-4 services-grids-bottom-grid-left">
                        <div class="services-grids-bottom-grid-leftrel">
                            <img src="/images/73.png" alt=" " class="img-responsive"/>
                            <%--<div class="services-grids-bottom-grid-leftpos">--%>
                                <%--<ul>--%>
                                    <%--<li><a href="#" class="facebook1"></a></li>--%>
                                    <%--<li><a href="#" class="facebook2"></a></li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>
                        </div>
                    </div>
                    <div class="col-xs-8 services-grids-bottom-grid-right">
                        <h4>羽毛球场</h4>
                        <p>Ipsum quia dolor sit amet, consectetur, adipisci velit, sed
                            quia non numquam eius modi tempora incidunt.</p>
                        <div class="more m1">
                            <a href="/badminton_court/toBooking_badminton" class="hvr-overline-from-right">立即预订</a>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <%--<div class="col-md-6 services-grids-bottom-grid">--%>
                    <%--<div class="col-xs-4 services-grids-bottom-grid-left">--%>
                        <%--<div class="services-grids-bottom-grid-leftrel">--%>
                            <%--<img src="/images/8.jpg" alt=" " class="img-responsive"/>--%>
                            <%--<div class="services-grids-bottom-grid-leftpos">--%>
                                <%--<ul>--%>
                                    <%--<li><a href="#" class="facebook1"></a></li>--%>
                                    <%--<li><a href="#" class="facebook2"></a></li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="col-xs-8 services-grids-bottom-grid-right">--%>
                        <%--<h4>voluptas nulla pariatur</h4>--%>
                        <%--<p>Ipsum quia dolor sit amet, consectetur, adipisci velit, sed--%>
                            <%--quia non numquam eius modi tempora incidunt.</p>--%>
                        <%--<div class="more m1">--%>
                            <%--<a href="#" class="hvr-overline-from-right">查看更多</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="clearfix"></div>--%>
                <%--</div>--%>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        var a;
        $.ajax({
            data: {},
            type: 'POST',
            dataType: 'json',
            url: '/announcement/getannoutcement',
            error: function () {
                alert("errorrrrrr");
            },
            success: function (res, status, xhr) {
                a = JSON.parse(res);
                $("#0").html(a.data[a.data.length-1]['announcement_title']);
                $("#1").html(a.data[a.data.length-2]['announcement_title']);
                $("#2").html(a.data[a.data.length-3]['announcement_title']);
            }
        });
    })
</script>


<!-- //services -->
<!-- team -->
<%--<div class="team">--%>
    <%--<div class="container">--%>
        <%--<h3>Meet Our Team</h3>--%>
        <%--<p class="ex">To take a trivial example, which of us ever undertakes.</p>--%>
        <%--<div class="team-grids">--%>
            <%--<section class="main">--%>
                <%--<ul class="ch-grid">--%>
                    <%--<li>--%>
                        <%--<div class="ch-item">--%>
                            <%--<div class="ch-info">--%>
                                <%--<h3>Laura Williums</h3>--%>
                                <%--<p>Tennis Player <a href="#">Load More</a></p>--%>
                            <%--</div>--%>
                            <%--<div class="ch-thumb ch-img-1"></div>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                        <%--<div class="ch-item">--%>
                            <%--<div class="ch-info">--%>
                                <%--<h3>Adom Smith</h3>--%>
                                <%--<p>Tennis Player <a href="#">Load More</a></p>--%>
                            <%--</div>--%>
                            <%--<div class="ch-thumb ch-img-2"></div>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                        <%--<div class="ch-item">--%>
                            <%--<div class="ch-info">--%>
                                <%--<h3>Devi Tara</h3>--%>
                                <%--<p>Tennis Player <a href="#">Load More</a></p>--%>
                            <%--</div>--%>
                            <%--<div class="ch-thumb ch-img-3"></div>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                <%--</ul>--%>
            <%--</section>--%>
        <%--</div>--%>
        <%--<div class="get-in-grids">--%>
            <%--<div class="get-in-grid-left">--%>
                <%--<p>Get In Touch</p>--%>
            <%--</div>--%>
            <%--<div class="get-in-grid-right">--%>
                <%--<input type="text" value="Enter Your Mail..." onfocus="this.value = '';"--%>
                       <%--onblur="if (this.value == '') {this.value = 'Enter Your Mail...';}" required="">--%>
                <%--<input type="submit" value="">--%>
            <%--</div>--%>
            <%--<div class="clearfix"></div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
<!-- //team -->
<!-- gallery -->
<div class="gallery" id="gallery">
    <div class="container">
        <h3>Photo Gallery</h3>
        <p class="ex">To take a trivial example, which of us ever undertakes.</p>
        <div class="gallery-grids">
            <div class="gallery-grid">
                <div class="gallery1">
                    <a href="/images/12.jpg" rel="title" class="b-link-stripe b-animate-go thickbox">
                        <img src="/images/12.jpg" alt=" " class="img-responsive"/>
                        <div class="textbox">
                            <h4>Sports</h4>
                        </div>
                    </a>
                </div>
                <div class="gallery1">
                    <a href="/images/79.png" rel="title" class="b-link-stripe b-animate-go  thickbox">
                        <img src="/images/79.png" alt=" " class="img-responsive"/>
                        <div class="textbox">
                            <h4 class="sport">Sports</h4>
                        </div>
                    </a>
                </div>
                <div class="gallery1">
                    <a href="/images/78.png" rel="title" class="b-link-stripe b-animate-go  thickbox">
                        <img src="/images/15.jpg" alt=" " class="img-responsive"/>
                        <div class="textbox">
                            <h4 class="sport">Sports</h4>
                        </div>
                    </a>
                </div>
            </div>
            <div class="gallery-grid">
                <div class="gallery1">
                    <a href="/images/77.png" rel="title" class="b-link-stripe b-animate-go  thickbox">
                        <img src="/images/16.jpg" alt=" " class="img-responsive"/>
                        <div class="textbox">
                            <h4 class="sport">Sports</h4>
                        </div>
                    </a>
                </div>
                <div class="gallery1">
                    <a href="/images/81.png" rel="title" class="b-link-stripe b-animate-go  thickbox">
                        <img src="/images/17.jpg" alt=" " class="img-responsive"/>
                        <div class="textbox">
                            <h4 class="sport">Sports</h4>
                        </div>
                    </a>
                </div>
                <div class="gallery1">
                    <a href="/images/18.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                        <img src="/images/18.jpg" alt=" " class="img-responsive"/>
                        <div class="textbox">
                            <h4 class="sport">Sports</h4>
                        </div>
                    </a>
                </div>
                <div class="gallery1">
                    <a href="/images/19.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                        <img src="/images/19.jpg" alt=" " class="img-responsive"/>
                        <div class="textbox">
                            <h4 class="sport">Sports</h4>
                        </div>
                    </a>
                </div>
            </div>
            <div class="gallery-grid">
                <div class="gallery1">
                    <a href="/images/76.png" rel="title" class="b-link-stripe b-animate-go  thickbox">
                        <img src="/images/20.jpg" alt=" " class="img-responsive"/>
                        <div class="textbox">
                            <h4 class="sport">Sports</h4>
                        </div>
                    </a>
                </div>
                <div class="gallery1">
                    <a href="/images/80.png" rel="title" class="b-link-stripe b-animate-go  thickbox">
                        <img src="/images/21.jpg" alt=" " class="img-responsive"/>
                        <div class="textbox">
                            <h4 class="sport">Sports</h4>
                        </div>
                    </a>
                </div>
                <div class="gallery1">
                    <a href="/images/13.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                        <img src="/images/13.jpg" alt=" " class="img-responsive"/>
                        <div class="textbox">
                            <h4>Sports</h4>
                        </div>
                    </a>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //gallery -->
<!--contact-->
<div id="contact" class="contact">
    <div class="container">
        <h3>与我们联系</h3>
        <%--<p class="ex">To take a trivial example, which of us ever undertakes.</p>--%>
        <div class="contact-grids">
            <div class="col-md-7 contact-right">
                <form>
                    <input type="text" value="Name" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = 'Name';}" required="">
                    <input type="email" value="Email" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = 'Email';}" required="">
                    <input type="text" value="Telephone" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = 'Telephone';}" required="">
                    <textarea onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}"
                              required>你想说些什么...</textarea>
                    <input type="submit" value="提交">
                </form>
            </div>
            <div class="col-md-5 contact-left">
                <%--<p>"Lorem Ipsum"is the common name dummy text often used in the design, printing, and type setting--%>
                    <%--industriescommon name dummy text often used in the design, printing, and type setting industries.--%>
                    <%--"</p>--%>
                <ul>
                    <li><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                        地址
                    </li>
                    <li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
                        联系电话：12345678900
                    </li>
                    <li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                        <a href="mailto:example@mail.com">mail@example.com</a>
                    </li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--//contact-->
<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="footer-grids">
            <div class="footer-grid-left">
                <p>&copy; 2018.运动场地预订系统</p>
            </div>
            <%--<div class="footer-grid-right">--%>
            <%--<ul>--%>
            <%--<li><a href="#" class="facebook"></a></li>--%>
            <%--<li><a href="#" class="in"></a></li>--%>
            <%--<li><a href="#" class="p"></a></li>--%>
            <%--<li><a href="#" class="dribble"></a></li>--%>
            <%--</ul>--%>
            <%--</div>--%>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //footer -->
<!-- for bootstrap working -->
<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function () {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear' 
            };
        */

        $().UItoTop({easingType: 'easeOutQuart'});

    });
</script>
<!-- //here ends scrolling icon -->
</body>
</html>