<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="/studyonline/resources/css/bootstrap.css">
    <script src="/studyonline/resources/js/jquery-3.2.1.min.js"></script>
    <script src="/studyonline/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/studyonline/resources/js/toastr.min.js"></script>
    <link href="/studyonline/resources/css/toastr.css" rel="stylesheet">
    <script src="/studyonline/resources/js/jquery-form.js"></script>



    <style>
    #menuContent{
    background-color: rgba(7, 17, 27, 0.3);
    }
    
     #menuContent .nav-pills > li > a{
            color: white;
            border-radius: 0;
        }
        #menuContent .nav-pills > li.active > a{
            color: #fff;
            background-color: rgba(7, 17, 27, 0.3);
            border-radius: 0;
        }
/*         .nav-pills > li.active > a:hover, */
        #menuContent .nav-pills > li.active > a:focus {
            color: #fff;
            background-color: rgba(7, 17, 27, 0.3);
        }
        #menuContent .list-group-item.active{
            background-color: rgba(7, 17, 27, 0.3);
        }
    
        body {
            background-color: #F2F2F2;
        }

        p {
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        nav {
            height: 500px;
        }

        #search-btn, #search-btn2 {
            border-color: #fff;
            height: 30px;
        }

        #dept {
            font-size: 30px;
        }

        #navigation {
            background-image: url('/studyonline/resources/images/home2.jpg');
            background-position: center;
            background-repeat: no-repeat;
            border-bottom: 0px;
            box-shadow: 0 3px 10px #cccccc;
        }

        #navbar-mask {
            position: relative;
            -webkit-filter: blur(5px);
            background-color: rgba(0, 0, 0, 0.4);
            height: 60px;
            border: solid 0px #000;
            /* border-width: 1px; */
        }

        #navbar-top {
            position: relative;
            top: -60px;
        }

        #home-recommend-all {
            position: relative;
            top: -400px;
        }

        #image-slide {
        }

        .carousel-control .glyphicon-chevron-left {
            left: 50%;
            margin-left: -10px;
        }

        .carousel-control {
            position: absolute;
            bottom: 0;
            left: 20%;
            width: 15%;
            font-size: 20px;
            color: #fff;
            text-align: center;

        }

        .carousel-control.left {
            background-image: none;
        }

        .carousel-control.right {
            background-image: none;
        }

        #menuContent {
            /* float: left; */
            vertical-align: top;
            display: inline-block;
            position: relative;
            padding-right: 0px;
            height: 460px;
            width: 20%;
            min-width: 228px;
            /* border-right: 1px solid #ddd; */
            /* border: 0px; */
            border-top-left-radius: 4px;
            border-top-right-radius: 4px;
            z-index: 3;
        }

        #menumask {
            position: relative;
            vertical-align: top;
            display: inline-block;
            /* display: none; */
            margin-left: -231px;
            height: 460px;
            width: 20%;
            min-width: 228px;
            /* border: 0px; */
            z-index: 2;
            -webkit-filter: blur(2px);

            background-color: rgba(255, 255, 255, 0.4);
        }

        .carousel-inner img {
            min-height: 461px;
            max-height: 461px;
            width: 1200px;
        }

        #home-recommend-carousel {

            position: relative;
            min-width: 1200px;
            z-index: 2;
            margin-top: -460px;
        }

        #recommend-carousel {
            z-index: 1;
        }

        .list-group-item {
            height: 85px;
            background-color: rgba(255, 255, 255, 0);
            border: none;
        }

        .list-group-item a {
            height: 64px;
            line-height: 64px;
            font-size: 15px;
            border-bottom: 1px solid black;
            color: ;
        }

        #menuinnerbox {
            position: relative;
            vertical-align: top;
            display: none;
            /* display: inline-block; */
            /* float: left; */
            height: 460px;
            width: 110%;
            margin-left: -5px;
            padding-left: 0px;
            z-index: 3;
            background-color: rgb(255, 255, 255);
        }

        #menuinnerbox .panel-body {
            height: 458px;
            width: 400px;
        ' padding-left: 20 px;
        }

        #menuinnerbox .panel {
            display: none;
        }

        #menubar {
            position: relative;
            z-index: 3;
            display: inline-block;
            white-space: nowrap;
        }

        .path-carousel {
            box-shadow: 0 6px 5px #cccccc;
            width: 1200px;
            background-color: #ffffff;
        }

        .path-carousel a {
            width: 236px;
            height: 120px;
            border: 0px;
            background-position: 0 0;

        }

        .thumbnail {
            position: relative;
            padding: 0px;
            margin-bottom: 10px;
            background-color: rgb(255, 255, 255);
        }

        .thumbnail img {
            position: relative;
            z-index: 1;
            transition: margin-top 0.8s;
            */ -webkit-transition: margin-top 0.8s;
            */
        }

        .thumbnail img:hover {

            margin-top: -10px;
        }

        .index-card {
            display: inline-block;
            width: 1200px;
        }

        .index-card .panel-heading {
            height: 48px;

            /* background-color: rgba(244, 204, 204, 0.7); */

        }

        .index-card .panel {
            height: 224px;
            width: 228px;
            vertical-align: top;
            /* border: solid; */
            border-right: 0px;
            display: inline-block;
            margin-right: 10px;
            box-shadow: 0 5px 5px #cccccc;
            transition: box-shadow, margin-top, 0.7s, 0.5s;
            */ -webkit-transition: box-shadow, margin-top, 0.7s, 0.5s;
            */
        }

        .index-card .panel:hover {
            box-shadow: 0 12px 20px #bfbfbf;
            margin-top: -5px;
            cursor: pointer
        }

        .index-card .panel-body {
            height: 135px;
            /* border: solid; */
        }

        .index-card .course-card-bottom {
            /* position: relative; */
            padding: 15px;
            padding-top: 0px;

        }

        .index-card a {
            text-decoration-line: none;
            color: #000000;
        }

        .index-card .panel-content {
            background-color: #ffffff;
        }

        .course-type1 .panel-heading {
            background: -webkit-linear-gradient(left, rgba(250, 108, 155, 0.95), rgba(250, 137, 250, 0.7)); /* Safari 5.1 - 6.0 */
            background: linear-gradient(to right, rgba(250, 108, 155, 0.95), rgba(250, 137, 250, 0.7));
        }

        .course-type2 .panel-heading {
            background: -webkit-linear-gradient(left, rgba(250, 108, 250, 0.95), rgba(247, 161, 244, 0.7)); /* Safari 5.1 - 6.0 */
            background: linear-gradient(to right, rgba(250, 108, 250, 0.95), rgba(247, 161, 244, 0.7));
        }

        .course-type3 .panel-heading {
            background: -webkit-linear-gradient(left, rgba(48, 186, 53, 0.95), rgba(72, 224, 140, 0.7)); /* Safari 5.1 - 6.0 */
            background: linear-gradient(to right, rgba(48, 186, 53, 0.95), 5 rgba(72, 224, 140, 0.7));
        }

        .course-type4 .panel-heading {
            background: -webkit-linear-gradient(left, rgba(96, 97, 225, 0.95), rgba(79, 229, 225, 0.7)); /* Safari 5.1 - 6.0 */
            background: linear-gradient(to right, rgba(96, 97, 225, 0.95), rgba(79, 229, 225, 0.7));
        }

        .course-type5 .panel-heading {
            background: -webkit-linear-gradient(left, rgba(255, 183, 0, 0.95), rgba(225, 223, 82, 0.7)); /* Safari 5.1 - 6.0 */
            background: linear-gradient(to right, rgba(255, 183, 0, 0.95), rgba(225, 223, 82, 0.7));
        }

        .footer {
            /* position: absolute; */
            height: 180px;
            bottom: 0px;
            background-color: #ffffff;
        }

        .footer .link {
            text-align: center;
            padding-top: 30px;
            padding-bottom: 20px;
            border-bottom: 1px #bfbfbf solid;
        }

        .footer a {
            padding: 10px;
            text-decoration-line: none;
        }

        #avatar-btn img {
            position: relative;
            width: 45px;
            z-index: 6;
        }

        .user-card-inner {
            position: relative;
            padding-top: 50px;
            left: 30px;
            margin-left: -115px;
            width: 230px;
            z-index: 5;
            background-color: white;
            box-shadow: 0 5px 5px #cccccc;
            /* display:none; */
        }

        .modal-dialog {
            margin-top: 200px;
            width: 35%;
            height: 300px;
            min-width: 398px;
        }

        .modal .modal-content {
            padding: 20px;
        }

        #login-signup-page {
            padding-top: 35px;
        }

        #ls-tab {
            border-bottom: 1px solid #66ccff;
        }

        #ls-tab a {
            width: 100px;
            height: 50px;
            line-height: 30px;
            text-align: center;
            font-size: 15px;
        }
    </style>
    <!--         -webkit-filter:blur(3px); -->
    <script>
        (function ($) {
            $.fn.hoverDelay = function (options) {
                var defaults = {
                    hoverDuring: 200,
                    outDuring: 200,
                    hoverEvent: function () {
                        $.noop();
                    },
                    outEvent: function () {
                        $.noop();
                    }
                };
                var sets = $.extend(defaults, options || {});
                var hoverTimer, outTimer;
                return $(this).each(function () {
                    $(this).hover(function () {
                        clearTimeout(outTimer);
                        hoverTimer = setTimeout(sets.hoverEvent, sets.hoverDuring);
                    }, function () {
                        clearTimeout(hoverTimer);
                        outTimer = setTimeout(sets.outEvent, sets.outDuring);
                    });
                });
            }
        })(jQuery);

        $(function () {
            $(".list-group li").mouseenter(function () {
                $(".list-group li").removeClass("active");
                $(this).addClass("active");
            });
            $(".list-group li").mouseleave(function () {
                $(".list-group li").removeClass("active");
            });
            $("#recommend-carousel").carousel({
                interval: 3000,
                pause: 'hover',
            });
            $("#menu1,#menuinnerbox1").hover(
                function () {
                    $("#menuinnerbox").css("display", "inline-block");
                    $("#menuinnerbox1").show();
                },
                function () {
                    $("#menuinnerbox").hide();
                    $("#menuinnerbox1").hide();
                }
            );
            $("#menu2,#menuinnerbox2").hover(
                function () {
                    $("#menuinnerbox").css("display", "inline-block");
                    $("#menuinnerbox2").show();
                },
                function () {
                    $("#menuinnerbox").hide();
                    $("#menuinnerbox2").hide();
                }
            );
            $("#menu3,#menuinnerbox3").hover(
                function () {
                    $("#menuinnerbox").css("display", "inline-block");
                    $("#menuinnerbox3").show();
                },
                function () {
                    $("#menuinnerbox").hide();
                    $("#menuinnerbox3").hide();
                }
            );
            $("#menu4,#menuinnerbox4").hover(
                function () {
                    $("#menuinnerbox").css("display", "inline-block");
                    $("#menuinnerbox4").show();
                },
                function () {
                    $("#menuinnerbox").hide();
                    $("#menuinnerbox4").hide();
                }
            );
            $("#menu5,#menuinnerbox5").hover(
                function () {
                    $("#menuinnerbox").css("display", "inline-block");
                    $("#menuinnerbox5").show();
                },
                function () {
                    $("#menuinnerbox").hide();
                    $("#menuinnerbox5").hide();
                }
            );
            $("#login-modal").click(function () {
                $("#ls-tab a:first").tab("show");
            });
            $("#signup-modal").click(function () {
                $("#ls-tab a:last").tab("show");
            });
            /*             $("#login-signup-modal,#purchase-vip-modal").on('show.bs.modal',function(){
             $("#main").css("-webkit-filter","blur(5px)");
             $("#navigation").css("-webkit-filter","blur(5px)");
             });
             $("#login-signup-modal,#purchase-vip-modal").on('hide.bs.modal',function(){
             $("#main").css("-webkit-filter","none");
             $("#navigation").css("-webkit-filter","none");
             }); */
            $("#avatar-btn").hoverDelay({
                hoverEvent: function () {
                    $(".user-card-inner").slideDown();
                    $("#user-avatar").animate({
                        top: '20px',
                        width: '80px',
                        right: '15px'
                    }, 200);
                },
                outEvent: function () {
                    if (!$(".user-card-inner:hover").length) {
                        $(".user-card-inner").slideUp();
                        $("#user-avatar").animate({
                            top: '0px',
                            width: '45px',
                            right: '0px'
                        }, 200);
                    }
                }
            });
            $(".user-card-inner,#user-avatar").hoverDelay({
                outEvent: function () {
                    $(".user-card-inner").slideUp();
                    $("#user-avatar").animate({
                        top: '0px',
                        width: '45px',
                        right: '0px'
                    }, 200);
                }
            });
            $("#history-btn").hoverDelay({
                hoverEvent: function () {
                    $(".user-history-inner").slideDown();
                },
                outEvent: function () {
                    if (!$(".user-history-inner:hover").length) {
                        $(".user-history-inner").slideUp();
                    }
                }
            });
            $(".user-history-inner").hoverDelay({
                outEvent: function () {
                    $(".user-history-inner").slideUp();
                }
            });
        });
    </script>

    <script type="text/javascript">
        //获取当前网址，如/Tmall/index.jsp
        var curWwwPath = window.document.location.href;

        //获取主机地址之后的目录如：/Tmall/index.jsp
        var pathName = window.document.location.pathname;
        var pos = curWwwPath.indexOf(pathName);

        //获取主机地址，如： 
        var localhostPath = curWwwPath.substring(0, pos);

        //获取带"/"的项目名，如：/Tmall
        var projectName = pathName
            .substring(0, pathName.substr(1).indexOf('/') + 1);
        //项目路径
        var basePath = localhostPath + projectName;
    </script>

</head>
<body>

<nav class="navbar navbar-inverse" role="navigation" id="navigation">
    <div class="mask-container" style="overflow: hidden;">
        <div id="navbar-mask">
        </div>
    </div>
    <div class="container">
        <div class="row col-xs-12" id="navbar-top">
            <div>
                <div class="navbar-header">
                    <img src="resources/images/logo.png" alt=""
                         style="width: 55px;float: left;padding-top: 3px;margin-right: 10px;">

                    <a class="navbar-brand" id="dept"  href="/studyonline/icourse.jsp" ><strong>精品课程网</strong></a>

                </div>
            </div>
            <div class="nav navbar-nav navbar-left">
                <ul class="nav navbar-nav nav-pills ">
                    <li><a href="/studyonline/icourse.jsp">首页</a></li>
                    <li><a href="/studyonline/courseIndex.jsp">课程</a></li>
                    <li><a href="/studyonline/question.jsp">问答</a></li>
                </ul>
            </div>
            <div class="nav navbar navbar-right hidden-sm hidden-xs login-none" style="display:block;">
                <ul class="nav navbar-nav nav-pills custom-ul">
                    <li style="padding-top: 5px;display:list-item;">
                        <form action="" class="navbar-form input-group">
                            <div class="form-group form-group-sm">
                                <input type="text" class="form-control" placeholder="Searchs" id="searchs">
                                <span class="input-group-btn">
                                            <button class="btn btn-default btn-sm" id="search-btn" type="button"><span
                                                    class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </span>
                            </div>
                        </form>
                    </li>
                    <!--  <li style="display:list-item;"><a  data-toggle="modal" data-target="#purchase-vip-modal" style="color: gold;">VIP</a></li> -->
                    <li style="display:list-item;"><a data-toggle="modal" data-target="#login-signup-modal"
                                                      id="login-modal">登陆</a></li>
                    <li style="display:list-item;"><a data-toggle="modal" data-target="#login-signup-modal"
                                                      id="signup-modal">注册</a></li>
                </ul>
            </div>
            <div class="nav navbar navbar-right hidden-sm hidden-xs login-ready" style="display:none;">
                <ul class="nav navbar-nav nav-pills nav-menu">
                    <li style="padding-top: 5px; display:list-item;">
                        <form action="" class="navbar-form input-group ">
                            <div class="form-group form-group-sm">
                                <input type="text" class="form-control" placeholder="Search" id="searchs2">
                                <span class="input-group-btn">
                                            <button class="btn btn-default btn-sm" id="search-btn2" type="button"><span
                                                    class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </span>
                            </div>
                        </form>
                    </li>
                    <li class="user-card" style="display:list-item; width: 60px; height: 60px;">
                        <a style="padding: 5px;line-height: 30px; height: 60px;" id="avatar-btn">
                            <img class="img-circle" src="resources/images/logo.jpg" alt="" id="user-avatar">
                        </a>
                        <div class="user-card-inner" style="display:none;">
                            <div class="user-name" style="">
                                <p><h4 style="text-align: center;">王日天</h4></p>
                            </div>
                            <div class="user-info" style="padding:15px;">
                                <div class="user-status" style="border-bottom: 1px solid #e5e9ef;">
                                    <!--   <p style="text-align:center;">身份:会员</p> -->
                                </div>
                                <div>
                                    <ul style="padding: 30px; padding-bottom: 0px;">
                                        <li style="margin-bottom: 20px; display: list-item; list-style-type:none; text-align: center;">
                                            <a data-toggle="modal" data-target="#userinfo" style="cursor:default;"><span
                                                    style="height: 28px;font-size:15px;"
                                                    class="glyphicon glyphicon-user">个人信息</span></a></li>
                                        <li style="display: list-item; list-style-type:none; text-align: center;">
                                            <a href="/studyonline/userHome.jsp"><span style="height: 28px;
                                                        font-size:15px;" class="glyphicon glyphicon-bookmark">我的课程</a>
                                        </li>
                                    </ul>
                                </div>

                            </div>
                            <div class="user-card-bottom"
                                 style="height: 30px; text-align:right; background-color:#f4f5f7">
                                <a style="line-height:30px; margin-right:5px;" id="logout-btn">退出</a>
                            </div>
                        </div>
                    </li>
                    <!-- <li style="display:list-item;"><a  data-toggle="modal" data-target="#purchase-vip-modal" style="color: gold; height: 60px;line-height: 25px;">VIP</a></li> -->
                    <li style="display:list-item;">
                        <a style="font-size: 20px; line-height: 30px; height: 60px;">
                            <span class="glyphicon glyphicon-bell"></span>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
</nav>
<div id="main">
    <div class="home-recommend-container" id="home-recommend-all">
        <div class="container">
            <div class="" id="menubar">
                <div class="" id="menuContent">
                    <ul class="nav nav-pills nav-stacked list-group">
                        <li class="list-group-item" id="menu1" style="margin-top: 5px;"><a>前端开发<span
                                style="float:right; margin-top: 20px;" class="glyphicon glyphicon-chevron-right"></a>
                        </li>
                        <li class="list-group-item" id="menu2"><a>后台开发<span style="float:right; margin-top: 20px;"
                                                                            class="glyphicon glyphicon-chevron-right"></a>
                        </li>
                        <li class="list-group-item" id="menu3"><a>移动开发<span style="float:right; margin-top: 20px;"
                                                                            class="glyphicon glyphicon-chevron-right"></a>
                        </li>
                        <li class="list-group-item" id="menu4"><a>数据库<span style="float:right; margin-top: 20px;"
                                                                           class="glyphicon glyphicon-chevron-right"></a>
                        </li>
                        <li class="list-group-item" id="menu5" style="height: 85.5px;"><a>我要<span
                                style="float:right; margin-top: 20px;" class="glyphicon glyphicon-chevron-right"></a>
                        </li>
                    </ul>
                </div>
                <div class="mask" id="menumask">
                </div>
                <div class="menu-inner-box " id="menuinnerbox">
                    <div class="panel panel-default" id="menuinnerbox1"
                         style="background-image: url(/studyonline/resources/images/Bg1.png);background-size:cover;">
                        <div class="panel-body">
                            <div class="dept-recommend">
                                <h4>分类项目</h4>
                            </div>
                            <div class="">
                                <!-- <div class="small-dept" style="display: inline-block;">
                                    <h4><span class="label label-default">更多分类：</span></h4>
                                </div> -->
                                <ol id="classify1" class="breadcrumb" style="display: inline-block;">
                                    <!--  <li><a >HTML</a></li>
                                     <li><a >CSS</a></li>
                                     <li><a >JavaScript</a></li>
                                     <li><a >JQuery</a></li> -->
                                </ol>
                            </div>
                            <!--  <script type="text/javascript">
                                 $.ajax({
                                     type:"post",
                                     url: basePath +"/Dir/findCourseClass2",
                                     dataType:"json",
                                     data:{
                                         id:1
                                     },
                                     success:function(data){

                                         $.each(data, function(n, data){
                                             $("#classify1").append('<li><a>'+data.classname+'</a></li>');
                                         })
                                     }
                                 })
                             </script> -->
                            <!-- <div class="">
                                <div class="small-dept" style="display: inline-block;">
                                    <h34><span class="label label-default">进阶：</span></h4>
                                </div>
                                <ol class="breadcrumb" style="display: inline-block;">
                                <li><a >HTML5</a></li>
                                <li><a >CSS3</a></li>
                                <li><a >Nodejs</a></li>
                                <li><a >Bootstrap</a></li>
                                </ol>
                            </div>
                            <div class="">
                                <div class="small-dept" style="display: inline-block;">
                                    <h4><span class="label label-default">其他：</span></h4>
                                </div>
                                <ol class="breadcrumb" style="display: inline-block;">
                                <li><a >前端工具</a></li>
                                </ol>
                            </div> -->
                            <div class="">
                                <h4>课程推荐</h4>
                            </div>
                            <div class="">

                                <ol id="tj1" class="breadcrumb" style="display: inline-block;">

                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default" id="menuinnerbox2"
                         style="background-image: url(/studyonline/resources/images/Bg2.png);">
                        <div class="panel-body">
                            <div class="dept-recommend">
                                <h4>分类项目</h4>
                            </div>
                            <div class="">
                                <!--  <div class="small-dept" style="display: inline-block;">
                                     <h4><span class="label label-default">基础：</span></h4>
                                 </div> -->
                                <ol id="classify2" class="breadcrumb" style="display: inline-block;">
                                    <!-- <li><a >HTML</a></li>
                                    <li><a >CSS</a></li>
                                    <li><a >JavaScript</a></li>
                                    <li><a >JQuery</a></li> -->
                                </ol>
                            </div>
                            <!--  <script type="text/javascript">
                                $.ajax({
                                    type:"post",
                                    url: basePath +"/Dir/findCourseClass2",
                                    dataType:"json",
                                    data:{
                                        id:2
                                    },
                                    success:function(data){

                                        $.each(data, function(n, data){
                                            $("#classify2").append('<li><a>'+data.classname+'</a></li>');
                                        })
                                    }
                                })
                            </script> -->

                            <div class="">
                                <h4>课程推荐</h4>
                            </div>
                            <div class="">

                                <ol id="tj2" class="breadcrumb" style="display: inline-block;">

                                </ol>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="menuinnerbox3"
                         style="background-image: url(/studyonline/resources/images/Bg3.png);">
                        <div class="panel-body">
                            <div class="dept-recommend">
                                <h4>分类项目</h4>
                            </div>
                            <div class="">
                                <!-- <div class="small-dept" style="display: inline-block;">
                                    <h4><span class="label label-default">基础：</span></h4>
                                </div> -->
                                <ol id="classify3" class="breadcrumb" style="display: inline-block;">
                                    <!-- <li><a >HTML</a></li>
                                    <li><a >CSS</a></li>
                                    <li><a >JavaScript</a></li>
                                    <li><a >JQuery</a></li> -->
                                </ol>
                            </div>
                            <!--  <script type="text/javascript">
                                $.ajax({
                                    type:"post",
                                    url: basePath +"/Dir/findCourseClass2",
                                    dataType:"json",
                                    data:{
                                        id:3
                                    },
                                    success:function(data){

                                        $.each(data, function(n, data){
                                            $("#classify3").append('<li><a>'+data.classname+'</a></li>');
                                        })
                                    }
                                })
                            </script> -->
                            <!-- <div class="">
                                <div class="small-dept" style="display: inline-block;">
                                    <h34><span class="label label-default">进阶：</span></h4>
                                </div>
                                <ol class="breadcrumb" style="display: inline-block;">
                                <li><a >HTML5</a></li>
                                <li><a >CSS3</a></li>
                                <li><a >Nodejs</a></li>
                                <li><a >Bootstrap</a></li>
                                </ol>
                            </div>
                            <div class="">
                                <div class="small-dept" style="display: inline-block;">
                                    <h4><span class="label label-default">其他：</span></h4>
                                </div>
                                <ol class="breadcrumb" style="display: inline-block;">
                                <li><a >前端工具</a></li>
                                </ol>
                            </div> -->
                            <div class="">
                                <h4>课程推荐</h4>
                            </div>
                            <div class="">

                                <ol id="tj3" class="breadcrumb" style="display: inline-block;">

                                </ol>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default" id="menuinnerbox4"
                         style="background-image: url(/studyonline/resources/images/Bg4.png);">
                        <div class="panel-body">
                            <div class="dept-recommend">
                                <h4>分类项目</h4>
                            </div>
                            <div class="">
                                <ol id="classify4" class="breadcrumb" style="display: inline-block;">
                                    <!-- <li><a >HTML</a></li>
                                    <li><a >CSS</a></li>
                                    <li><a >JavaScript</a></li>
                                    <li><a >JQuery</a></li> -->
                                </ol>
                            </div>
                            <!-- <script type="text/javascript">
                                  $.ajax({
                                      type:"post",
                                      url: basePath +"/Dir/findCourseClass2",
                                      dataType:"json",
                                      data:{
                                          id:4
                                      },
                                      success:function(data){

                                          $.each(data, function(n, data){
                                              $("#classify4").append('<li><a>'+data.classname+'</a></li>');
                                          })
                                      }
                                  })
                              </script> -->
                            <!-- <div class="">
                                <div class="small-dept" style="display: inline-block;">
                                    <h34><span class="label label-default">进阶：</span></h4>
                                </div>
                                <ol class="breadcrumb" style="display: inline-block;">
                                <li><a >HTML5</a></li>
                                <li><a >CSS3</a></li>
                                <li><a >Nodejs</a></li>
                                <li><a >Bootstrap</a></li>
                                </ol>
                            </div>
                            <div class="">
                                <div class="small-dept" style="display: inline-block;">
                                    <h4><span class="label label-default">其他：</span></h4>
                                </div>
                                <ol class="breadcrumb" style="display: inline-block;">
                                <li><a >前端工具</a></li>
                                </ol>
                            </div> -->
                            <div class="">
                                <h4>课程推荐</h4>
                            </div>
                            <div class="">

                                <ol id="tj4" class="breadcrumb" style="display: inline-block;">

                                </ol>
                            </div>
                        </div>
                    </div>


                    <div class="panel panel-default" id="menuinnerbox5"
                         style="background-image: url(/studyonline/resources/images/Bg5.png);">
                        <div class="panel-body">
                            <div class="dept-recommend">
                                <h4>分类项目</h4>
                            </div>
                            <div class="">
                                <ol id="classify5" class="breadcrumb" style="display: inline-block;">
                                    <!-- <li><a >HTML</a></li>
                                    <li><a >CSS</a></li>
                                    <li><a >JavaScript</a></li>
                                    <li><a >JQuery</a></li> -->
                                </ol>
                            </div>
                            <!--  <script type="text/javascript">
                                 $.ajax({
                                     type:"post",
                                     url: basePath +"/Dir/findCourseClass2",
                                     dataType:"json",
                                     data:{
                                         id:6
                                     },
                                     success:function(data){

                                         $.each(data, function(n, data){
                                             $("#classify5").append('<li><a>'+data.classname+'</a></li>');
                                         })
                                     }
                                 })
                             </script> -->
                            <!-- <div class="">
                                <div class="small-dept" style="display: inline-block;">
                                    <h34><span class="label label-default">进阶：</span></h4>
                                </div>
                                <ol class="breadcrumb" style="display: inline-block;">
                                <li><a >HTML5</a></li>
                                <li><a >CSS3</a></li>
                                <li><a >Nodejs</a></li>
                                <li><a >Bootstrap</a></li>
                                </ol>
                            </div>
                            <div class="">
                                <div class="small-dept" style="display: inline-block;">
                                    <h4><span class="label label-default">其他：</span></h4>
                                </div>
                                <ol class="breadcrumb" style="display: inline-block;">
                                <li><a >前端工具</a></li>
                                </ol>
                            </div> -->
                            <div class="">
                                <h4>课程推荐</h4>
                            </div>
                            <div class="">

                                <ol id="tj5" class="breadcrumb" style="display: inline-block;">

                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="home-recommend-carousel">
                <div class="carousel slide" id="recommend-carousel">
                    <ol class="carousel-indicators" style="margin-left: auto;">
                        <li data-target="#recommend-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#recommend-carousel" data-slide-to="1"></li>
                        <li data-target="#recommend-carousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner" id="slide-con">
                        <div class="item active">
                            <a targrt="-self" id="turn2"  target="_blank">
                                <div class="color" style="background-color: rgb(38,97,157);">
                                    <img src="/studyonline/resources/images/slide0.jpg"
                                         alt="First slide" id="image-slide2" style="height:100%">
                                </div>
                            </a>
                            <div class="carousel-caption"></div>
                        </div>
                        <div class="item">
                            <a targrt="-self" id="turn1" target="_blank">
                                <div class="color" style="background-color: rgb(235,235,235);">
                                    <img src="/studyonline/resources/images/slide1.jpg"
                                         alt="Second slide" id="image-slide1">
                                </div>
                            </a>
                            <div class="carousel-caption"></div>
                        </div>
                        <div class="item">
                            <a targrt="-self" id="turn3" target="_blank">
                                <div class="color" style="background-color: rgb(233,234,254);">
                                    <img src="/studyonline/resources/images/slide2.jpg"
                                         alt="Third slide" id="image-slide3">
                                </div>
                            </a>
                            <div class="carousel-caption"></div>
                        </div>

                    </div>
                    <a href="#recommend-carousel" class="carousel-control left" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">&lsaquo;</span>
                    </a>
                    <a href="#recommend-carousel" class="carousel-control right" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">&rsaquo;</span>
                    </a>
                </div>
            </div>
            <div class="path-carousel" style="display: inline-block; white-space:nowrap;">
                <div class="">
                </div>
                <a class="thumbnail" style="display: inline-block;" id="hoversss">
                    <img src="/studyonline/resources/images/recommend/path_1.png" alt="">
                </a>
                <a class="thumbnail" style="display: inline-block;">
                    <img src="/studyonline/resources/images/recommend/path_2.png" alt="">
                </a>
                <a class="thumbnail" style="display: inline-block;">
                    <img src="/studyonline/resources/images/recommend/path_3.png" alt="">
                </a>
                <a class="thumbnail" style="display: inline-block;">
                    <img src="/studyonline/resources/images/recommend/path_4.png" alt="">
                </a>
                <a class="thumbnail" style="display: inline-block;">
                    <img src="/studyonline/resources/images/recommend/path_5.png" alt="">
                </a>
            </div>
        </div>

        <div class="container recommend-class" style="margin-top: 30px;">
            <div class="prime-recommend">
                <h3>最新课程
                    <a href="courseIndex.jsp?order=otime" style="float: right; font-size: 15px;text-decoration-line: none;" target="_blank">更多 ></a>
                </h3>
                <div class="index-card">
                    <div class="panel course-type1"
                         style="background-image: url('/studyonline/resources/images/vediobg/cover001_s.jpg');background-repeat: no-repeat;"
                         id="course-type0">
                        <a>
                            <div class="panel-heading">
                                <h4 class="panel-dept" style="line-height: 28px;text-align: center;">233</h4>
                            </div>
                            <div class="panel-content">
                                <div class="panel-body">
                                    <h4>JS实现京东无延迟菜单效果</h4>
                                    <p>JS实现京东无延迟菜单效果</p>
                                </div>
                                <div class="course-card-bottom">
                                    <div style="display: inline-block;" class="course-card-info">12人在学</div>
                                    <div style="float: right; display: inline-block;" class="course-card-prise">￥450
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="panel course-type2"
                         style="background-image: url('/studyonline/resources/images/vediobg/cover010_s.jpg'); background-repeat: no-repeat;"
                         id="course-type1">
                        <a>
                            <div class="panel-heading">
                                <h4 class="panel-dept" style="line-height: 28px;text-align: center;">233</h4>
                            </div>
                            <div class="panel-content">
                                <div class="panel-body">
                                    <h4>自定义实现日历控件</h4>
                                    <p>轻松掌握Android 自定义控件实现</p>
                                </div>
                                <div class="course-card-bottom">
                                    <div style="display: inline-block;" class="course-card-info">12人在学</div>
                                    <div style="float: right; display: inline-block;" class="course-card-prise">￥450
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="panel course-type3"
                         style="background-image: url('/studyonline/resources/images/vediobg/cover011_s.jpg'); background-repeat: no-repeat;"
                         id="course-type2">
                        <a>
                            <div class="panel-heading">
                                <h4 class="panel-dept" style="line-height: 28px;text-align: center;">233</h4>
                            </div>
                            <div class="panel-content">
                                <div class="panel-body">
                                    <h4>bootstrap快速入门</h4>
                                    <p>bootstrap是目前最流行的框架之一，能够带你快速搭建网页！</p>
                                </div>
                                <div class="course-card-bottom">
                                    <div style="display: inline-block;" class="course-card-info">12人在学</div>
                                    <div style="float: right; display: inline-block;" class="course-card-prise">￥450
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="panel course-type4"
                         style="background-image: url('/studyonline/resources/images/vediobg/cover012_s.jpg'); background-repeat: no-repeat;"
                         id="course-type3">
                        <a>
                            <div class="panel-heading">
                                <h4 class="panel-dept" style="line-height: 28px; text-align: center;">233</h4>
                            </div>
                            <div class="panel-content">
                                <div class="panel-body">
                                    <h4>bootstrap快速入门</h4>
                                    <p>bootstrap是目前最流行的框架之一，能够带你快速搭建网页！</p>
                                </div>
                                <div class="course-card-bottom">
                                    <div style="display: inline-block;" class="course-card-info">12人在学</div>
                                    <div style="float: right; display: inline-block;" class="course-card-prise">￥450
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="panel course-type5"
                         style="margin-right: 0px;background-image: url('/studyonline/resources/images/vediobg/cover013_s.jpg'); background-repeat: no-repeat;"
                         id="course-type4">
                        <a>
                            <div class="panel-heading">
                                <h4 class="panel-dept" style="line-height: 28px;text-align: center;">233</h4>
                            </div>
                            <div class="panel-content">
                                <div class="panel-body">
                                    <h4>bootstrap快速入门</h4>
                                    <p>bootstrap是目前最流行的框架之一，能够带你快速搭建网页！</p>
                                </div>
                                <div class="course-card-bottom">
                                    <div style="display: inline-block;" class="course-card-info">12人在学</div>
                                    <div style="float: right; display: inline-block;" class="course-card-prise">￥450
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="free-recommed">
                <h3>最热课程
                    <a href="courseIndex.jsp?order=oclick" style="float: right; font-size: 15px;text-decoration-line: none;" target="_blank">更多 ></a>
                </h3>
                <div class="index-card">
                    <div class="panel course-type3"
                         style="background-image: url('/studyonline/resources/images/vediobg/cover001_s.jpg');background-repeat: no-repeat;"
                         id="course-type5">
                        <a>
                            <div class="panel-heading" id="course-type1">
                                <h4 class="panel-dept" style="line-height: 28px;text-align: center;">233</h4>
                            </div>
                            <div class="panel-content">
                                <div class="panel-body">
                                    <h4>JS实现京东无延迟菜单效果</h4>
                                    <p>JS实现京东无延迟菜单效果</p>
                                </div>
                                <div class="course-card-bottom">
                                    <div style="display: inline-block;" class="course-card-info">12人在学</div>
                                    <div style="float: right; display: inline-block;" class="course-card-prise">Free
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="panel course-type1"
                         style="background-image: url('/studyonline/resources/images/vediobg/cover010_s.jpg'); background-repeat: no-repeat;"
                         id="course-type6">
                        <a href="javascript:;">
                            <div class="panel-heading">
                                <h4 class="panel-dept" style="line-height: 28px;text-align: center;">233</h4>
                            </div>
                            <div class="panel-content">
                                <div class="panel-body">
                                    <h4>自定义实现日历控件</h4>
                                    <p>轻松掌握Android 自定义控件实现</p>
                                </div>
                                <div class="course-card-bottom">
                                    <div style="display: inline-block;" class="course-card-info">12人在学</div>
                                    <div style="float: right; display: inline-block;" class="course-card-prise">Free
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="panel course-type2"
                         style="background-image: url('/studyonline/resources/images/vediobg/cover011_s.jpg'); background-repeat: no-repeat;"
                         id="course-type7">
                        <a>
                            <div class="panel-heading">
                                <h4 class="panel-dept" style="line-height: 28px;text-align: center;">233</h4>
                            </div>
                            <div class="panel-content">
                                <div class="panel-body">
                                    <h4>bootstrap快速入门</h4>
                                    <p>bootstrap是目前最流行的框架之一，能够带你快速搭建网页！</p>
                                </div>
                                <div class="course-card-bottom">
                                    <div style="display: inline-block;" class="course-card-info">12人在学</div>
                                    <div style="float: right; display: inline-block;" class="course-card-prise">Free
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="panel course-type5"
                         style="background-image: url('/studyonline/resources/images/vediobg/cover012_s.jpg'); background-repeat: no-repeat;"
                         id="course-type8">
                        <a>
                            <div class="panel-heading">
                                <h4 class="panel-dept" style="line-height: 28px; text-align: center;">233</h4>
                            </div>
                            <div class="panel-content">
                                <div class="panel-body">
                                    <h4>bootstrap快速入门</h4>
                                    <p>bootstrap是目前最流行的框架之一，能够带你快速搭建网页！</p>
                                </div>
                                <div class="course-card-bottom">
                                    <div style="display: inline-block;" class="course-card-info">12人在学</div>
                                    <div style="float: right; display: inline-block;" class="course-card-prise">Free
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="panel course-type4"
                         style="margin-right: 0px;background-image: url('/studyonline/resources/images/vediobg/cover013_s.jpg'); background-repeat: no-repeat;"
                         id="course-type9">
                        <a>
                            <div class="panel-heading">
                                <h4 class="panel-dept" style="line-height: 28px;text-align: center;">233</h4>
                            </div>
                            <div class="panel-content">
                                <div class="panel-body">
                                    <h4>bootstrap快速入门</h4>
                                    <p>bootstrap是目前最流行的框架之一，能够带你快速搭建网页！</p>
                                </div>
                                <div class="course-card-bottom">
                                    <div style="display: inline-block;" class="course-card-info">12人在学</div>
                                    <div style="float: right; display: inline-block;" class="course-card-prise">Free
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container coming-soon">
            <div class="" style="text-align: center;">
                <h2>敬请期待...</h2>
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="container">
            <div class="footer-sns" style="text-align: center;padding-top: 25px;">
                <a>
                    <img src="/studyonline/resources/images/alipay.jpg" alt=""
                         style="height:32px;">
                </a>
                <a>
                    <img src="/studyonline/resources/images/wechat.jpg" alt=""
                         style="height:28px;">
                </a>
            </div>
            <div class="link">
                <a>联系我们</a>
                <a>关于我们</a>
                <a>意见反馈</a>
            </div>
            <div class="regist-info" style="text-align: center;padding: 10px;">
                <p>@2017 Wangritian 沪IPC备 233号</p>
            </div>
        </div>
    </div>
    <div class="container modal fade" id="login-signup-modal" data-backdrop='static'>
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="">
                    <ul class="nav nav-tabs" id="ls-tab">
                        <li class="active"><a href="#login" data-toggle="tab">登陆</a></li>
                        <li><a href="#signup" data-toggle="tab">注册</a></li>
                        <button type="button" class="close" data-dismiss="modal">x</button>
                    </ul>
                </div>
                <div class="modal-body">
                    <div class="tab-content" id="login-signup-page">
                        <div class="tab-pane fade in active" id="login">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <input type="text" class="form-control " id="account" placeholder="请输入账号"
                                               style="height: 40px;">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <input type="password" class="form-control" id="inputPassword1"
                                               placeholder="请输入密码" style="height: 40px;">
                                    </div>
                                </div>
                             <div class="form-group">
                                    <div class="col-md-12">
                                       		<select  id="usertype"   name="usertype" class="form-control"  style="height: 40px">
                                        <option value="student">学生</option>
                                        <option value="teacher">教师</option>
                                        <option value="admin">管理员</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-8">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">记住我
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-4 " style="text-align: right;">
                                        <a style="line-height: 35px;">忘记密码</a>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <button type="button" class="btn btn-lg btn-primary" style="width: 100%;"
                                                id="login-btn">登录
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="signup">
                            <div class="register">
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <input type="text" class="form-control " id="account1" placeholder="请输入账号"
                                                   style="height: 40px;">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <input type="password" class="form-control" id="inputPassword2"
                                                   placeholder="请输入密码" style="height: 40px;">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <input type="password" class="form-control" id="inputPassword3"
                                                   placeholder="请再次确认密码" style="height: 40px;">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <button type="button" class="btn btn-lg btn-danger"
                                                    style="width: 100%; margin-top: 15px;" onclick="toregister();">注册
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="registr-success" style="display:none; style=" display:none;>
                                <form action="" class="form-horizontal">
                                    <div class="alert alert-success" style="text-align: center;">注册成功！</div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <button type="button" class="btn btn-lg btn-danger" data-dismiss="modal"
                                                    style="width: 100%;">确定
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="registr-fault" style="display:none;">
                                <form action="" class="form-horizontal">
                                    <div class="alert alert-danger" style="text-align: center;">
                                        注册错误！
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <button type="button" class="btn btn-lg btn-danger" data-dismiss="modal"
                                                    style="width: 100%;">返回
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
</div>
<!-- <a href="/checkonline/TestPage.jsp?tid=11">我要做作业</a> -->
</body>
<script type="text/javascript">

    $(function () {
   
    var xx = "${identify}";
	var uid='${student.pic}';
	if(xx!=null&&xx=='student'){
            $('.login-ready').show();
            $('.login-none').css('display', 'none');
            $('.user-name h4').text("${message.nickname}");
            var c = "${message.pic}";
            if (c != null && c != "") {
                $('#user-avatar').attr('src', "${message.pic}");
            }
        }

        $.ajax({
            url: basePath + "/bestManager/findbest",
            dataType: "json",
            type: "POST",
            conentType: "application/json",
            success: function (data) {
                /* alert(data.length); */
                $.each(data, function (n, msg) {
                    var i = n + 1;
                    $('#image-slide' + i).attr('src', msg.src);
                    $('#turn' + i).attr('href', "student/CourseInfo/" + msg.cid);
                })
            }
        })
    });
    //获取当前网址，如/Tmall/index.jsp
    var curWwwPath = window.document.location.href;

    //获取主机地址之后的目录如：/Tmall/index.jsp
    var pathName = window.document.location.pathname;
    var pos = curWwwPath.indexOf(pathName);

    //获取主机地址，如： 
    var localhostPath = curWwwPath.substring(0, pos);
    toastr.options = {
        positionClass: "toast-center-center",
        "showDuration": "1000",//显示的动画时间
        "hideDuration": "1000",//消失的动画时间
        "timeOut": "1000", //展现时间
    }
    //获取带"/"的项目名，如：/Tmall
    var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
    //项目路径
    var basePath = localhostPath + projectName;
    $.ajax({
        type: "post",
        url: basePath + "/courseManger/findfiveCourse",
        dataType: "json",
        success: function (msg) {
            $.each(msg, function (n, json) {
                $('#course-type' + n + ' .panel-heading h4').text(json.secclassname);
                $('#course-type' + n + ' .panel-body h4').html(json.coursename);
                $('#course-type' + n + ' .panel-body p').html(json.describe);
                $('#course-type' + n + ' a').attr('href', "student/CourseInfo/" + json.id);
                $('#course-type' + n + '  .course-card-info').html(json.studycount + '人在学');
                $('#course-type' + n + '  .course-card-prise').html(json.score + '分');
                $('#course-type' + n + '  a').attr("target","_blank");
                /* 				$('#course-type'+n+' a').on("click",function(){
                 $.ajax({
                 type:"post",
                 url:basePath+"/student/preToCinfo",
                 dataType:"text",
                 data:{
                 id:json.id
                 },
                 success:function(msg){
                 window.location.href = msg;
                 }
                 })
                 }); */
            })
            for (var i = msg.length; i < 5; i++) {
                $('#course-type' + i).css('display', 'none');
            }
        }
    })

    $.ajax({
        type: "post",
        url: basePath + "/courseManger/findFiveHotestCourse",
        dataType: "json",
        success: function (data) {
            $.each(data, function (n, json) {
                $('#course-type' + (n + 5) + '  .panel-heading h4').text(json.secclassname);
                $('#course-type' + (n + 5) + '  .panel-body h4').html(json.coursename);
                $('#course-type' + (n + 5) + '  .panel-body p').html(json.describe);
                $('#course-type' + (n + 5) + '  a').attr('href', "student/CourseInfo/" + json.id);
                $('#course-type' + (n + 5) + '  .course-card-info').html(json.studycount + '人在学');
                $('#course-type' + (n + 5) + '  .course-card-prise').html(json.score + '分');
                $('#course-type' + (n + 5) + '  a').attr("target","_blank");
                /* 					$('#course-type'+(n+5)+' a').on("click",function(){
                 $.ajax({
                 type:"post",
                 url:basePath+"/student/preToCinfo",
                 dataType:"text",
                 data:{
                 id:json.id
                 },
                 success:function(msg){
                 window.location.href = msg;
                 }
                 })
                 }); */
            })

            for (var i = data.length + 5; i < 10; i++) {
                $('#course-type' + i).css('display', 'none');
            }
        }
    })
    $('#login-btn').click(function () {

    	$.ajax({
            url: localhostPath + "/checkonline/login/msgcheck",
            type: "POST",
            data: {
                password: $('#inputPassword1').val(),
                username: $('#account').val(),
                identity: "学生"
            },
            success: function (data) {
                
            }
        })
    	
        $.ajax({
            url: basePath + "/login/msgCheckstu",
            type: "POST",
            data: {
                password: $('#inputPassword1').val(),
                username: $('#account').val(),
                usertype: "student"
            },
            success: function (data) {
                if (data == 'success') {
                    $('.login-ready').show();
                    $('.login-none').css('display', 'none');
                    window.location.reload();
                    /* toastr.success('欢迎你，'+"${message.nickname}"); */
                } else {
                    toastr.error('用户名或密码错误');
                }
            }
        })
        

    })

    $('#logout-btn').click(function () {
        $('.login-ready').css('display', 'none');
        $('.login-none').show();
        $.ajax({
            url: "login/logout",
            type: "POST",
            success: function (data) {
                window.location.reload();
            }
        })
    })

    $('.close').click(function () {
        $('#account1').val("");
        $('#inputPassword2').val("");
        $('#inputPassword3').val("");
        $('#account').val("");
        $('#inputPassword1').val("");
    })


    function toregister() {
        var account = $('#account1').val();
        var psw1 = $('#inputPassword2').val();
        var psw2 = $('#inputPassword3').val();
        if (account == "") {
            toastr.error('请输入用户名');
            $('#account1').focus();
            return;
        }
        if (psw1 == "") {
            toastr.error('请输入密码');
            $('#inputPassword2').focus();
            return;
        }
        if (psw2 == "") {
            toastr.error('请输入密码');
            $('#inputPassword3').focus();
            return;
        }
        if (psw2 != psw1) {
            toastr.error('两次密码不一致');
            $('#inputPassword3').focus();
            return;
        }
        $.ajax({
            url: "userManger/addUser",
            type: "POST",
            contentType: "application/json",
            data: JSON.stringify({
                username: account,
                password: psw2,
                nickname: account,
                sex: '男',
                birthday: "2000-01-01"
            }),
            success: function (data) {
                if ("failed" == data) {
                    toastr.error('注册失败');
                    $('#account1').focus();
                }
                else {
                    window.location.reload();
                }
            }
        })
    }
</script>

<script type="text/javascript">

    $('#search-btn').click(function () {
        var x = $('#searchs').val();
        if (x == "") return;
        location.href = basePath + '/Search.jsp?word=' + x;
    })

    $('#search-btn2').click(function () {
        var x = $('#searchs2').val();
        if (x == "") return;
        location.href = basePath + '/Search.jsp?word=' + x;
    })
    $.ajax({
        type: "post",
        url: basePath + "/Dir/findHOTCourseClass2",
        dataType: "json",
        success: function (data2) {
            $.each(data2, function (n, data2) {

            })
        }
    })

    $.ajax({
        type: "post",
        url: basePath + "/Dir/findCourseClass1",
        dataType: "json",
        success: function (data) {
            $.each(data, function (n, data) {
                var i = n + 1;
                $("#menu" + i + ' a').text(data.classname);
                $.ajax({
                    type: "post",
                    url: basePath + "/Dir/findCourseClass2",
                    dataType: "json",
                    data: {
                        id: data.id
                    },
                    success:function(data2){   
             			$.each(data2, function(n, data2){
             				$("#classify"+i).append("<li><a target='_blank' href='courseIndex.jsp?for="+data.classname+"&forid="+data.id+"&class="+data2.classname+"&classid="+data2.id+"'>"+data2.classname+'</a></li>');
             			})
             		}
             	})
             	 $.ajax({
             		type:"post",
             		url: basePath +"/courseManger/findthreeCourse",
             		dataType:"json",
             		data:{
             			fdir:data.classname
             		},
             		success:function(data3){
             			$.each(data3, function(n, data3){
             				
             				$("#tj"+i).append("<li><a target='_blank' href='student/CourseInfo/"+data3.id+"'>"+data3.coursename+"</a></li>");
             			})
             		}
             	})
            })
            for (var i = data.length + 1; i <= 5; i++) {
                $('#menu' + i).css('display', 'none');
            }
        }
    });

</script>
</html>