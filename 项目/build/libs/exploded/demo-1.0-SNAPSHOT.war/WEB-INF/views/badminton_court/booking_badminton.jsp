<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta charset="utf-8">
    <title>羽毛球场地预订页</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
        <div class="col-md-7 column" style="background-color: #f9f9f9">
            <h1 style="text-align: center;padding: 20px">
                <small>羽毛球场预订</small>
            </h1>
            <table cellpadding="0" cellspacing="5" border="0" class="tit">
                <tr>
                    <td>注：</td>
                    <td><span class="sp1"></span></td>
                    <td>可预订</td>
                    <td><span class="sp2"></span></td>
                    <td>已预订</td>
                    <td><span class="sp3"></span></td>
                    <td>您选择的场次</td>
                    <td><span class="sp4"></span></td>
                    <td>不可预订的场次</td>
                </tr>
            </table>
            <div class="btn-group" data-toggle="buttons" style="padding: 10px">
                <button class="btn btn-primary" name="date" onclick="changeDate(1)" id="date1"></button>
                <button class="btn btn-primary" name="date" onclick="changeDate(2)" id="date2"></button>
                <button class="btn btn-primary" name="date" onclick="changeDate(3)" id="date3"></button>
                <button class="btn btn-primary" name="date" onclick="changeDate(4)" id="date4"></button>
                <button class="btn btn-primary" name="date" onclick="changeDate(5)" id="date5"></button>
                <button class="btn btn-primary" name="date" onclick="changeDate(6)" id="date6"></button>
                <button class="btn btn-primary" name="date" onclick="changeDate(7)" id="date7"></button>
            </div>

            <style>
                .tit {
                    height: 50px;
                }

                .tit span {
                    width: 23px;
                    height: 13px;
                    display: block;
                    margin-left: 10px
                }

                .tit .sp1 {
                    border: solid 1px #b4d3eb;
                    background: #faebd7;
                }

                .tit .sp2 {
                    border: solid 1px #ac2b0c;
                    background: #ef581f;
                }

                .tit .sp3 {
                    border: solid 1px #176908;
                    background: #47a137;
                }

                .tit .sp4 {
                    border: solid 1px #999999;
                    background: #666666;
                }

                .floatleft {
                    display: inline;
                    float: left;
                }

                .floatright {
                    float: right;
                }

                .showtab {
                    width: 630px;
                    height: auto !important;
                    background: #FFF;
                    min-height: 21px;
                    height: 210px;
                    border-left: solid 1px #e4e4e4;
                    border-top: solid 1px #e4e4e4;
                    margin-top: 10px;
                    display: none;
                }

                .showtab dt,
                .Box5 .sendTab .showtab dd {
                    height: 30px;
                }

                .showtab span {
                    width: 82px;
                    height: 23px;
                    background: #ebebeb;
                    border: solid 1px #ebebeb;
                    margin: 0 6px 5px 0;
                    line-height: 23px;
                    text-align: center;
                }

                .showtab .sp0 {
                    background: antiquewhite repeat-x;
                    cursor: pointer;
                }

                .showtab .sp1 {
                    background: #47a137;
                    border-color: #176908;
                    cursor: pointer;
                }

                .showtab .sp2 {
                    background: #ef581f;
                    border-color: #ac2b0c;
                    cursor: auto;
                }

                .showtab .sp3 {
                    background: #666666;
                    border-color: #999999;
                    cursor: auto;
                }

                .showtab .but {
                    background: black no-repeat;
                    width: 76px;
                    height: 23px;
                    text-align: center;
                    color: #fff;
                    line-height: 23px;
                    border: 0;
                    cursor: pointer;
                }

                .showfont {
                    width: 280px;
                    height: 210px;
                    line-height: 200%;
                    margin-top: 10px;
                    position: relative;
                }

                .showfont .notab {
                    width: 82px;
                    height: 23px;
                    display: block;
                    background: #eaf6fd;
                    border: solid 1px #b4d3eb;
                    position: absolute;
                    left: 53px;
                    top: -2px;
                }
            </style>

            <dl id="badminton_court_detail" class="floatleft showtab" style="display:block;background-color: #f9f9f9">
                <form method="post" name="form1">
                    <input type="hidden" name="act" value="send"/>
                    <input type="hidden" name="cxpid" value="5"/>
                    <input type="hidden" name="cxpdate" value="2018/9/7"/>
                    <dt>
                        <span class="floatleft">场地/时间</span>
                        <span class="floatleft">9-11</span>
                        <span class="floatleft">11-13</span>
                        <span class="floatleft">13-15</span>
                        <span class="floatleft">15-17</span>
                        <span class="floatleft">17-19</span>
                        <span class="floatleft">19-21</span>
                    </dt>

                    <dd>

                        <span class="floatleft">1 号场</span>

                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_1" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_1" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_1" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_1" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_1" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_1" value="1"/>
				</span>
                    </dd>

                    <dd>

                        <span class="floatleft">2 号场</span>

                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_2" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_2" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_2" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_2" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_2" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_2" value="1"/>
				</span>
                    </dd>

                    <dd>

                        <span class="floatleft">3 号场</span>

                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_3" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_3" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_3" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_3" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_3" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_3" value="1"/>
				</span>
                    </dd>

                    <dd>

                        <span class="floatleft">4 号场</span>

                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_4" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_4" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_4" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_4" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_4" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_4" value="1"/>
				</span>
                    </dd>

                    <dd>

                        <span class="floatleft">5 号场</span>

                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_5" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_5" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_5" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_5" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_5" value="1"/>
				</span>
                        <span class="floatleft sp0">
					<input type="hidden" name="cxptime_5" value="1"/>
				</span>
                    </dd>

                    <dd>
                        <p>温馨提示：在已预订的场次还没结束或取消前，不能再次预订</p><br/>
                    </dd>
                    <dd>
                        <input type="button" id="submit1" class="btn btn-success btn-block" value="提交申请"/>
                    </dd>
                </form>
            </dl>
        </div>
        <div class="col-md-3 column">
        </div>
    </div>
</div>

<script>
    //选择、取消场地(单选)
    jQuery(".showtab .sp0").click(function () {
        if (jQuery(this).hasClass("sp2") || jQuery(this).hasClass("sp3")) {

        } else {
            if (jQuery(this).hasClass("sp1")) {
                jQuery(this).removeClass("sp1")
            } else {
                jQuery(".showtab").find("span").removeClass("sp1");
                jQuery(".sp0").find("input").val(1);
                jQuery(this).addClass("sp1");
                jQuery(this).find("input").val(2)
            }
        }
    })
</script>
</div>

</body>
</html>

<script>
    window.onload = function () {
        time()
    };

    //    进入预订界面优先显示当天预订信息
    $("#date1").addClass("active");
    dt = new Date();
    cYear = dt.getFullYear();
    cMonth = dt.getMonth() + 1;
    cDate = dt.getDate();
    getVenueDetail(cYear, cMonth, cDate);

    // document.getElementById("option1").innerHTML ="y";
    function time() {
        dt = new Date();
        var y = dt.getFullYear(); //获取年份
        var m = dt.getMonth() + 1; //获取月份
        var d = dt.getDate(); //获取日期
        var wd = dt.getDay(); //获取星期第几天
        document.getElementById("date1").innerHTML = m + "月" + d + "日";
        document.getElementById("date2").innerHTML = m + "月" + (dt.getDate() + 1) + "日";
        document.getElementById("date3").innerHTML = m + "月" + (dt.getDate() + 2) + "日";
        document.getElementById("date4").innerHTML = m + "月" + (dt.getDate() + 3) + "日";
        document.getElementById("date5").innerHTML = m + "月" + (dt.getDate() + 4) + "日";
        document.getElementById("date6").innerHTML = m + "月" + (dt.getDate() + 5) + "日";
        document.getElementById("date7").innerHTML = m + "月" + (dt.getDate() + 6) + "日";
    }

    function changeDate(date) {
//        清除日期按钮激活状态
        $(".btn-primary").removeClass("active");
//        添加当前日期按钮激活状态
        var a = "#date" + date;
        $(a).attr("class", "btn btn-primary active");
//        当前选中的日期
        curYear = dt.getFullYear();
        curMonth = dt.getMonth() + 1;
        curDate = dt.getDate() + (date - 1);
//        alert(curYear);
//        alert(curMonth);
//        alert(curDate);
        getVenueDetail(curYear, curMonth, curDate);
    }

    //    展示选中日期的预订情况信息
    function getVenueDetail(curYear, curMonth, curDate) {
//        alert(curYear);
//        alert(curMonth);
//        alert(curDate);
        $.ajax({
            data: {
                'category_name': '羽毛球',
                'curYear': curYear,
                'curMonth': curMonth,
                'curDate': curDate
            },
            type: 'POST',
            dataType: 'json',
            url: '/booking/getVenueDeTailByDate',
            // beforeSend:removeBind,
            error: function () {
                alert("查询出错了");
                // $("#badminton_court_detail").html("查询出错了");
            },
            success: function (res, status, xhr) {
//                alert("b");
                var a = JSON.parse(res);
//                alert(a);
//                alert("datalength:" + a.data.length);
//                初始化选择界面
                jQuery(".showtab").find("span").removeClass("sp1");
                jQuery(".showtab").find("span").removeClass("sp2");
                jQuery(".showtab").find("span").removeClass("sp3");
//                循环提取每条筛选出的数据
                for (var i = 0; i < a.data.length; i++) {
//                    alert("i:" + i);
//                    场地名称
                    var court_name = a.data[i]['court_name'];
//                    预定时间
                    var booking_time = a.data[i]['booking_time'];
//                    alert(court_name);
//                    alert(booking_time);

                    switch (court_name) {
                        case '一号场':
                            court = 1;
                            break;
                        case '二号场':
                            court = 2;
                            break;
                        case '三号场':
                            court = 3;
                            break;
                        case '四号场':
                            court = 4;
                            break;
                        case '五号场':
                            court = 5;
                            break;
                    }
//                    alert(court);

                    switch (booking_time) {
                        case '9-11':
                            btime = 1;
                            break;
                        case '11-13':
                            btime = 2;
                            break;
                        case '13-15':
                            btime = 3;
                            break;
                        case '15-17':
                            btime = 4;
                            break;
                        case '17-19':
                            btime = 5;
                            break;
                        case '19-21':
                            btime = 6;
                            break;
                    }
//                    alert(btime);
//                    获得需改变预定状态的位置
                    var j = 0;
                    j = (court - 1) * 6 + btime - 1;
//                    alert(j);
                    sp = document.getElementsByClassName("sp0");
                    if (a.data[i]['user_id'] == "0") {
//                    将已禁止的位置添加 sp3
                        $(sp[j]).addClass("sp3")
                    } else {
//                    将已预定的位置添加 sp2
                        $(sp[j]).addClass("sp2")
                    }
                }
            },
        });
        var bookingdate = curYear + "-" + curMonth + "-" + curDate;
//        alert("curDate:" + curDate);
//        alert("bookingdate:" + bookingdate);
        localStorage.setItem("booking_date", bookingdate);
    }

    $(document).ready(function () {
        $("#submit1").click(function (event) {
            // var icon = $("span");
            // alert("aa");
            // el= document.getElementById("aa").getElementsByTagName("span");
            el = document.getElementsByClassName("sp0");
            // alert(el.length);
            // 定义时间段个数
            var times_num = 6;
            var time = 0;
            var court = 0;
            // 获取场地号和预约时间段
            for (var i = 0; i < el.length; i++) {
                if ($(el[i]).hasClass("sp1")) {
                    court = Math.ceil((i + 1) / times_num);
                    time = (i + 1) % times_num;
                }
            }
            var c = 1;
            if ((court == 0) && (time == 0)) {
                alert("未选择任何时间段");
                c = 0;
            }
//            alert(c);
            if (c === 1) {
                $.ajax({
                    data: {
                        'category_name': '羽毛球',
                        'curYear': cYear,
                        'curMonth': cMonth,
                        'curDate': cDate,
                        'endDate': cDate + 6
                    },
                    type: 'POST',
                    dataType: 'json',
                    url: '/booking/checkBookingHistory',
                    async: false,
                    success: function (res, status, xhr) {
                        var a = JSON.parse(res);
                        if (a.data.length != 0) {
//                            alert("res:" + res + "status:" + status + "xhr:" + xhr);
                            c = 0;
                            alert("已有预订场次,不可再次预订");
                        }
                    }
                });
//                alert(c);
                if (c == 1) {// alert(court);
                    switch (court) {
                        case 1:
                            court = "一号场";
                            break;
                        case 2:
                            court = "二号场";
                            break;
                        case 3:
                            court = "三号场";
                            break;
                        case 4:
                            court = "四号场";
                            break;
                        case 5:
                            court = "五号场";
                            break;
                    }
                    court_name = court;
//            alert(court_name);

                    // alert(time);
                    switch (time) {
                        case 1:
                            time = "9-11";
                            break;
                        case 2:
                            time = "11-13";
                            break;
                        case 3:
                            time = "13-15";
                            break;
                        case 4:
                            time = "15-17";
                            break;
                        case 5:
                            time = "17-19";
                            break;
                        case 0:
                            time = "19-21";
                            break;
                    }
                    booking_time = time;
//            alert(booking_time);
                    booking_date = localStorage.getItem("booking_date");
//            alert("booking_date:" + booking_date);

//            var user= $(sessionScope.user);
                    <%--var user = <%= session.getAttribute("user")%>;--%>
                    <%--alert("user:" + user);--%>
//            alert($(sessionScope.user));

                    $.ajax({
                        url: '/booking/add',
                        type: 'POST',
//                data:$("form").serialize(),
                        data: {
                            'category_name': '羽毛球',
                            'court_name': court_name,
                            'booking_date': booking_date,
                            'booking_time': booking_time
                        },
                        dataType: 'JSON',
                        success: function (res, status, xhr) {
//                alert("aaaa");
//                	alert("res:" + res.length);
//                    var a = JSON.parse(res);
//                    alert(a);
                            if (res == "yes") {
//                        alert("123");
                                window.location.href = "/booking/confirm";
                            } else {
                                window.location.href = "/badminton_court/booking_badminton";
                            }
                        },

                        error: function () {
                            alert("未登录，请先登录账号");
                        }
                    });
                }
            }
        });
    });
</script>
