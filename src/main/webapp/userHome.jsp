<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>User-Home</title>
	<link rel="stylesheet" href="resources/css/bootstrap.css">
	<script src='resources/assets/js/jquery-2.0.3.min.js'></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="resources/js/toastr.min.js"></script>
    <link href="resources/css/toastr.css" rel="stylesheet">
    <script type="text/javascript" src="resources/js/toastr.min.js"></script> 
    <script src="resources/js/jquery-form.js"></script>


    <style type="text/css" media="screen">
    .not-conts {
    font-size: 18px;
    color: #b5b9bc;
    text-align: center;
    padding: 145px 0 240px;
}
.not-conts .find-course {
    color: #f01400;
}        .del-post{
        	margin-left:10px;
        }
        .del-post:hover{
        	color:#426ab3;
        	cursor:pointer;
        }

    	@font-face{
            font-family: myFirstFont;
            src: url('resources/fonts/jianti.ttf')
            ,url('resources/fonts/jianti.ttf'); /* IE9 */
        }
        @font-face{
            font-family: titleFont;
            src: url('resources/fonts/bold.ttf')
            ,url('resources/fonts/bold.ttf'); /* IE9 */
        }
        body{
            background-color: #fff;
        }
        nav{
        height: 300px;
        }
         .questioner-question-title a{
            display: block;
            line-height: 46px;
            font-size:23px;
            margin-right: 30px;
             word-break: break-all;
              margin-left: 15px;
    }
            .questioner-footer{
            color: #787d82;
            width: 100%;
        }
         .questioner-question-title a:visited{
            color:  #14191e;
        }
        .questioner-question-title a:hover{
               color:  #ec1500;
                text-decoration:none;
        }
          a:hover{
                text-decoration:none;
        }
         .course-question-tab{
            padding:20px 10px;
            border-bottom: solid #cccccc 1px;
        }
        .questioner-avtar{
            float: left;
        }
      .questioner-name{
         height: 20px;
		    font-size: 12px;
		    line-height: 20px;
		    overflow: hidden;
		    color: #787d82;
		     margin-left: 15px;
        }
        .questioner-name a {
             font-size: 12px;
            color: #787d82;
              margin-left: 15px;
           }
        .questioner-detail{
            margin-left: 70px;
        }
        .replycont{
            margin-bottom: 10px;
        }
        .questioner-footer{
            width: 100%;
            margin-bottom: -15px;
        }
        .questioner-footer-left{
            display: inline-block;
        }
        .questioner-footer-right{
            display: inline-block;float: right;
        }
        .del-post{
        	margin-left:10px;
        }
        .del-post:hover{
        	color:#426ab3;
        	cursor:pointer;
        }
        #main{
        	height: 1000px;
        }
        .search-btn{
        border-color: #fff;
        }
        #title{
        font-size: 30px;
        }
        #navigation{
        background-image: url(resources/images/nav.jpg);
        background-position: top;
        background-repeat: no-repeat;
        background-size: 100%;
        background-attachment: fixed;
        border-bottom: 0px;
        box-shadow: 0 3px 10px #cccccc;
        min-width: 1024px;
        
        }
        #navbar-mask{
        background-image: url(resources/images/nav.jpg);
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
        	margin-top: 200px;
            height: 180px;
            bottom: 0px;
            background-color: #000000;
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
            width: 100px;
            display: inline-block;
            margin-right: 60px;
            margin-bottom: 15px;
        }
        #avatar-btn img{
            position: relative;
            width: 45px;
            z-index: 1000;
        }
        .user-card-inner{
            position: relative; 
            padding-top: 50px; 
            left: 30px;
            margin-left: -115px; 
            width:230px; 
            z-index: 999; 
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
        #main a{
            text-decoration: none;
        }
        /* #main  a:link{
            font-size: 12px;
            color: #93999f;
        }
        #main  a:visited{
            color: #5e5e5e;
        } 
        #main  a:hover{
            color: #14191e;
        }
        #main  a:active{
            color: #14191e;
        } */
        .home-user-info-head{
        	position: relative; 
        	min-width: 1140px;
        	margin-top: -230px; 
        	z-index: 5;
        	
        }
        .home-user-info{
        	height: 170px;
        }
        .home-user-name{
        	color: white;
        	margin-top: 50px;
        	font-family: titleFont;
        	/* text-align: center; */
        	font-size: 32px;
        	font-weight: 900;
        	/* text-shadow: 0 3px 3px #cccccc; */
        }
        .home-user-status{
        	margin-left: 10px;
    	    color: #fff;
		    line-height: 24px;
		    text-align: left;
		    margin-top: 6px;
        }
        .home-user-location{
    	    color: #fff;
		    line-height: 24px;
		    text-align: left;
		    margin-top: 6px;
        }
        .home-user-desc{
    	    font-size: 14px;
		    line-height: 24px;
		    color: #fff;
		    text-align: left;
		    margin-top: 20px;
		    word-break: break-all;
		    word-wrap: break-word;
		    opacity: .5;
        }
        .follows-num{
        	margin-right: 40px;
        }
        .follows-num a{
    	    display: block;
		    font-size: 18px;
		    line-height: 24px;
		    color: #fff;
		    text-align: center;
		    font-weight: 700;
        }
        .follows-num span{
		    display: block;
		    font-size: 14px;
		    color: #fff;
		    line-height: 24px;
		    text-align: center;
		    opacity: .5;
        }
        .fans-num a{
	    	display: block;
			font-size: 18px;
			line-height: 24px;
			color: #fff;
			text-align: center;
			font-weight: 700;
        }
        .fans-num span{
	    	display: block;
		    font-size: 14px;
		    color: #fff;
		    line-height: 24px;
		    text-align: center;
		    opacity: .5;
        }
        .home-study-info{
        	text-align: right;
        	position: relative;
        	margin-top: -55px;
        }
        .home-navbar{
        	margin-top: 20px;
        }
        .slider ul a{
		    display: block;
		    height: 60px;
		    font-size: 16px;
		    line-height: 60px;
		    padding: 0;
		    text-align: center;
		    color: #787d82;
		    border-bottom: 1px #bfbfbf solid;
		}
		.slider ul li.active a{
		    color: #F01400;
		}
		.slider ul li .glyphicon{
			position: relative;
			right: 40px;
		}
		.caret-right{
			display: inline-block;
			position: relative;
			top: -2px;
			width: 0;
			height: 0;
			margin-left: 2px;
			vertical-align: middle;
			border-top: 4px solid transparent;
			border-left: 4px solid;
			border-bottom: 4px solid transparent;
			left: 40px;
		}
		.home-user-ctool-bar{
			height: 60px;
			margin: 0 0 15px 0;
			padding: 0 15px; 
			border-bottom: 1px #bfbfbf solid;
		}
		.home-user-ctool-bar .tool-left .nav-pills a{
			color: #787d82;
			height: 60px;
			line-height: 40px;
			margin: 0 15px; padding: 10px 0;
		}
		.home-user-ctool-bar .tool-right{
			display: inline-block; 
			float: right;
		}
		.home-user-ctool-bar .tool-right .dropdown-toggle span{
			margin-left: 10px;
		}
		.home-user-ctool-bar .tool-right .nav-pills li{
			width: 100%;
		}
		.home-user-ctool-bar .tool-right .nav-pills a{
			color: #787d82;
			height: 60px;
			line-height: 40px;
		}
		.dropdown-course  p{
			cursor: pointer;
			color: #787d82;
			background-color: white;
			height: 60px;
			line-height: 40px;
			border-radius: 0px; 
			border-bottom: solid 1px #bfbfbf;
			margin: 0 15px; padding: 10px 0;
		}
		.home-user-ctool-bar .tool-left .nav-pills > li > a:hover{
			color: #f01414;
		    background-color: white;
		    border-bottom: solid 1px #f01414;
		    border-radius: 0px;
		}
		.home-user-ctool-bar .tool-right .nav-pills > li > a:focus{
			outline: none;
		}
		.home-user-ctool-bar .tool-left .nav-pills > li.active > a,
		.home-user-ctool-bar .tool-left .nav-pills > li.active > a:hover,
		.home-user-ctool-bar .tool-left .nav-pills > li.active > a:focus {
		  color: #f01414;
		  background-color: white;
		  border-bottom: solid 2px #f01414;
		  border-radius: 0px; 
		}
		.home-user-ctool-bar .tool-right .nav-pills > li.active > a,
		.home-user-ctool-bar .tool-right .nav-pills > li.active > a:hover,
		.home-user-ctool-bar .tool-right .nav-pills > li.active > a:focus {
		  color: #787d82;
		  background-color: white;
		  border-bottom: solid 1px #787d82;
		  border-radius: 0px; 
		}
		.course-item-time{
			padding: 30px 0 0 15px;
		}
		.course-item-time .border-dotted{
			float: left;
			margin-left: 61px;
			width: 10px;
			height: 10px;
			font-size: 10px;
			background: #d0d6d9; 
			border-radius: 25px;
		}
		.course-item-time .year{
		    font-size: 18px;
    		font-weight: 400;
    		color: #8a8c8f;
    		margin-bottom: 2px;
		}
		.course-item-time .data{
		    line-height: 16px;
		    font-size: 12px;
		    color: #8a8c8f;
		}
		.my-space-course-list{
			/* padding-left: 70px; */
		}
		.course-list-item-content-container{
			margin-left: 80px;
		    border-left: 1px solid #d3d7da;
		}
		.course-list-item-content{
			padding:30px 0; 
			border-bottom: solid 1px #eff1f0;  
			margin-left: 37px;
		}
		.course-list-item-cover{
			background-image: url('./images/course/course.jpg');
			width: 200px;height: 115px;
			overflow: hidden;
		}
		.course-cover{
		}
		.course-list-item-info{
			width: 550px;
		}
		.course-list-item-info{
			margin-left: 20px;
			height: 115px;
		}
		.course-item-name{
		    font-size: 18px;
		    color: #12171b;
		    height: 29px;
		    line-height: 29px;
	        font-weight: 700;
		}
		.item-study-status{
			padding: 10px 0;
		}
		.item-study-status .learn-rate{
			color: #f01400;
		}
		.span-commom{
		    font-size: 14px;
    		color: #787d82;
    		margin-right: 25px;
		}
		.span-commom a{
			font-size: 14px;
    		color: #787d82;
    		margin-right: 25px;
		}
		.item-catog-status{
			padding-top: 15px;
		}
		.continue-btn{
			float: right;
		}
		.continue-btn button{
			color: #f01400;
			border:solid 1px #f01400;
			margin-top: -10px;
			width: 92px;height: 40px;
		}
		.continue-btn button{
			-webkit-transition:background-color,color 0.5s,0.5s;
			background-color: white;
		}
		.continue-btn button:hover{
		    background-color: #f01400;
		 	color: #fff;
		}
		.first-item .course-list-item-content{
			margin-top: 25px;
			padding: 15px 0 30px 0; 
			border-bottom: solid 1px #eff1f0;  
			margin-left: 37px;
		}
		.first-item .course-item-time{
			padding: 0 0 0 15px;
		}
		.control-btn .dropdown-menu{
			left: -150px;
		}
		.control-btn .dropdown-menu li{
			width: 75px;
			height: 60px;
			float: left;
		}
		.control-btn .dropdown-menu a{
			color: #787d82;
			text-align: center;
			font-size: 18px;
			height: 30px;
			margin: 15px 10px;
		}
		.course-item-title .glyphicon{
			color: #787d82;
		}
		.course-page.content-container{
			margin-left: 240px; height: 1000px;width: 900px;
		}
		.home-user-ctool-bar .tool-left{
			display: inline-block; vertical-align: middle;
		}
		.my-space-course{
			height: 600px; width: 100%;
		}
		.course-item-time{
			float: left;
		}
		.course-list-item-cover{
			display: inline-block;
		}
		.course-list-item-info{
			display: inline-block;vertical-align: top;
		}
		.dropdown.control-btn{
			float:right
		}
		.course-list-item-info .course-item-name:hover{
			color: #f01414;
		}
		.home-user-avator .img-circle{
			height: 192px;
		}
		.warp{
			position: relative;
		}
		.slider{
			position: absolute; top:-250px;
		}
		.home-user-avator{
			position: relative; text-align: center; margin-top: 35px;
		}
		.home-user-avator .img-circle{
			border: solid 2px; vertical-align: center;
		}
		.slider .home-navbar{
			width: 200px;
		}
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
        $("#login-signup-modal,#purchase-vip-modal").on('show.bs.modal',function(){  
            $("#main").css("-webkit-filter","blur(5px)");
            // $("#navigation").css("-webkit-filter","blur(5px)");
        });
        $("#login-signup-modal,#purchase-vip-modal").on('hide.bs.modal',function(){  
            $("#main").css("-webkit-filter","none");
            // $("#navigation").css("-webkit-filter","none");
        });
        $("#avatar-btn").hoverDelay({
            hoverEvent: function(){
                $(".user-card-inner").slideDown();
                $("#user-avatar").animate({
                    top:'20px',
                    width: '80px',
                    right: '15px',
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
        $(".home-navbar ul li").click(function(){
        	$(".home-navbar ul li").removeClass('active');
        	$(this).addClass('active');
        });
        $(".home-user-ctool-bar .tool-left li").click(function(){
        	$(".home-user-ctool-bar .tool-left li").removeClass('active');
        	$(this).addClass('active');
        });
        $(".home-user-ctool-bar .tool-right .dropdown-menu a").click(function(){
        	var course_name=$(this).html();
        	$(".home-user-ctool-bar .tool-right .dropdown-course p").html(course_name);
        	$(".home-user-ctool-bar .tool-right .dropdown-course p").append("<span></span>");
        	$(".home-user-ctool-bar .tool-right .dropdown-course p span").addClass('caret');
        });
        $('#navTab a').click(function (e) {
		  e.preventDefault();
		  $(this).tab('show');
		});
		$(".course-list-item-info .control-btn .course-delete").click(function() {
			$(this).parents(".my-space-course-list-item").remove();
		});
		$(window).scroll(function(event) {
			var dch=$(document).scrollTop();
			
			// i += 1;
			// count[i]= dch;
			// $(".get-scroll").text(count[i-1]);
			// $(".get-scroll0").text(count[i]);
			if (dch>=106&&dch<220){
	
				$(".slider").css({"position":"fixed","top":"0"});
				$(".home-user-avator .img-circle").stop().animate({
					height: '140px',
				});
			}
			else if (dch<105){
			
				$(".slider").css({"position":"absolute","top":"-235px"});
				$(".home-user-avator .img-circle").stop().animate({
					height: "192px",
				});
			}else{
			      $(".slider").css({"position":"absolute","top":"-200px"});   
			}	
		});
		// $(function(){
		// var i = 0;
		// var count=new Array();
		// count[0]=0;
		// $(window).scroll(function(event) {
		// 	var dc=$(document).scrollTop();
		// 	i += 1;
		// 	count[i]= dc;
		// 	$(".get-scroll").text(count[i-1]);
		// 	$(".get-scroll0").text(count[i]);
		// 	if (dc>=130&&dc<250&&count[i-1]<count[i]){
		// 		$(".slider").css({"position":"fixed","top":"30px"});
		// 		$(".home-user-avator .img-circle").stop().animate({
		// 			height: "140px"
		// 		});
		// 	}
		// 	else if (dc<130&&count[i-1]>count[i]){
		// 		$(".slider").css({"position":"absolute","top":"-190px"});
		// 		$(".home-user-avator .img-circle").stop().animate({
		// 			height: "192px"
		// 		});
		// 	}	
		// });
		// }); 输了 输得透彻
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
                        <img src="resources/images/logo.png" alt="" style="width: 55px;float: left;padding-top: 3px;margin-right: 10px;">
                            <a href="icourse.jsp" class="navbar-brand" id="title">
                                <p style="min-width:150px;font-family: myFirstFont;">精品课程网</p>
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
            <!--                     <a href="#" style="height: 60px; line-height: 25px;" id="history-btn">
                                历史
                                </a> -->
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

    <div id="main" style="display:none">
    	<div class="container main-content">
			<!-- <div style="clear: both"></div> -->
	    	<div class="home-user-info-head">
	    		<div class="home-user-info" style="padding: 50px 250px 0;">
	    			<h3 class="home-user-name" style="margin-top: 0">
	    				${message.nickname }
	    			</h3>
	    			<p class="home-user-about-info">
	    				<span class="sexual"><img class="sexual-img" src="${message.sex=='男'?'resources/images/Male.png':'resources/images/female.png'}" alt="" style="width: 16px;"></span>
	    				<span class="home-user-status"> ${message.dept } </span>
	    				
	    			</p>
	    			<p class="home-user-desc">${message.userinfo }</p>
	    		</div>
<!-- 	    		<div class="home-study-info">
	    			<div class="follows-num" style="display: inline-block;">
	    				<a href="#">12</a>
	    				<span>关注</span>
	    			</div>
	    			<div class="fans-num" style="display: inline-block;">
	    				<a href="#">450</a>
	    				<span>粉丝</span>
	    			</div>
	    		</div> -->
	    	</div>
	    	
    	</div>
    	<div class="container warp">
    		<div class="slider">
    			<div class="home-navbar-content" >
    				<div class="home-user-avator">
    					<img class="img-circle" src="${message.pic==''||message.pic==null?'resources/images/avatar/wrt.jpg':message.pic}" alt="" style="border: solid 2px; vertical-align: center;">
    				</div>
    				<div class="home-navbar">
    					<ul class="nav nav-stacked" id="navTab">
    						<li><a href="#home-pane" data-toggle="tab"><span class="glyphicon glyphicon-home"></span> 主页 <span class="caret-right"></span></a></li>
    						<li class="active"><a href="#course-pane" data-toggle="tab"><span class="glyphicon glyphicon-book"></span> 课程 <span class="caret-right"></span></a></li>
    						<li><a href="#question-pane" data-toggle="tab"><span class="glyphicon glyphicon-question-sign"></span> 问答 <span class="caret-right"></span></a></li>
    						<li><a href="#guna-pane" data-toggle="tab"><span class="glyphicon glyphicon-user"></span> 密码 <span class="caret-right"></span></a></li>
    							<li><a href="#other" data-toggle="tab"><span class="glyphicon glyphicon-send"></span> 其他 <span class="caret-right"></span></a></li>
    					</ul>
    				</div>
    				<div class="test" style="display:none">
    					<button type="button" class="get-scroll btn btn-lg">get</button>
    					<button type="button" class="get-scroll0 btn btn-lg">get</button>
    				</div>
    			</div>
    		</div>
    		<div class="tab-content">
    			<div class="tab-pane fade in active" id="course-pane">
    				<div class="course-page content-container" >
						<div class="home-user-ctool-bar">
							<div class="tool-left">
								<div class="search-condition">				
									<ul class="nav-pills nav">						
										<li class="active"><a href="javascript:void(0)">我的课程</a></li>
										<!-- <li><a href="#">我的收藏</a></li> -->
									</ul>
								</div>	
							</div>
	<!-- 						<div class="tool-right">
								<div class="dropdown dropdown-course">
								    <p class="dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">全部课程
								        <span class="caret"></span>
								    </p>
								    <ul class="dropdown-menu nav nav-pills" role="menu">
								        <li role="presentation">
								            <a role="menuitem" tabindex="-1" href="#">全部课程</a>
								        </li><li role="presentation">
								            <a role="menuitem" tabindex="-1" href="#">Java</a>
								        </li>
								        <li role="presentation">
								            <a role="menuitem" tabindex="-1" href="#">数据挖掘</a>
								        </li>
								        <li role="presentation">
								            <a role="menuitem" tabindex="-1" href="#">数据通信/网络</a>
								        </li>
								        <li role="presentation">
								            <a role="menuitem" tabindex="-1" href="#">分离的链接</a>
								        </li>
								    </ul>
								</div>
							</div> -->
						</div>
						<div class="my-space-course">
							<div class="my-space-course-list"  id="mycourselist">
								<!--  <div class="my-space-course-list-item first-item">
									<div class="course-item-time">
										<div class="border-dotted glyphicon"></div>
						                <p class="year">2017 </p>
						                <p class="data">06月03日</p>
									</div>
									<div class="course-list-item-content-container">
										<div class="course-list-item-content">
											<div class="course-list-item-cover">
											</div>
											<div class="course-list-item-info">
												<div class="course-item-title">
													<a class="course-item-name" href="#">我燃烧你的梦！</a>
													<div class="dropdown control-btn">
												        <span class="glyphicon glyphicon-chevron-down dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown"></span>
				
													</div>
												</div>
												<div class="item-study-status">
													<span class="span-commom learn-rate">已学<c>11%</c></span>
													<span class="span-commom learn-time">用时<c>114515分</c></span>
													<span class="span-commom learn-point">学至 <c>1-1 课程简介</c></span>
												</div>
												<div class="item-catog-status">
													<span class="span-commom question"><a href="#"> 问答 <c>1</c></a></span>
													<span class="span-commom comment"><a href="#">留言 <c>3</c></a></span>
													<a href="#" target="" class="continue-btn"><button class="btn" type="button">继续学习</button></a>
												</div>
											</div>
										</div>
									</div>
								</div>
																 <div class="my-space-course-list-item first-item">
									<div class="course-item-time">
										<div class="border-dotted glyphicon"></div>
						                <p class="year">2017 </p>
						                <p class="data">06月03日</p>
									</div>
									<div class="course-list-item-content-container">
										<div class="course-list-item-content">
											<div class="course-list-item-cover">
											</div>
											<div class="course-list-item-info">
												<div class="course-item-title">
													<a class="course-item-name" href="#">我燃烧你的梦！</a>
													<div class="dropdown control-btn">
												        <span class="glyphicon glyphicon-chevron-down dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown"></span>
				
													</div>
												</div>
												<div class="item-study-status">
													<span class="span-commom learn-rate">已学<c>11%</c></span>
													<span class="span-commom learn-time">用时<c>114515分</c></span>
													<span class="span-commom learn-point">学至 <c>1-1 课程简介</c></span>
												</div>
												<div class="item-catog-status">
													<span class="span-commom question"><a href="#"> 问答 <c>1</c></a></span>
													<span class="span-commom comment"><a href="#">留言 <c>3</c></a></span>
													<a href="#" target="" class="continue-btn"><button class="btn" type="button">继续学习</button></a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="my-space-course-list-item">
									<div class="course-item-time">
										<div class="border-dotted glyphicon"></div>
						                <p class="year">2017 </p>
						                <p class="data">06月03日</p>
									</div>
									<div class="course-list-item-content-container">
										<div class="course-list-item-content">
											<div class="course-list-item-cover">
											</div>
											<div class="course-list-item-info">
												<div class="course-item-title">
													<a class="course-item-name" href="#">我燃烧你的梦！</a>
													<div class="dropdown control-btn">
												        <span class="glyphicon glyphicon-chevron-down dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown"></span>
													
													</div>
												</div>
												<div class="item-study-status">
													<span class="span-commom learn-rate">已学<c>11%</c></span>
													<span class="span-commom learn-time">用时<c>114515分</c></span>
													<span class="span-commom learn-point">学至 <c>1-1 课程简介</c></span>
												</div>
												<div class="item-catog-status">
													<span class="span-commom question"><a href="#"> 问答 <c>1</c></a></span>
													<span class="span-commom comment"><a href="#">留言 <c>3</c></a></span>
													<a href="#" target="" class="continue-btn"><button class="btn" type="button">继续学习</button></a>
												</div>
											</div>
										</div>
									</div>
								</div>
								 <div class="my-space-course-list-item">
									<div class="course-item-time">
										<div class="border-dotted glyphicon"></div>
						                <p class="year">2017 </p>
						                <p class="data">06月03日</p>
									</div>
									<div class="course-list-item-content-container">
										<div class="course-list-item-content">
											<div class="course-list-item-cover">
											</div>
											<div class="course-list-item-info">
												<div class="course-item-title">
													<a class="course-item-name" href="#">我燃烧你的梦！</a>
													<div class="dropdown control-btn">
												        <span class="glyphicon glyphicon-chevron-down dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown"></span>
													
													</div>
												</div>
												<div class="item-study-status">
													<span class="span-commom learn-rate">已学<c>11%</c></span>
													<span class="span-commom learn-time">用时<c>114515分</c></span>
													<span class="span-commom learn-point">学至 <c>1-1 课程简介</c></span>
												</div>
												<div class="item-catog-status">
													<span class="span-commom question"><a href="#"> 问答 <c>1</c></a></span>
													<span class="span-commom comment"><a href="#">留言 <c>3</c></a></span>
													<a href="#" target="" class="continue-btn"><button class="btn" type="button">继续学习</button></a>
												</div>
											</div>
										</div>
									</div>
								</div> -->
							</div>
						</div>
					</div>
    			</div>
				<div class="tab-pane fade" id="home-pane"><div class="course-page content-container " >
				
                                <ul class="list-group">
                                    <li  class="list-group-item"><strong>昵称：</strong><span>${message.nickname }</span></li>
                                    <li class="list-group-item"><strong>身份：</strong><span>${message.dept }</span> </li>
                                     <li  class="list-group-item"><strong>性别：</strong><span>${message.sex }</span></li>
                                    <li  class="list-group-item"><strong>生日：</strong><span>${message.birthday }</span></li>
                                      <li  class="list-group-item"><strong>电话：</strong><span>${message.phone }</span>  </li>
                                         <li  class="list-group-item"><strong>身份证：</strong><span>${message.cardnum }</span></li>
                                    <li  class="list-group-item" style=" word-break:break-all; word-wrap:break-word;"><strong>个人简介：</strong><span>${message.userinfo }</span>
                                    </li>
                                </ul>
                                <button type="button" class="btn btn-default" style="float:right" data-toggle="modal" data-target="#userinfo" >修改资料</button>
                        </div>
				</div>
				<div class="tab-pane fade" id="question-pane">
						<div class="course-page content-container "  id="my-que">
							
						</div>
				</div>
				<div class="tab-pane fade" id="guna-pane">
					<div class="course-page content-container " >
					<div  class="row">
						<div class="col-md-8 col-md-offset-2">
						<div class="form-group" style="margin-top:50px;">
							<label class="col-sm-3 control-label">旧密码</label>
							<div class="col-sm-9">
								<input type="password" class="form-control" id="oldpwd">
							</div>
						</div>
						<div class="form-group" >
							<label class="col-sm-3 control-label"  style="margin-top:20px;">新密码</label>
							<div class="col-sm-9"  style="margin-top:20px;">
								<input type="password" class="form-control" id="newpwd" >
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label"  style="margin-top:20px;">确认新密码</label>
							<div class="col-sm-9"  style="margin-top:20px;">
								<input type="password" class="form-control"  id="rnewpwd">
							</div>
						</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-2 col-md-offset-5">
							<button type="button" class="btn btn-primary" id="pwd-change" style="width:100%; margin-top:30px;">
								修改密码
							</button>
						</div>
					</div>
						
					</div>
				</div>
				<div class="tab-pane fade" id="other">
						<div class="course-page content-container "  id="my-other">
							   <iframe STYLE="width:100%;height:1100px;marginwidth:0px;  overflow-x : hidden; " frameborder=0 scrolling="no"  src="/checkonline/student.jsp"></iframe>
						</div>
				</div>
				</div>
    	</div>
    	<div class="test" style="height: 200px; width: 100%; display:none;">
			<div class="sd" style="height: 50px; width: 200px; margin: 0 auto;background-color: yellow;">
				
			</div>
		</div>
    </div>
    <div class="footer">
            <div class="container">
                <div class="footer-sns" style="text-align: center;padding-top: 25px;">
                    <a href="#">
                        <img src="resources/images/alipay.jpg" alt="" style="height:32px;width: 32px;">
                    </a>
                    <a href="#">
                        <img src="resources/images/wechat.jpg" alt="" style="height:32px;width: 32px;">
                    </a>
                </div>
                <div class="link">
                    <a href="#">联系我们</a>
                    <a href="#">关于我们</a>
                    <a href="#">意见反馈</a>
                </div>
                <div class="regist-info" style="text-align: center;padding: 10px; color:white;">
                    <p>©2017 Wangritian 沪IPC备 233号</p>
                </div>
            </div>
    </div>
		<div id="modal-popup">
        <div class="container modal fade" id="purchase-vip-modal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">x</button>
                        <h4 class="modal-title" id="">
                            我的VIP
                        </h4>
                    </div>
                    <div class="modal-body">
                        <div class="no-vip" >
                            <div class="alert alert-warning">
                                <button type="button" class="close" data-dismiss="alert"
                                        aria-hidden="true">
                                    &times;
                                </button>
                                <span>你尚开通VIP服务！</span>
                            </div>
                        
                            <div>
                                <p style="padding-top: 10px;padding-bottom: 15px;">会员特权——————————————————</p>
                            </div>
                            <ul> 
                                <li><span class="glyphicon glyphicon-expand"></span><span>享受全部内容</span></li>
                                <li><span class="glyphicon glyphicon-hd-video"></span><span>高清体验</span></li>
                                <li><span class="glyphicon glyphicon-ban-circle"></span><span>免广告</span></li>
                                <li><span class="glyphicon glyphicon-tower"></span><span>名师指导</span></li>
                            </ul>
                            <span><h5>仅需￥450/月</h5></span>
                            <div>
                                <button type="submit" class="btn btn-lg" style="background-color: gold; width: 100%;">开通会员</button>
                            </div>
                        </div>
                        <div class="in-vip" style="display: none;">
                            <div class="alert alert-warning alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert"
                                        aria-hidden="true">
                                    &times;
                                </button>
                                <span>你已开通VIP服务！</span>
                            </div>
                            <span>VIP状态: 激活</span>
                            <span style="float: right;">剩余天数：12天</span>

                            <div class="progress progress-striped" style="margin-top: 20px">
                                <div class="progress-bar progress-bar-success" role="progressbar"
                                     aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                                     style="width: 40%;">
                                    <span class="sr-only">VIP状态</span>
                                </div>
                            </div>
                            <div>
                                <button type="submit" class="btn btn-lg" style="background-color: gold; width: 100%;">续命</button>
                            </div>
                        </div>
                        <!-- <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">
                                关闭
                            </button>
                            <button type="button" class="btn btn-primary">
                                确认
                            </button>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>    
        		<div class="container modal fade" id="login-signup-modal" data-backdrop='static'>
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="">
                        <ul class="nav nav-tabs" id="ls-tab">
                            <li class="active"><a href="#login" data-toggle="tab"  >登陆</a></li>
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
    </div>
<!-- 模态框（Modal） -->
<div class="modal fade" id="userinfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					修改信息
				</h4>
			</div>
				<div class="modal-body">

					<form class="form-horizontal" role="form" id="form-modifyUser">
						<div class="form-group">
							<label class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="username1" readonly="true"  value="${message.username }" >
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">昵称</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="nickname1"  value="${message.nickname }" >
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">身份</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="dept1" value="${message.dept }">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">生日</label>
							<div class="col-sm-10">
								<input class="form-control" placeholder="yyyy-mm-dd" name="date1" type="text"  value="" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">电话</label>
							<div class="col-sm-10">
								<input type="text" class="form-control"  name="phone1"  value="${message.phone }">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">身份证</label>
							<div class="col-sm-10">
								<input type="text" class="form-control"  name="cardnum1"  value="${message.cardnum }">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="form-userinfo">个人简介</label>
							<div class="col-sm-10">
							<textarea class="form-control" name="userinfo1" value="${message.userinfo }"  col="5">${message.userinfo }</textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"  for="inputfile">上传头像</label>
							<div class="col-sm-10">
							<input type="file" id="inputfile" name="file1">
							</div>
						</div>
						
						<div class="form-group">

							<label class="col-sm-2 control-label" for="form-sex">
								性别 </label>

							<div class="radio" style="float: left; padding: 0px; margin: 7px 15px;">

								<label>
								 <input name="sex1" type="radio" class="ace" checked="checked" value="男" />
								 <span class="lbl"> 男</span>
								</label>

							</div>


							<div class="radio" style="float: left; padding: 0px; margin: 7px 5px;">

								<label> 
								<input name="sex1" type="radio" class="ace" value="女" /> 
								<span class="lbl"> 女</span>
								</label>

							</div>

						</div>
					</form>

				</div>
				<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" id="userinfo-change">
					提交更改
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
   
    <script type="text/javascript">
					//获取当前网址，如http://localhost:8080/Tmall/index.jsp
					var curWwwPath = window.document.location.href;

					//获取主机地址之后的目录如：/Tmall/index.jsp
					var pathName = window.document.location.pathname;
					var pos = curWwwPath.indexOf(pathName);

					//获取主机地址，如： http://localhost:8080
					var localhostPath = curWwwPath.substring(0, pos);
					toastr.options = {
						positionClass : "toast-center-center",
						"showDuration" : "1000",//显示的动画时间
						"hideDuration" : "1000",//消失的动画时间
						"timeOut" : "1000", //展现时间
					}
					//获取带"/"的项目名，如：/Tmall
					var projectName = pathName.substring(0, pathName.substr(1)
							.indexOf('/') + 1);
					//项目路径
					var basePath = localhostPath + projectName;
					function del(id) {
						$.ajax({
							url : basePath + "/mystudy/delmystudy",
							type : "POST",
							data : {
								uid : '${message.username}',
								cid : id
							},
							success : function(data) {
								window.location.reload();
							}
						})
					}

					$(function() {

						var xx = "${identify}";
						var uid = '${message.username}';
						if (xx != null && xx == 'student' && uid != null
								&& uid != "") {
							$('.login-ready').show();
							$('.login-none').hide();
							$('#main').show();
							$('.user-name h4').text("${message.nickname}");
							var c = "${message.pic}";
							if (c != null && c != "") {
								$('#user-avatar').attr('src', "${message.pic}");
							}

							$
									.ajax({
										url : basePath
												+ "/mystudy/findmystudy2",
										type : "POST",
										dataType : "json",
										data : {
											uid : uid
										},
										success : function(data) {
											var html = "";
											$
													.each(
															data,
															function(n, json) {
// 																alert(json.addtime);
																var date = new Date(
																		json.addtime);
																var year = date
																		.getFullYear();
																var month = date
																		.getMonth() + 1;
																var day = date
																		.getDate();
																if (month < 10)
																	month = "0"
																			+ month;
																if (day < 10)
																	day = "0"
																			+ day;

																if (n == 0) {
																	html += "<div class='my-space-course-list-item first-item'>";
																} else {
																	html += "<div class='my-space-course-list-item'>";
																}
																html += "<div class='course-item-time'>";
																html += "<div class='border-dotted glyphicon'></div>";
																html += "<p class='year'>"
																		+ year
																		+ "</p>";
																html += "<p class='data'>"
																		+ month
																		+ "月"
																		+ day
																		+ "日</p>";
																html += "</div>";
																html += "<div class='course-list-item-content-container'>";
																html += "<div class='course-list-item-content'>";
																html += "<div class='course-list-item-cover'>";
																html += "<img style='width:100%' src="
																		+ json.coursepic
																		+ "/>"
																html += "</div>";
																html += "<div class='course-list-item-info'>";
																html += "<div class='course-item-title'>";
																html += "<a class='course-item-name' href='#'>"
																		+ json.coursename
																		+ "</a>";
																html += "<div class='dropdown control-btn'>";
																html += "<a class='course-delete' href='javascript:void(0)' title='取消学习'  onclick='del("
																		+ json.id
																		+ ");'><span class='glyphicon glyphicon-eye-close ' ></span></a>";
																/* 	html+="<ul class='dropdown-menu'>"; */
																/* html+=" <li>";
																html+="<a class='course-collect' href='#'  title='收藏'><span class='glyphicon glyphicon-bookmark'></span></a>";
																html+="</li>"; */
																/*   					html+="<li>";
																  					html+="<a class='course-delete' href='#' title='删除'><span class='glyphicon c'></span></a>";
																  					html+="</li>";
																  					html+="</ul>"; */
																html += "</div>";
																html += "</div>";
																html += "<div class='item-study-status'>";
																html += "<span class='span-commom learn-rate'><c>"
																		+ json.dif
																		+ "</c></span>";
																html += "<span class='span-commom learn-point'>"
																		+ json.firstclassname
																		+ " /<c>"
																		+ json.secclassname
																		+ "</c></span>";
																html += "</div>";
																html += "<div class='item-catog-status'>";
																html += "<span class='span-commom question'><a href='#'> 评分 <c>"
																		+ json.score
																		+ "</c></a></span>";
																html += "<span class='span-commom comment'><a href='#'>学习人数 <c>"
																		+ json.studycount
																		+ "</c></a></span>";
																html += "<a href='student/CourseInfo/"+json.id+ "' target='_blank' class='continue-btn'><button class='btn' type='button'>进入学习</button></a>";
																html += "</div>";
																html += "</div>";
																html += "</div>";
																html += "</div>";
																html += "</div> ";
															})
											$('#mycourselist').html("");
											if (html == "") {
												html = '<div class="not-conts"> 你最近有没有加入任何课程，可以先<a href="courseIndex.jsp" class="find-course">去找找课程</a></div>';
											}
											$('#mycourselist').append(html);

										}
									})
						}

						$('#search-btn1').click(function() {
							var x = $('#searchs1').val();
							if (x == "")
								return;
							location.href = basePath + '/Search.jsp?word=' + x;
						})

						$('#search-btn2').click(function() {
							var x = $('#searchs2').val();
							if (x == "")
								return;
							location.href = basePath + '/Search.jsp?word=' + x;
						})

						$('#login-btn')
								.click(
										function() {

											$
													.ajax({
														url : localhostPath
																+ "/checkonline/login/msgcheck",
														type : "POST",
														data : {
															password : $(
																	'#inputPassword1')
																	.val(),
															username : $(
																	'#account')
																	.val(),
															identity : "学生"
														},
														success : function(data) {

														}
													})

											$
													.ajax({
														url : basePath
																+ "/login/msgCheckstu",
														type : "POST",
														data : {
															password : $(
																	'#inputPassword1')
																	.val(),
															username : $(
																	'#account')
																	.val(),
															usertype : "student"
														},
														success : function(data) {
															if (data == 'success') {
																$(
																		'.login-ready')
																		.show();
																$('.login-none')
																		.css(
																				'display',
																				'none');
																window.location
																		.reload();
																/* toastr.success('欢迎你，'+"${message.nickname}"); */
															} else {
																toastr
																		.error('用户名或密码错误');
															}
														}
													})

										})

						$('#logout-btn').click(function() {
							$('.login-ready').css('display', 'none');
							$('.login-none').show();
							$.ajax({
								url : "login/logout",
								type : "POST",
								success : function(data) {
									
									window.location.reload();
								}
							})
						})

						$('.close').click(function() {
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
								url : "userManger/addUser",
								type : "POST",
								contentType : "application/json",
								data : JSON.stringify({
									username : account,
									password : psw2,
									nickname : account,
									sex : '男',
									birthday : "2000-01-01"
								}),
								success : function(data) {
									if ("failed" == data) {
										toastr.error('注册失败');
										$('#account1').focus();
									} else {
										window.location.reload();
									}
								}
							})
						}
						
					    $("#userinfo-change").click(function () {
// 					    	var fd = new FormData($("#form-modifyUser")[0]);
// 					    	$.ajax({
// 					    		type:"post",
// 					    		url: basePath + "/userManger/modifyUser2",
// 								data:fd,
// 								success:function(msg){
// 									 toastr.success(msg);
// 	 					             $("#userinfo").modal("hide");
// 								}
// 					    	})
					    	
					        $("#form-modifyUser").ajaxSubmit({
					            type: "post",
					            url: basePath + "/userManger/modifyUser2",
					            dataType: "text",
					            success: function (msg) {
					                toastr.success(msg);
					                $("#userinfo").modal("hide");
					            }
					        })
					    })
					    
					    var uname = '${message.username}';
					    $("#pwd-change").click(function(){
					    	var pwd = '${message.password}';
					    	var opwd = $("#oldpwd").val();
					    	var npwd = $("#newpwd").val();
					    	var rnpwd = $("#rnewpwd").val();
					    	if(pwd !=  opwd){
					    		toastr.error("旧密码错误");
					    	}else{
					    		if(npwd =="" || npwd!=rnpwd){
					    			toastr.error("请检查新密码是否一致");
					    		}else{
					    			$.ajax({
					    				type:"post",
					    				url:basePath + "/userManger/modifyUser",
					    				contentType:"application/json",
					    				data:JSON.stringify({
					    					username:uname,
					    					password:npwd
					    				}),
					    				success:function(){
					    					toastr.success("密码修改成功");
					    					
					    				},
					    				error:function(){
					    					toastr.error("系统出现未知错误，程序猿正在抢修中. . .")
					    				}
					    			})
					    			
					    		}
					    	}
					    })
					  
						function formateDate(date) {
					        var y = date.getFullYear();
					        var m = date.getMonth() + 1;
					        var d = date.getDate();
					        var h = date.getHours();
					        var mi = date.getMinutes();
					        m = m > 9 ? m : '0' + m;
					        return y + '-' + m + '-' + d + ' ' + h + ':' + mi;
					    }
					    
					    $.ajax({
					    	type:"post",
					    	url : basePath+"/postManager/findPostById",
					    	dataType:"json",
					    	data:{
					    		uid : uname
					    	},
					    	success:function(data2){
					    		var cont = $("#my-que");
								var postList = data2['postList'];
								cont.html("");
								$.each(postList, function(n, obj){
									var pic = data2['pic-'+obj.createduid];
									var strs= new Array(); //定义一数组 
									strs =obj.label.split(","); //字符分割 
									var labelsplit="";
									var labell="";
									for (var i=0;i<strs.length ;i++ ) { 
										 labell="";
										 labell="<a href='question.jsp?word="+strs[i]+"'>"+strs[i]+'</a>';
										labelsplit+=labell;		
									} 
									cont.append('<div class="course-question-tab">'
											+'<div class="questioner-avtar">'
											+''+'<a href="#"><img src="'+pic+'" alt="" class="img-circle" style="height: 45px;margin:0 15px;"></a>'
											+'</div>'
											+'<div class="questioner-detail">'
											+'<div class="questioner-name"><p>来自'+labelsplit+'</p></div>'
											+'<div class="questioner-question-title"><p><a target="_blank" href="postManager/clickReply/'+obj.postid+'">'+obj.name+'</a></p></div>'
											+'<div class="replycont">'
											+'<div class="reply">'
											+'</div>'
											+'</div>'
											+'<div class="questioner-footer">'
											+'<p>'
											+'<div class="questioner-footer-left">'
											+'<span class="submit-time">时间：'+formateDate(new Date(parseInt(obj.createdtime, 10)))+'</span>'
											+'</div>'
											+'<div class="questioner-footer-right">'
											+'<span class="answer-nun">'+obj.replynum+'个回答</span>'
											+'<span class="del-post"><input type="hidden" value="'+obj.postid+'" />删除</span>'
											+'</div>'
											+'</p>'
											+'</div>'
											+'</div>'
											+'</div>');
								})
								
								$(".del-post").click(function(){
									var postid = $(this).find("input").val();
									var parent = $(this).parents("div .course-question-tab");
									$.ajax({
										type:"post",
										url:basePath+"/postManager/delPost",
										data:{
											postid:postid
										},
										success:function(){
											toastr.success("删除成功");
											parent.remove();
										}
									})
								})
					    	}
					    })

					    
					})
				</script>
</body>

</html>