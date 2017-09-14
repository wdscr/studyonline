<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Course-Index</title>  <script src="resources/js/jquery-3.2.1.min.js"></script>
	<link rel="stylesheet" href="resources/css/bootstrap.css">    
  	<link rel="stylesheet" href="resources/css/jquery.page.css">    
  	<script type="text/javascript" src="resources/js/toastr.min.js"></script> 
<link href="resources/css/toastr.css" rel="stylesheet">
    <script src="resources/js/bootstrap.min.js"></script>
    <!-- <script src="resources/js/jquery.raty.min.js"></script> -->
	<script type="text/javascript" src="resources/js/jquery.page.js"></script>
    <style type="text/css" media="screen">
    	@font-face{
            font-family: myFirstFont;
            src: url('./fonts/jianti.ttf')
            ,url('./fonts/jianti.ttf'); /* IE9 */
        }
        @font-face{
            font-family: titleFont;
            src: url('./fonts/bold.ttf')
            ,url('./fonts/bold.ttf'); /* IE9 */
        }
        body{
            background-color: #fff;
        }
        nav{
        height:65px;
        /* overflow: hidden; */
        }
        #search-btn,#search-btn2{
        border-color: #fff;
        height:30px;
        }
        #title{
        font-size: 30px;
        }
        #navigation{
        background-image: url(./images/nav0.jpg);
        background-position: top;
        background-repeat: no-repeat;
        background-size: 100%;
        background-attachment: fixed;
        border-bottom: 0px;
        box-shadow: 0 3px 10px #cccccc;
        min-width: 1024px;
        }
        #navbar-mask{
        background-image: url(./images/nav0.jpg);
        background-position: top;
        background-repeat: no-repeat;
        background-size: 100%;
        background-attachment: fixed;
        position: relative;
        filter: blur(5px);
        -webkit-filter:blur(5px) brightness(70%);
        height: 82px;
        /* border:solid 1px #000; */
        /* border-width: 1px; */
        }
        #navbar-top{
        position: relative;
        }
        #navbar-conatiner{
            position: relative;
            margin-top:  -80px;
        }
        .custom-ul a{
        height: 60px;
        line-height: 25px;
        }
        .footer{
            /* position: absolute; */
            
            bottom: 0;
            background-color: #ffffff;
        }
        .footer .link{
            text-align: center;
            padding-top: 30px;
            padding-bottom: 20px;
            border-bottom: 1px #bfbfbf solid;
        }
        .footer a{
            padding: 10px;
            text-decoration-line: none;
        }
         .modal-dialog{
            margin-top: 200px;
            width: 35%;
            height: 300px;
            min-width: 398px;
        }
        .modal .modal-content{
            padding:20px;
        }
        #login-signup-page{
            padding-top: 35px;
        }
        #ls-tab{
            border-bottom: 1px solid #66ccff;
        }
        #ls-tab a{ 
            width: 100px;
            height: 50px;
            line-height: 30px;
            text-align: center;
            font-size: 15px;
        }
        #purchase-vip-modal ul{
            margin-top: 10px;
            padding: 0px;
            margin-bottom: 20px;
        }
        #purchase-vip-modal ul li{
            /* list-style-type:none;  */
            width: 100px;
            display: inline-block;
            margin-right: 60px;
            margin-bottom: 15px;
            /* margin-top: 10px; */
        }
        #avatar-btn img{
            position: relative;
            width: 45px;
            z-index: 6;
        }
        .user-card-inner{
        	/* margin-top: 20px; */
            position: relative; 
            padding-top: 50px; 
            left: 30px;
            margin-left: -115px; 
            width:230px; 
            z-index: 5; 
            background-color: white;
            box-shadow: 0 5px 5px #cccccc;
            /* display:none; */
        }
        .user-history-inner{
            position: relative;
            left: 30px;
            margin-left: -180px; 
            width:360px;
            z-index: 4; 
            background-color: white;
            box-shadow: 0 5px 5px #cccccc; 
        }
        #main{
        	height: 1000px;
        	/* border: solid #cccccc 1px; */
        	/* min-width: 1170px; */
        }
        .index-card{
            display: inline-block;
            width: 1140px;
            min-height: 600px;
        }
        .index-card .panel-heading{
            height: 48px;
        }
        .index-card .panel{
            height: 224px;
            width: 215px;
            vertical-align: top;
            /* border: solid; */
            border-right: 0px;
            display: inline-block;
            margin-right: 10px;
            box-shadow: 0 5px 5px #cccccc;
            transition: box-shadow,margin-top,height 0.7s,0.5s,0.5s; */
            -webkit-transition: box-shadow,margin-top,height 0.7s,0.5s,0.5s; */
        }
        .index-card .panel:hover{
            box-shadow: 0 12px 20px #bfbfbf;
            margin-top: -5px;
            height: 230px;
        }
        .index-card .panel-body{
            height: 135px;
            /* border: solid; */
        }
        .index-card .course-card-bottom{
            padding: 15px;
            padding-top: 0px;

        }
        .index-card a{
            text-decoration-line: none;
            color: #000000;
        }
        .index-card .panel-content{
            background-color: #ffffff;
        }
        .course-type1 .panel-heading{
        background: -webkit-linear-gradient(left, rgba(250, 108, 155, 0.95), rgba(250,137,250,0.7)); /* Safari 5.1 - 6.0 */
        background: linear-gradient(to right, rgba(250, 108, 155, 0.95), rgba(250,137,250,0.7));
        }
        .course-type2 .panel-heading{ /* Safari 5.1 - 6.0 */
        background: -webkit-linear-gradient(left, rgba(160, 180, 250, 0.95), rgba(247,161,244,0.7));
        background: linear-gradient(to right, rgba(160, 180, 250, 0.95), rgba(247,161,244,0.7));
        }
        .course-type3 .panel-heading{
        background: -webkit-linear-gradient(left, rgba(48,186, 53, 0.95), rgba(72,224,140,0.7)); /* Safari 5.1 - 6.0 */
        background: linear-gradient(to right, rgba(48,186, 53, 0.95),5 rgba(72,224,140,0.7));
        }
        .course-type4 .panel-heading{
        background: -webkit-linear-gradient(left, rgba(255,183, 0, 0.95), rgba(225,223,82,0.7)); /* Safari 5.1 - 6.0 */
        background: linear-gradient(to right, rgba(255,183, 0, 0.95), rgba(225,223,82,0.7));
        }
        .course-type5 .panel-heading{
        background: -webkit-linear-gradient(left, rgba(6,250, 140, 0.95), rgba(111,167,216,0.7)); Safari 5.1 - 6.0
        background: linear-gradient(to right, rgba(6,250, 140, 0.95), rgba(6,250, 140, 0.7));
        }
        .course-nav-row{
        	padding:10px 0;
        	border-bottom: solid #cccccc 1px ;
        }
        .course-nav-box ul a{
        	margin: 0 20px 5px;
        }
        .pager-num{
        	margin-right: 20px;
        }
        .tool-right a{
        	text-decoration: none;
        }
        .page-btn{
        	background-color: #d9dde1;
        	padding: 5px;
        	width: 20px;
        	height: 20px; 
        	/* border: none;  */
        	border-radius: 50%;
        	color: white;
        	font-size: 10px;
        }
        .course-nav-row .nav-pills > li.active > a,
		.course-nav-row .nav-pills > li.active > a:hover,
		.course-nav-row .nav-pills > li.active > a:focus {
		  color: #fff;
		  background-color: #14191e;
		}
		.course-nav-box .nav-pills > li.active > a,
		.course-nav-box .nav-pills > li.active > a:hover,
		.course-nav-box .nav-pills > li.active > a:focus {
		  color: #fff;
		  background-color: #14191e;
		}
		.course-tool-bar .nav-pills > li.active > a,
		.course-tool-bar .nav-pills > li.active > a:hover,
		.course-tool-bar .nav-pills > li.active > a:focus {
		  color: #f01414;
		  background-color: white;
		}
				.search-form-ipt{float:left;width:560px;height:48px;box-sizing:border-box;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;padding:0 16px 0 52px;font-size:16px;color:#b7bbbf}.search-main .icon-search{position:absolute;font-size:24px;color:#b7bbbf;left:16px;bottom:12px}.search-main .search-form-ipt:focus{color:#14191e}
.search-form-btn{float:left;width:80px;height:48px;font-size:16px;line-height:48px;text-align:center;color:#fff;background-color:#f01414;cursor:pointer}.search-main .search-form-btn:hover{background-color:#c81414}
      .search-form{width:640px;margin-left:auto;margin-right:auto;padding-top:36px;position:relative}
      .search-related{height:40px;line-height:40px;font-size:12px;color:#93999f;padding-left:24px;background-color:#f3f5f7}.
    </style>
    <script>
            (function($){
            $.fn.hoverDelay = function(options){
            var defaults = {
            hoverDuring: 200,
            outDuring: 200,
            hoverEvent: function(){
            $.noop();
            },
            outEvent: function(){
            $.noop();
            }
            };
            var sets = $.extend(defaults,options || {});
            var hoverTimer, outTimer;
            return $(this).each(function(){
            $(this).hover(function(){
            clearTimeout(outTimer);
            hoverTimer = setTimeout(sets.hoverEvent, sets.hoverDuring);
            },function(){
            clearTimeout(hoverTimer);
            outTimer = setTimeout(sets.outEvent, sets.outDuring);
            });
            });
            }
            })(jQuery);
        
    $(function(){
        $("#login-modal").click(function(){
            $("#ls-tab a:first").tab("show");
        });
         $("#signup-modal").click(function(){
            $("#ls-tab a:last").tab("show");
        });
/*         $("#login-signup-modal,#purchase-vip-modal").on('show.bs.modal',function(){  
            $("#main").css("-webkit-filter","blur(5px)");
            // $("#navigation").css("-webkit-filter","blur(5px)");
        });
        $("#login-signup-modal,#purchase-vip-modal").on('hide.bs.modal',function(){  
            $("#main").css("-webkit-filter","none");
            // $("#navigation").css("-webkit-filter","none");
        }); */
        $("#avatar-btn").hoverDelay({
            hoverEvent: function(){
                $(".user-card-inner").slideDown();
                $("#user-avatar").animate({
                    top:'20px',
                    width: '80px',
                    right: '15px'     
                },200);
            },
            outEvent: function(){
                if(!$(".user-card-inner:hover").length){
                    $(".user-card-inner").slideUp();
                    $("#user-avatar").animate({
                        top:'0px',
                        width: '45px',
                        right: '0px'     
                    },200);
                }
            }
        });
        $(".user-card-inner,#user-avatar").hoverDelay({
           outEvent: function(){ 
            $(".user-card-inner").slideUp();
            $("#user-avatar").animate({
                top:'0px',
                width: '45px',
                right: '0px'
                },200);
            }    
        });
        $("#history-btn").hoverDelay({
            hoverEvent: function(){
                $(".user-history-inner").slideDown();
            },
            outEvent:function(){
                if(!$(".user-history-inner:hover").length){
                    $(".user-history-inner").slideUp();
                }
            }
        });
        $(".user-history-inner").hoverDelay({
            outEvent: function(){
                $(".user-history-inner").slideUp();
            }
        });
        $(".course-nav-row-dir li").click(function(){
        	$(".course-nav-row-dir li").removeClass('active');
        	$(this).addClass('active');
        });
        $(".course-nav-row-cla li").click(function(){
        	$(".course-nav-row-cla li").removeClass('active');
        	$(this).addClass('active');
        });
        $(".course-tool-bar li").click(function(){
        	$(".course-tool-bar li").removeClass('active');
        	$(this).addClass('active');
        });
        $(".page li.pagina-num").click(function(){
        	$(".page li.pagina-num").removeClass('active');
        	$(this).addClass('active');
        });
    });
    </script>
</head>
<body>
	<nav class="navbar navbar-inverse" role="navigation" id="navigation">
	    <div class="mask-container" style="overflow: hidden;">
	        <div id="navbar-mask">
	        </div>
	    </div>
    	<div class="container" id="navbar-conatiner">
        	<div class="row" >
                <div class="col-md-12" id="navbar-top">
                    <div>
                        <div class="navbar-header">
<<<<<<< .mine
                        <img src="http://localhost:8080/studyonline/resources/images/logo.png" alt="" style="width: 55px;float: left;padding-top: 3px;margin-right: 10px;">
                            <a href="http://localhost:8080/studyonline/icourse.jsp" class="navbar-brand" id="title">
                                <p style="min-width:150px;font-family: myFirstFont;">精品课程网</p>
=======
                        <img src="resources/images/logo.png" alt="" style="width: 55px;float: left;padding-top: 3px;margin-right: 10px;">
                            <a href="icourse.jsp" class="navbar-brand" id="title">
                                <p style="min-width:150px;font-family: myFirstFont;">精品课程网</p>
>>>>>>> .r155
                            </a>
                        </div>
                    </div>
                    <div class="nav navbar-nav navbar-left hidden-xs">
                        <ul class="nav navbar-nav nav-pills custom-ul">
                            <li><a href="icourse.jsp">首页</a></li>
		                    <li><a href="courseIndex.jsp">课程</a></li>
		                    <li><a href="question.jsp">问答</a></li>
                        </ul>
                    </div>
                    <div class="nav navbar navbar-right hidden-sm hidden-xs login-none" >
                        <ul class="nav navbar-nav nav-pills custom-ul">
                            <li style="padding-top: 5px;display:list-item;">
                                <form action="" class="navbar-form input-group">
                                    <div class="form-group form-group-sm">
                                        <input type="text" class="form-control" placeholder="Search"   id="searchs1">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default btn-sm"  id="search-btn"  type="button"><span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </span>
                                    </div>
                                </form>
                            </li>               
                          
                            <li style="display:list-item;"><a href="#" data-toggle="modal" data-target="#login-signup-modal" id="login-modal">登陆</a></li>
                            <li style="display:list-item;"><a href="#" data-toggle="modal" data-target="#login-signup-modal" id="signup-modal">注册</a></li>
                        </ul>
                    </div>
                    <div class="nav navbar navbar-right hidden-sm hidden-xs login-ready"  style="display:none;">
                        <ul class="nav navbar-nav nav-pills nav-menu">
                            <li style="padding-top: 5px; display:list-item;">
                                <form action="" class="navbar-form input-group ">
                                    <div class="form-group form-group-sm">
                                        <input type="text" class="form-control" placeholder="Search"  id="searchs2">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default btn-sm" id="search-btn2"  type="button"><span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </span>
                                    </div>
                                </form>
                            </li>
                            <li class="user-card" style="display:list-item; width: 60px; height: 60px;">
                                    <a href="#" style="padding: 5px;line-height: 30px; height: 60px;" id="avatar-btn">
                                         <img class="img-circle" src="resources/images/logo.jpg" alt="" id="user-avatar">
                                    </a>
                                    <div class="user-card-inner" style="display:none;" >
                                            <div class="user-name" style="">
                                                 <p><h4 style="text-align: center;">王日天</h4></p>
                                            </div>
                                            <div class="user-info" style="padding:15px;">
                                                <div class="user-status" style="border-bottom: 1px solid #e5e9ef;">
                                                    <p style="text-align:center;">身份:会员</p>
                                                </div>
                                                <div>
                                                    <ul style="padding: 30px; padding-bottom: 0px;">
                                                        <li style="margin-bottom: 20px; display: list-item; list-style-type:none; text-align: center;"><a href="#"><span style="height: 28px;font-size:15px;" class="glyphicon glyphicon-user">个人信息</span></a></li>
                                                        <li style="display: list-item; list-style-type:none; text-align: center;"><a href="userHome.jsp"><span style="height: 28px;
                                                        font-size:15px;" class="glyphicon glyphicon-bookmark">我的课程</a></li>
                                                    </ul>
                                                </div>
                                                
                                            </div>
                                            <div class="user-card-bottom" style="height: 30px; text-align:right; background-color:#f4f5f7">
                                                <a href="#" style="line-height:30px; margin-right:5px;" id="logout-btn">退出</a>
                                            </div>
                                    </div>
                            </li>
                          <!--   <li style="display:list-item;"><a href="#" data-toggle="modal" data-target="#purchase-vip-modal" style="color: gold; height: 60px;line-height: 25px;">VIP</a></li> -->
                            <li style="display:list-item;">
                                <a href="#" style="font-size: 20px; line-height: 30px; height: 60px;"> 
                                <span class="glyphicon glyphicon-bell"></span>
                                </a>
                            </li>
                            <li class="user-history" style="display:list-item; width: 60px; height: 60px;">
                                <a href="#" style="height: 60px; line-height: 25px;" id="history-btn">
                                历史
                                </a>
                                <div class="user-history-inner" style="display: none;">
                                    <div class="user-histoty-top" style="padding: 15px; padding-right: 0px; padding-bottom: 5px;">
                                        <p>历史记录————————————————————</p>
                                    </div>
                                    <div class="user-history-list" style="padding: 15px;">
                                        <ul style="padding-left: 20px;">
                                            <li><a href="#"><div class="history-info"><p style="display: inline-block; width: 250px;">番号：KRAY-0080</p><p style="display: inline-block; float: right;">17.1.1</p></div></a></li>
                                            <li><a href="#"><div class="history-info"><p style="display: inline-block; width: 250px;">番号：MDTM-248</p><p style="display: inline-block; float: right;">17.1.1</p></div></a> </li>
                                            <li><a href="#"><div class="history-info"><p style="display: inline-block; width: 250px;">番号：IPZ-956</p><p style="display: inline-block; float: right;">17.1.1</p></div></a></li>
                                            <li><a href="#"><div class="history-info"><p style="display: inline-block; width: 250px;">番号：DVAJ-234</p><p style="display: inline-block; float: right;">17.1.1</p></div></a></li>
                                            <li><a href="#"><div class="history-info"><p style="display: inline-block; width: 220px;">番号：ABP-597</p><p style="display: inline-block; float: right;">17.1.1</p></div></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <div style="clear: both;"></div>
    <div id="main">
    	<div class="search-index-bar">
	    	<div class="course-nav-box container">
			                <div class="" style="text-align: center;">
                    <div class="search-form clearfix">
		    	
			    <input type="text" class="search-form-ipt js-search-ipt" value="java"   id="searchs" placeholder="请输入想搜索的内容">
			            <span class="search-form-btn js-search-btn">搜索</span>
		            	<ul class="search-area-prge js-search-area-prge"></ul>
		        </div>
                </div>
	    	</div>
    	</div>
    	<div class="course-search-list">
	    	<div class="container">
				<div class="course-tool-bar" style="padding:15px;">
						
												
								<div class="search-related">
			                             
		                       </div>

<!-- 					<div class="tool-right" style="display: inline-block; vertical-align: top; float: right; padding:15px;">
						<span class="pager-num">
							<span class="pager-cur">1</span>/
							<span class="pager-total">10</span>
						</span>
						<span class="page-down">
							<a class="page-btn glyphicon glyphicon-chevron-left"></a>
						</span>
						<span class="page-up">
							<a class="page-btn glyphicon glyphicon-chevron-right"></a>
						</span>
					</div> -->
				</div>
				<div class="course-list">
					<div class="index-card"  id="allc">
<!--                         <div class="panel course-type5" style="background-image: url('./images/videobg/cover001_s.jpg');background-repeat: no-repeat;">
                            <a href="#">
                                <div class="panel-heading" id="course-type1">
                                    <h4 class="panel-title" style="line-height: 28px;text-align: center;">233</h4>
                                </div>
                                <div class="panel-content">
                                    <div class="panel-body">
                                        <h4>JS实现京东无延迟菜单效果</h4>
                                        <p>JS实现京东无延迟菜单效果</p>
                                    </div>
                                    <div class="course-card-bottom">
                                        <div style="display: inline-block;" class="course-card-info">12人在学</div>
                                        <div style="float: right; display: inline-block;" class="course-card-prise">Free</div>
                                    </div>  
                                </div>
                            </a> 
                        </div>                    
                        <div class="panel course-type4" style="background-image: url('./images/videobg/cover010_s.jpg'); background-repeat: no-repeat;">
                            <a href="">
                                <div class="panel-heading">
                                    <h4 class="panel-title" style="line-height: 28px;text-align: center;">233</h4>
                                </div>
                                <div class="panel-content">
                                    <div class="panel-body">
                                        <h4>自定义实现日历控件</h4>
                                        <p>轻松掌握Android 自定义控件实现</p>
                                    </div>
                                    <div class="course-card-bottom">
                                        <div style="display: inline-block;" class="course-card-info">12人在学</div>
                                        <div style="float: right; display: inline-block;" class="course-card-prise">Free</div>
                                    </div> 
                                </div>  
                            </a>
                        </div>
                        <div class="panel course-type3" style="background-image: url('./images/videobg/cover014_s.jpg'); background-repeat: no-repeat;">
                            <a href="">
                                <div class="panel-heading">
                                    <h4 class="panel-title" style="line-height: 28px;text-align: center;">233</h4>
                                </div>
                                <div class="panel-content">
                                    <div class="panel-body">
                                        <h4>bootstrap快速入门</h4>
                                        <p>bootstrap是目前最流行的框架之一，能够带你快速搭建网页！</p>
                                    </div>
                                    <div class="course-card-bottom">
                                        <div style="display: inline-block;" class="course-card-info">12人在学</div>
                                        <div style="float: right; display: inline-block;" class="course-card-prise">Free</div>
                                    </div>
                                </div>
                            </a>   
                        </div>
                        <div class="panel course-type2" style="background-image: url('./images/videobg/cover012_s.jpg'); background-repeat: no-repeat;">
                            <a href="">
                                <div class="panel-heading">
                                    <h4 class="panel-title" style="line-height: 28px; text-align: center;">233</h4>
                                </div>
                                <div class="panel-content">
                                    <div class="panel-body">
                                        <h4>bootstrap快速入门</h4>
                                        <p>bootstrap是目前最流行的框架之一，能够带你快速搭建网页！</p>
                                    </div>
                                    <div class="course-card-bottom">
                                        <div style="display: inline-block;" class="course-card-info">12人在学</div>
                                        <div style="float: right; display: inline-block;" class="course-card-prise">Free</div>
                                    </div>   
                                </div>
                            </a>
                        </div>
                        <div class="panel course-type1" style="margin-right: 0px;background-image: url('./images/videobg/cover013_s.jpg'); background-repeat: no-repeat;">
                            <a href="">
                                <div class="panel-heading">
                                    <h4 class="panel-title" style="line-height: 28px;text-align: center;">233</h4>
                                </div>
                                <div class="panel-content">
                                    <div class="panel-body">
                                        <h4>bootstrap快速入门</h4>
                                        <p>bootstrap是目前最流行的框架之一，能够带你快速搭建网页！</p>
                                    </div>
                                    <div class="course-card-bottom">
                                        <div style="display: inline-block;" class="course-card-info">12人在学</div>
                                        <div style="float: right; display: inline-block;" class="course-card-prise">Free</div>
                                    </div>   
                                </div>
                            </a>
                        </div>  -->
				</div>

					<div id="page"></div>
</div>
    	</div>
    </div>
        <div class="footer">
            <div class="container">
                <div class="footer-sns" style="text-align: center;padding-top: 25px;">
                    <a href="#">
                        <img src="resources/images/alipay.jpg" alt="" style="height:32px;">
                    </a>
                    <a href="#">
                        <img src="resources/images/wechat.jpg" alt="" style="height:28px;">
                    </a>
                </div>
                <div class="link">
                    <a href="#">联系我们</a>
                    <a href="#">关于我们</a>
                    <a href="#">意见反馈</a>
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
                                                <input type="text" class="form-control " id="account" placeholder="请输入账号" style="height: 40px;"> 
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <input type="password" class="form-control" id="inputPassword1" placeholder="请输入密码" style="height: 40px;">
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
                                                <a style="line-height: 35px;" href="#">忘记密码</a>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <button type="button" class="btn btn-lg btn-primary" style="width: 100%;" id="login-btn">登录</button>
                                            </div>
                                        </div>          
                                </div>
                            </div>
                            <div class="tab-pane fade" id="signup">
                                <div class="register">
                                    <div class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <input type="text" class="form-control " id="account1" placeholder="请输入账号" style="height: 40px;">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <input type="password" class="form-control" id="inputPassword2" placeholder="请输入密码" style="height: 40px;">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <input type="password" class="form-control" id="inputPassword3" placeholder="请再次确认密码" style="height: 40px;"  >
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <button type="button" class="btn btn-lg btn-danger" style="width: 100%; margin-top: 15px;" onclick="toregister();">注册</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="registr-success"  style="display:none; style="display:none;>
                                    <form action="" class="form-horizontal">
                                        <div class="alert alert-success" style="text-align: center;" >注册成功！</div>                                
                                        <div class="form-group">                                       
                                            <div class="col-md-12">
                                                <button type="button" class="btn btn-lg btn-danger" data-dismiss="modal" style="width: 100%;">确定</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="registr-fault"  style="display:none;">
                                    <form action="" class="form-horizontal">
                                        <div class="alert alert-danger" style="text-align: center;" >
                                        注册错误！
                                        </div>                                  
                                        <div class="form-group">                                       
                                            <div class="col-md-12">
                                                <button type="button" class="btn btn-lg btn-danger" data-dismiss="modal" style="width: 100%;">返回</button>
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
    </body>
    <script type="text/javascript">
    var curWwwPath=window.document.location.href; 

  //获取主机地址之后的目录如：/Tmall/index.jsp 
  var pathName=window.document.location.pathname; 
  var pos=curWwwPath.indexOf(pathName); 
  toastr.options = {  
	        positionClass: "toast-center-center",  
	        "showDuration": "1000",//显示的动画时间
	        "hideDuration": "1000",//消失的动画时间
	        "timeOut": "1000", //展现时间
	}
  //获取主机地址，如： http://localhost:8080 
  var localhostPath=curWwwPath.substring(0,pos); 

  //获取带"/"的项目名，如：/Tmall 
  var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1); 
  //项目路径
  var basePath = localhostPath + projectName;


	function count(searchstr){
		   /* alert("f:"+f+"s:"+s); */
		   $.ajax({
     		type:"post",
     		url: basePath +"/courseManger/countCoursesearch",
     		dataType:"text",
     		data:{
     			s:searchstr
     		},
     		success:function(pdata){
     			/* alert("记录"+pdata); */
     			$('.search-related').text('共找到'+pdata+'个相关内容');
     			if(pdata!=0) pdata=Math.ceil(pdata/15);
     		    $("#page").Page({
     		        totalPages:pdata,//total Pages
     		        liNums: 7,//the li numbers(advice use odd)
     		        activeClass: 'activP', //active class style
     		        firstPage: '首',//first button name
     		        lastPage: '末',//last button name
     		        callBack : function(page){
     		        	/* alert("sss"+s+"fff"+f); */
     		        	turnto((page-1)*15,15,searchstr);
     		        }
     		    });
     		},
		   error:function(){
			    $("#page").Page({
			        totalPages:0,//total Pages
			        liNums: 7,//the li numbers(advice use odd)
			        activeClass: 'activP', //active class style
			        firstPage: '首',//first button name
			        lastPage: '末',//last button name
			        callBack : function(page){
			        	/* turnto(a,b,c,d); */
			        }
			    });
		   }
     	})
	}
	
	function turnto(a,b,d){
		
		 $.ajax({
     		type:"post",
     		url: basePath +"/courseManger/findCourselimt3",
     		dataType:"json",
     		data:{
	        		  start:a,
			           pre:b,
			           s:d
	         },
     		success:function(data2){
     			$('#allc').html("");
     			var html="";
     			var ccc=new Array("1","2","3","7","10","11","12","13");
     			$.each(data2, function(n, data2){
     				  var kk=parseInt(8*Math.random()); 
     				
     				  html+="<div class='panel' style='background: url(resources/images/vediobg/"+ccc[kk]+".jpg);background-repeat: no-repeat;'>";
     	             html+="<a href='student/CourseInfo/"+data2.id+"'>";
     	               html+=" <div class='panel-heading' >";
     	             html+="  <h4 class='panel-title' style='line-height: 28px;text-align: center;'>"+data2.secclassname+"</h4>";
     	            	 html+="  </div>";
     	             html+="<div class='panel-content'>";
     	             html+=" <div class='panel-body'>";
     	            	 html+="    <h4>"+data2.coursename+"</h4>";
     	            	 html+="   <p>"+data2.describe+"</p>";
     	            	 html+="   </div>";
     	            	html+="   <div class='course-card-bottom'>";
     	            	 html+="   <div style='display: inline-block;' class='course-card-info'>"+data2.studycount+"人在学</div>";
     	            		 html+="   <div style='float: right; display: inline-block;' class='course-card-prise'>Free</div>";
     	            		 html+="  </div>";
     	            	 html+="   </div>";
     	            	 html+="  </a> ";
     	            		html+="  </div> ";
     			})
     			$('#allc').html(html);
     			/* alert(data2) ; */
     	}
	})
	}
	  function toregister(){
	        var account=$('#account1').val();
	        var psw1=$('#inputPassword2').val();
	        var psw2=$('#inputPassword3').val();
	        if(account==""){
	     	   toastr.error('请输入用户名');
	     		 $('#account1').focus();
	     	   return;
	        }
	        if(psw1==""){
	     	   toastr.error('请输入密码');
	     		 $('#inputPassword2').focus();
	     	   return;
	        }
	        if(psw2==""){
	     	   toastr.error('请输入密码');
	     		 $('#inputPassword3').focus();
	     	   return;
	        }
	        if(psw2!=psw1){
	     	   toastr.error('两次密码不一致');
	     		 $('#inputPassword3').focus();
	     	   return;
	        }
	    		$.ajax({
	    			url: basePath +"/userManger/addUser",
	    			type: "POST", 
	    			contentType:"application/json",
	    			data:JSON.stringify({
	     			username:account,
	     			password:psw2 ,
	     			nickname: account,
	     			sex: '男',
	     			birthday:"2000-01-01"
	     		 }),
	    			success:function(data){
	    				if("failed"==data){
	    					toastr.error('注册失败');
	    					 $('#account1').focus();
	    				}
	    				else{
	    				     window.location.reload();
	    				}
	    			}
	    	  })
	    	}
	   	
	 		$('#login-btn').click(function(){
	 			
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
	 			url: basePath +"/login/msgCheckstu",
	 			type: "POST", 
	 			data:{
	 				password:$('#inputPassword1').val(),
	 				username:$('#account').val(),
	 				 usertype:"student"
	 			},
	 			success:function(data){
	 				if(data=='success'){
	 					$('.login-ready').show();
	 					$('.login-none').css('display','none');
	 					window.location.reload();
	 					/* toastr.success('欢迎你，'+"${message.nickname}"); */
	 				}else{
	 					toastr.error('用户名或密码错误');
	 				}
	 			}
	 		}) 
	 			
	 		})
	 		
	 		$('#logout-btn').click(function(){
	 			$('.login-ready').css('display','none');
	 			$('.login-none').show();
	 		 	$.ajax({
	 				url: basePath +"/login/logout",
	 				type: "POST", 
	 				success:function(data){
	 					window.location.reload();
	 				}
	 		  })
	 		})
	 		
	 		$('.close').click(function(){
	 			$('#account1').val("");
	 		    $('#inputPassword2').val("");
	 		    $('#inputPassword3').val("");
	 		    $('#account').val("");
	 		    $('#inputPassword1').val("");
	 		})
	 		$('.search-form-btn').click(function(){
	 			var x=$('#searchs').val();
	 			if(x=="") return ;
	 			location.href=(window.location.pathname)+'?word='+x;
	 		})
	 		
	 	 $('#search-btn').click(function(){
	    	    
	    		var x=$('#searchs1').val();
// 	    		alert(x);
	 			if(x=="") {
	 				location.href= basePath+'/Search.jsp';
	 			}
	 			location.href= basePath+'/Search.jsp?word='+x;
	     })
	       $('#search-btn2').click(function(){
	    	    
	    		var x=$('#searchs2').val();
// 	    		alert(x);
	 			if(x=="") {
	 				location.href= basePath+'/Search.jsp';
	 			}
	 			location.href= basePath+'/Search.jsp?word='+x;
	     })
	function GetQueryString(name){
	     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
	     var r = window.location.search.substr(1).match(reg);
	     if(r!=null)return decodeURI(r[2]); return null;   
	}
	 		
$(function(){  	
	var Searchby = GetQueryString("word");
	$('.search-related').text("");
	if(Searchby !=null&&Searchby!=""){
// 		  alert(Searchby);
		   $('#searchs').val(Searchby );
			count(Searchby);
			turnto(0,15,Searchby);
		
	}
	

	var xx="${identify}";
	var uid='${message.username}';
	if(xx!=null&&xx=='student'){
		$('.login-ready').show();
		$('.login-none').css('display','none');
		$('.user-name h4').text("${message.nickname}");
		var c="${message.pic}";
		if(c!=null&&c!=""){
			$('#user-avatar').attr('src',"${message.pic}");
		}
	}
});
</script>

</html>
