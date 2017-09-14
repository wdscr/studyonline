<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Course-Info</title>
		<script src="../../resources/js/jquery-3.1.1.min.js"></script>
	<link rel="stylesheet" href="../../resources/css/bootstrap.css">    
    <script type="text/javascript" src="../../resources/js/toastr.min.js"></script> 
<link href="../../resources/css/toastr.css" rel="stylesheet">
    <script src="../../resources/js/bootstrap.min.js"></script>
    <script src="../../resources/js/jquery.raty.min.js"></script>

    <style type="text/css" media="screen">
    	@font-face{
            font-family: myFirstFont;
            src: url('../../resources/fonts/jianti.ttf')
            ,url('../../resources/fonts/jianti.ttf'); /* IE9 */
        }
        @font-face{
            font-family: titleFont;
            src: url('../../resources/fonts/bold.ttf')
            ,url('../../resources/fonts/bold.ttf'); /* IE9 */
        }
        body{
            min-width: 600px;
            background-color: #fff;
        }
        nav{
        height: 550px;
        overflow: hidden
        }
             
        #search-btn,#search-btn2{
        border-color: #fff;
        height:30px;
        }
        #title{
        font-size: 30px;
        }
        
      #navigation{
        background-image: url(../../${course.coursepic});
        background-position: top;
        background-repeat: repeat-x;
        background-size: cover;
        background-attachment: fixed;
        border-bottom: 0px;
        box-shadow: 0 3px 10px #cccccc;
        min-width: 1024px;
        }
        #navbar-mask{
        background-color:rgb(0,0,0);
        background-position: top;
        background-repeat: no-repeat;
        background-size: 100%;
        background-attachment: fixed;
        position: relative;
        filter: blur(5px);
        -webkit-filter:blur(5px) brightness(70%);
        height: 62px;
        /* border:solid 1px #000; */
        /* border-width: 1px; */
        }

        
      
        #navbar-top{
        position: relative;
        }
        #navbar-conatiner{
            position: relative;
            margin-top:  -60px;
        }
        .custom-ul a{
        height: 60px;
        line-height: 25px;
        }
        .footer{
            /* position: absolute; */
            margin-top:100px;
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
        .course-present{
        	height: 500px;
        }
        .title-bar{
        	color: white;
        	margin-top: 50px;
        	font-family: titleFont;
        	text-align: center;
        	font-size: 45px;
        	font-weight: 900;
        	text-shadow: 0 3px 3px #cccccc;
        }
        .info-bar{
        	margin-top: 40px;
        	text-align: center;
        	font-size: 15px;
            color: rgba(255, 255, 255, 0.6);
        }
        .info-bar span{
        	margin: 5px;
        }
        .info-bar .item{
        	border-left: solid white;
        	padding-left: 15px;
        	padding-right: 15px;
        }
        .prive-box{
			color: gold;
			font-family: titleFont;
			font-size: 20px;
        }
        .course-present{
        	position: relative;
        	margin-top: -480px;
        }
        #content-navbar{
        	background-color: white; 
        	border: none;  	
        }
        .chapter-title{
        	font-size: 20px;
        	margin: 20px;
        	cursor:pointer;
        }
        .course-content{
        	display:inline-block; 
        	vertical-align:top;
        	min-width: 700px; 
        	/* border: solid; */
        }     
        .course-content a{
        	text-decoration: none;
        }
        .lecture-recommend{
        	padding: 25px;
        	padding-top: 0;
        	border-bottom: solid #cccccc 1px;
        }
        .course-lecture{
        	display:inline-block; 
        	vertical-align:top;
        	height: 900px;
        	min-width: 378px; 
        	/* border: solid; */
        }
        .chapter-video-list{
			display:none; 
			padding-left: 45px;
			padding-right: 23px;
        }
        .chapter-item .list-group-item{
        	margin-bottom: 10px;
        	background-color: #edf1f2;
        	color: #787d82;
        }
        .chapter-item{
        	border-bottom: solid #cccccc 1px;
        }
        .lecture-describe {
        	background-color: #edf1f2;
        	padding:24px;
        	margin-top: 20px;
			padding-top: 20px;
			line-height: 24px;			
        }
        .course-recommend{
        	padding: 25px;
        	padding-top: 15px;
        }
        .course-recommend li{
        	margin-top: 10px;
			padding-top: 15px;
			padding-bottom: 15px;
			border-bottom: solid #cccccc 1px;
        }
        .course-info{
			padding-left: 20px;
        }
        .course-info p{
        	width: 180px;
        	min-width: 150px;
        }
        .chapter-title .glyphicon-align-justify{
        	border-radius: 25px;
        	overflow: hidden;
            color: #93999f;
        }
        .glyphicon-check{
            color: green;
        }
        .message-tool{
            background-color: #f3f5f7;
        }
        .questioner-name{
            color: #93999f;
            
        }

        #main a{
            text-decoration: none;
        }
        .tab-content  a:link{
            font-size: 12px;
            color: #93999f;
        }
        .tab-content  a:visited{
            color: #5e5e5e;
        } 
        .tab-content  a:hover{
            color: #14191e;
        }
        .tab-content  a:active{
            color: #14191e;
        }
        .questioner-footer-right a:hover{
            color: #00b43c;
        }
        .questioner-question-title a:link{
            color:  #5e5e5e;
            font-size: 16px; 
            font-weight: bold;
        }
        .questioner-question-title a:visited{
            color:  #14191e;
        }
        .questioner-question-title a:hover{
            color:  #ec1500;
        }
        .reply a:link{
            font-size: 16px;
        }
        .course-question-tab{
            padding:20px 10px;
            border-bottom: solid #cccccc 1px;
        }
        .questioner-avtar{
            float: left;
        }
        .questioner-detail{
            margin-left: 70px;
        }
        .replycont{
            margin-bottom: 10px;
        }
        .questioner-footer{
            width: 100%;
        }
        .questioner-footer-left{
            display: inline-block;
        }
        .questioner-footer-right{
            display: inline-block;float: right;
        }
        .submit-time{
            margin-right: 20px;
        }
        .answer-nun{
            margin-right: 20px;
        }
        .course-recommend a:link{
            font-size: 13px;
        }
        .course-info p:first-child{
            font-size: 14px;
            font-weight: bold;
        }
        .message-tool .navbar-nav> li.active > a{
            font-weight: bold;
            color: #f01414;
        }
        .message-tool .navbar-nav> li.active > a
        .message-tool .navbar-nav> li.active > a:hover,
        .message-tool .navbar-nav> li.active > a:focus {
          color: #f01414;
        }
        .widget-body{border:1px solid #CCC;border-top:0;background-color:#FFF}.widget-main{padding:12px}.widget-main.padding-32{padding:32px}.widget-main.padding-30{padding:30px}.widget-main.padding-28{padding:28px}.widget-main.padding-26{padding:26px}.widget-main.padding-24{padding:24px}.widget-main.padding-22{padding:22px}.widget-main.padding-20{padding:20px}.widget-main.padding-18{padding:18px}.widget-main.padding-16{padding:16px}.widget-main.padding-14{padding:14px}.widget-main.padding-12{padding:12px}.widget-main.padding-10{padding:10px}.widget-main.padding-8{padding:8px}.widget-main.padding-6{padding:6px}.widget-main.padding-4{padding:4px}.widget-main.padding-2{padding:2px}.widget-main.padding-0{padding:0}.widget-main.no-padding{padding:0}.widget-toolbar .progress{vertical-align:middle;display:inline-block;margin:0}.widget-toolbar>.dropdown,.widget-toolbar>.dropup{display:inline-block}
    .profile-user-info-striped .profile-info-value{border-top:1px dotted #dcebf7;padding-left:12px}.profile-picture{border:1px solid #CCC;background-color:#FFF;padding:4px;display:inline-block;max-width:100%;-moz-box-sizing:border-box;box-shadow:1px 1px 1px rgba(0,0,0,0.15)}.profile-activity{padding:10px 4px;border-bottom:1px dotted #d0d8e0;position:relative;border-left:1px dotted #FFF;border-right:1px dotted #FFF}.profile-activity:first-child{border-top:1px dotted transparent}.profile-activity:first-child:hover{border-top-color:#d0d8e0}.profile-activity:hover{background-color:#f4f9fd;border-left:1px dotted #d0d8e0;border-right:1px dotted #d0d8e0}.profile-activity img{border:0px solid #c9d6e5;border-radius:0%;max-width:40px;margin-right:10px;margin-left:0;box-shadow:none}.profile-activity .thumbicon{background-color:#74abd7;display:inline-block;border-radius:100%;width:38px;height:38px;color:#FFF;font-size:18px;text-align:center;line-height:38px;margin-right:10px;margin-left:0;text-shadow:none!important}.profile-activity .time{display:block;margin-top:4px;color:#777}.profile-activity a.user{font-weight:bold;color:#9585bf}.profile-activity .tools{position:absolute;right:12px;bottom:8px;display:none}.profile-activity:hover .tools{display:block}.user-profile .ace-thumbnails li{border:1px solid #CCC;padding:3px;margin:6px}.user-profile .ace-thumbnails li .tools{left:3px;right:3px}.user-profile .ace-thumbnails li:hover .tools{bottom:3px}.user-profile .user-title-label:hover{text-decoration:none}.user-profile .user-title-label+.dropdown-menu{margin-left:-12px}.profile-contact-links{padding:4px 2px 5px;border:1px solid #e0e2e5;background-color:#f8fafc}.profile-contact-info .btn-link:hover>[class*="icon-"],.profile-contact-info .btn-link:focus>[class*="icon-"]{text-decoration:none}.profile-social-links>a{text-decoration:none;margin:0 1px}.profile-social-links>a:hover>[class*="icon-"]{text-decoration:none}.profile-skills .progress{height:26px;margin-bottom:2px;background-color:transparent}.profile-skills .progress .progress-bar{line-height:26px;font-size:13px;font-weight:bold;font-family:"Open Sans";padding:0 8px}.profile-users .user{display:block;position:static;text-align:center;width:auto}.profile-users .user img{padding:2px;border-radius:100%;border:1px solid #AAA;max-width:none;width:64px;-webkit-transition:all .1s;transition:all .1s}.profile-users .user img:hover{-webkit-box-shadow:0 0 1px 1px rgba(0,0,0,0.33);box-shadow:0 0 1px 1px rgba(0,0,0,0.33)}.profile-users .memberdiv{background-color:#FFF;width:100px;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;border:0;text-align:center;margin:0 8px 24px}.profile-users .memberdiv .name a:hover [class*="icon-"]{text-decoration:none}.profile-users .memberdiv .body{display:inline-block;margin:8px 0 0 0}.profile-users .memberdiv .popover{visibility:hidden;min-width:150px;margin-left:0;margin-right:0;top:-5%;left:auto;right:auto;z-index:-1;opacity:0;display:none;-webkit-transition:visibility 0s linear .2s,z-index 0s linear .2s,opacity .2s linear 0s;transition:visibility 0s linear .2s,z-index 0s linear .2s,opacity .2s linear 0s}.profile-users .memberdiv .popover.right{left:100%;right:auto;display:block}.profile-users .memberdiv .popover.left{left:auto;right:100%;display:block}.profile-users .memberdiv>:first-child:hover .popover{visibility:visible;opacity:1;z-index:1010;-webkit-transition-delay:0s;-moz-transition-delay:0s;-o-transition-delay:0s;transition-delay:0s}.profile-users .memberdiv .tools{position:static;display:block;width:100%;margin-top:2px}.profile-users .memberdiv .tools>a{margin:0 2px}.profile-users .memberdiv .tools>a:hover{text-decoration:none}
    </style>

</head>
<body>


	<nav class="navbar navbar-inverse" role="navigation" id="navigation">
	    <div class="mask-container" style="overflow: hidden;">
	        <div id="navbar-mask">
	        </div>
	    </div>
    	<div class="container" id="navbar-conatiner">
        	<div class="">
                <div class="row col-xl-12" id="navbar-top">
                    <div>
                        <div class="navbar-header">
                        <img class="img-circle" src="../../resources/images/logo.png" alt="" style="width: 55px;float: left;padding-top: 3px;margin-right: 10px;">
                            <a href="../../icourse.jsp"  class="navbar-brand" id="title">
                                <p >精品课程网</p>
                            </a>
                        </div>
                    </div>
                    <div class="nav navbar-nav navbar-left hidden-xs">
                        <ul class="nav navbar-nav nav-pills custom-ul">
                            <li><a href="../../icourse.jsp">首页</a></li>
		                    <li><a href="../../courseIndex.jsp">课程</a></li>
		                    <li><a href="../../question.jsp">问答</a></li>
                        </ul>
                    </div>
                    <div class="nav navbar navbar-right hidden-sm hidden-xs login-none" style="display:block;">
                        <ul class="nav navbar-nav nav-pills custom-ul">
                            <li style="padding-top: 5px;display:list-item;">
                                <form action="" class="navbar-form input-group">
                                    <div class="form-group form-group-sm">
                                        <input type="text" class="form-control" placeholder="Search"  id="searchs">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default btn-sm" id="search-btn" type="button"><span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </span>
                                    </div>
                                </form>
                            </li>               
                        <!--     <li style="display:list-item;"><a href="#" data-toggle="modal" data-target="#purchase-vip-modal" style="color: gold;">VIP</a></li> -->
                            <li style="display:list-item;"><a href="#" data-toggle="modal" data-target="#login-signup-modal" id="login-modal">登陆</a></li>
                            <li style="display:list-item;"><a href="#" data-toggle="modal" data-target="#login-signup-modal" id="signup-modal">注册</a></li>
                        </ul>
                    </div>
                    <div class="nav navbar navbar-right hidden-sm hidden-xs login-ready"  style="display:none;">
                        <ul class="nav navbar-nav nav-pills nav-menu">
                            <li style="padding-top: 5px; display:list-item;">
                                <form action="" class="navbar-form input-group ">
                                    <div class="form-group form-group-sm">
                                        <input type="text" class="form-control" placeholder="Search" id="searchs2">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default btn-sm"  id="search-btn2"  type="button"><span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </span>
                                    </div>
                                </form>
                            </li>
                            <li class="user-card" style="display:list-item; width: 60px; height: 60px;">
                                    <a href="#" style="padding: 5px;line-height: 30px; height: 60px;" id="avatar-btn">
                                        <img class="img-circle" src="../../resources/images/logo.jpg" alt="" id="user-avatar">
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
                                                        <li style="display: list-item; list-style-type:none; text-align: center;"><a href="../../userHome.jsp"><span style="height: 28px;
                                                        font-size:15px;" class="glyphicon glyphicon-bookmark">我的课程</a></li>
                                                    </ul>
                                                </div>
                                                
                                            </div>
                                            <div class="user-card-bottom" style="height: 30px; text-align:right; background-color:#f4f5f7">
                                                <a href="#" style="line-height:30px; margin-right:5px;" id="logout-btn">退出</a>
                                            </div>
                                    </div>
                            </li>
                         <!--    <li style="display:list-item;"><a href="#" data-toggle="modal" data-target="#purchase-vip-modal" style="color: gold; height: 60px;line-height: 25px;">VIP</a></li> -->
                            <li style="display:list-item;">
                                <a href="#" style="font-size: 20px; line-height: 30px; height: 60px;"> 
                                <span class="glyphicon glyphicon-bell"></span>
                                </a>
                            </li>
                          
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <div class="course-present container">
		<div class="course-class-info" style="min-width: 950px;">
			
			<!-- <div class="share-course" style="display:inline-block; float: right;">
				<img src="../../resources/images/weibo.jpg" alt="" style="width: 45px;">
			</div> -->
			<div class="title-bar">
				<p>${course.coursename }</p>
			</div>
			<div class="info-bar">
				<div class="item-first" style="display:inline-block;">
					<span><strong>难度</strong></span>
					<span>${course.dif }</span>
				</div>
				
				<div class="item" style="display:inline-block;">
					<span><strong>学习人数</strong></span>
					<span>${course.studycount }</span>
				</div>
				<div class="item"  id="star" style="display:inline-block;">
					
				</div>
	<!-- 			<div class="prive-box" style="margin-top: 40px;">
					<span><strong ">VIP专享</strong></span>
				</div> -->
				<div class="vip-btn" style="margin-top: 25px;">
					<div>
                        <button type="button" class="btn btn-lg addintostudy" style="background-color: #f01404; width: 200px;" onclick="addintostudy();"><strong style="color:white;">加入学习</strong></button>
                    </div>
				</div> 
			</div>
		</div>
    </div>
    <div class="main-content container" id="main-content">
    	<div class="navbar navbar-default" id="content-navbar">
    		<div class="nav navbar-nav ">
	    		<ul class="nav nav-tabs nav-justified colist">
	    			<li ><a href="javascript:;" >课程介绍</a></li>
	    			<li class="active"><a href="javascript:;" >课程章节</a></li>
	    			<li><a href="javascript:;" >课件下载</a></li>
	    			<!-- <li><a href="javascript:;" >问答</a></li> -->
	    		</ul>
    		</div>
    	</div>
    	<div class="row chapter" id="course-chapter">
    		<div class="col-md-12">
	    		<div class="col-sm-8 course-content" id="list2"> 
	    			<!-- <div class="chapter-item">
	    				<div class="chapter-title">
	    					<span class="glyphicon glyphicon-align-justify"></span>
	    					<span><strong>第1章 课程介绍</strong></span>
	    					<span class="glyphicon glyphicon-info-sign" data-toggle="tooltip" title="Example tooltip" style="font-size: 18px;" ></span>
	    					<span class="glyphicon glyphicon-collapse-down" style="float: right;"></span>
	    				</div>
						<div class="chapter-video-list" style="display: block;">
							<div class="video-list">
								<ul class="list-group">
									<a href="#"><li class="list-group-item"><span class="glyphicon glyphicon-play"></span><span class="video-item-i"> 1-1   概述 狗屎！（4:50）</span><span class="glyphicon glyphicon-check" style="float: right;"></span></li></a>
									<a href="#"><li class="list-group-item" ><span class="glyphicon glyphicon-play"></span><span class="video-item-i"> 1-2   概述 狗屎！（4:50）</span><span class="glyphicon glyphicon-check" style="float: right;"></span><span class="badge">最近学习</span></li></a>
									<a href="#"><li class="list-group-item"><span class="glyphicon glyphicon-play"></span><span class="video-item-i"> 1-3   概述 狗屎！（4:50）</span><span class="glyphicon glyphicon-unchecked" style="float: right;"></span></li></a>
									<a href="#"><li class="list-group-item"><span class="glyphicon glyphicon-play"></span><span class="video-item-i"> 1-3   概述 狗屎！（4:50）</span><span class="glyphicon glyphicon-unchecked" style="float: right;"></span></li></a>
									<a href="#"><li class="list-group-item"><span class="glyphicon glyphicon-play"></span><span class="video-item-i"> 1-3   概述 狗屎！（4:50）</span><span class="glyphicon glyphicon-unchecked" style="float: right;"></span></li></a>
								</ul>
							</div>
						</div>
	    			</div>
	    			<div class="chapter-item">
	    				<div class="chapter-title">
	    					<span class="glyphicon glyphicon-align-justify"></span>
	    					<span><strong>第2章 guna</strong></span>
	    					<span class="glyphicon glyphicon-info-sign" data-toggle="tooltip" title="Example tooltip" style="font-size: 18px;" ></span>
	    					<span class="glyphicon glyphicon-collapse-down" style="float: right;"></span>
	    				</div>
						<div class="chapter-video-list">
							<div class="video-list">
								<ul class="list-group">
									<a href="#"><li class="list-group-item"><span class="glyphicon glyphicon-play"></span><span class="video-item-i"> 2-1   概述 狗屎！（4:50）</span><span class="glyphicon glyphicon-unchecked" style="float: right;"></span></li></a>
									<a href="#"><li class="list-group-item"><span class="glyphicon glyphicon-play"></span><span class="video-item-i"> 2-2   概述 狗屎！（4:50）</span><span class="glyphicon glyphicon-unchecked" style="float: right;"></span></li></a>
									<a href="#"><li class="list-group-item"><span class="glyphicon glyphicon-play"></span><span class="video-item-i"> 2-3   概述 狗屎！（4:50）</span><span class="glyphicon glyphicon-unchecked" style="float: right;"></span></li></a>
								</ul>
							</div>
						</div>
	    			</div>
	    			<div class="chapter-item">
	    				<div class="chapter-title">
	    					<span class="glyphicon glyphicon-align-justify"></span>
	    					<span><strong>第3章 fnndp</strong></span>
	    					<span class="glyphicon glyphicon-info-sign" data-toggle="tooltip" title="Example tooltip" style="font-size: 18px;" ></span>
	    					<span class="glyphicon glyphicon-collapse-down" style="float: right;"></span>
	    				</div>
						<div class="chapter-video-list">
							<div class="video-list">
								<ul class="list-group">
									<a href="#"><li class="list-group-item"><span class="glyphicon glyphicon-play"></span><span class="video-item-i"> 2-1   概述 狗屎！（4:50）</span><span class="glyphicon glyphicon-unchecked" style="float: right;"></span></li></a>
									<a href="#"><li class="list-group-item"><span class="glyphicon glyphicon-play"></span><span class="video-item-i"> 2-2   概述 狗屎！（4:50）</span><span class="glyphicon glyphicon-unchecked" style="float: right;"></span></li></a>
									<a href="#"><li class="list-group-item"><span class="glyphicon glyphicon-play"></span><span class="video-item-i"> 2-3   概述 狗屎！（4:50）</span><span class="glyphicon glyphicon-unchecked" style="float: right;"></span></li></a>
								</ul>
							</div>
						</div>
	    			</div> -->
	    		</div>
	    		<div class="col-sm-8 " style="display:none"  id="list1"> 
	    	       	<h2>课程描述：</h2><br>
	    	       	<p>${course.describe }</p>
	    		</div>
	    		<div class="col-sm-8 " style="display:none"  id="list4"> 
		    	     <div class="tab-pane fade in " id="course-message-pane">
	                    <div class="row message">
	                        <div class="col-md-12">
	                            
	                                <div class="message-tool">
	                                    <div class="tool-left" style="display: inline-block; vertical-align: bottom; height: 50px;">
	                                        <div class="search-condition">              
	                                            <ul class="navbar-nav nav">                      
	                                                <li class="active"><a href="#">全部</a></li>
	                                                <li><a href="#">精华</a></li>
	                                            </ul>
	                                        </div>  
	                                    </div>
	                                    <div class="tool-right" style="display:inline-block;vertical-align: top; float: right;padding: 8px;">
	                                        <a href="../../createQuestion.jsp"><button class="btn btn-success" type="button">我要提问</button></a>
	                                    </div>
	                                </div>
	                                <div class="course-question">
	                                   
	                                   
	                                    
	                                </div>
	
	                            
	                        </div>
	                    </div>    
	                </div>
	    		</div>
	    		<div class="col-sm-8" style="display:none"  id="list3"> 
	    		                 <div class="widget-body1"   id="kejian">

												

														<div id="profile-feed-1" class="profile-feed">

															<div class="profile-activity clearfix">

																<div>

																	<img class="pull-left" alt="Alex Doe's avatar" src="../../resources/images/downloadfile.png" />

																	

																	课件

																



																	<div class="time"  >

																		<i class="icon-time bigger-110"></i>

																			<a href="DownLoad/downloadFile/${course.id}">点击下载</a>

																	</div>

																

															</div>

														</div>

													</div>

												</div>
	    		</div>
	    		<div class="col-md-4 course-lecture">
	    			<div class="lecture-recommend">
	    				<div class="box-head">
	    					<h3><strong>讲师</strong></h3>
	    				</div>
	    				<div class="lecture-class">
		    				<div class="lecture-avatar" style="display: inline-block;"> 
		    					<a href="#">
			    					<img src="/studyonline/${teacher.pic }" class="img-circle" alt="" style="width: 60px;">			
		    					</a>
		    				</div>
		    				<div class="lecture-info" style="display: inline-block; vertical-align: middle;">
		    					<span style="font-size: 18px;font-weight: bold;T">${teacher.nickname }</span>
		    					<span style="display: block;">${teacher.title }</span>
	    					</div>
	    					<!-- <div class="lecture-describe">
	    						<p>我TM社保！我TM社保！我TM社保！我TM社保！我TM社保！我TM社保！</p>
	    					</div> -->
    					</div>
	    			</div>
	    			<div class="course-recommend">
	    				<div class="box-head">
	    					<h3><strong>课程推荐</strong></h3>
	    				</div>
	    				<div class="course-recommend-box">
	    					<ul  class="course-recommend-list" style="list-style-type:none; padding-left: 0px;">
	    						<%-- <li class="clearfix">
			    					<div class="course-img" style="display: inline-block;">
			    						<img src="${course.coursepic }" alt="" style="width: 80px; height: 60px;">
			    					</div>
			    					<div class="course-info" style="display: inline-block; vertical-align: top;">
			    						<p>京东无延迟菜单效果</p>
			    						<p>JS实现京东无延迟菜单效果,带领大家一步一步的踏入JS</p>
			    						<p class="learn-detail">初级</p>
			    					</div>
		    					</li> --%>
		    				
	    					</ul>
	    				</div>
	    			</div>
	    		</div>
    		</div>
    	</div>
    	
    </div>
    <div class="footer">
            <div class="container">
                <div class="footer-sns" style="text-align: center;padding-top: 25px;">
                    <a href="#">
                        <img src="../../resources/images/alipay.jpg" alt="" style="height:32px;width: 32px;">
                    </a>
                    <a href="#">
                        <img src="../../resources/images/wechat.jpg" alt="" style="height:32px;width: 32px;">
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
    </div>
<script>
//获取当前网址，如http://localhost:8080/Tmall/index.jsp 
var curWwwPath=window.document.location.href; 

//获取主机地址之后的目录如：/Tmall/index.jsp 
var pathName=window.document.location.pathname; 
var pos=curWwwPath.indexOf(pathName); 

//获取主机地址，如： http://localhost:8080 
var localhostPath=curWwwPath.substring(0,pos); 

//获取带"/"的项目名，如：/Tmall 
var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1); 
//项目路径
var basePath = localhostPath + projectName;


function addintostudy(){
	myuid='${message.username}';
	alert(myuid);
	var islogin=((myuid!=null&&myuid!="")?"yes":"no");
// 	alert("islogin:"+islogin);
	if(islogin=="yes"){
		$.ajax({
			url: basePath +"/mystudy/addintostudy",
			type: "POST", 
			contentType:"application/json",
			data:JSON.stringify({
 			courseid:'${course.id }',
 			addtime:new Date(),
 			uid:myuid
 		 }),success:function(data){
 			   if(data=='success'){
 					$('.addintostudy strong').text('已加入学习');
 					$('.addintostudy').attr('disabled','true');
 			   }
 		    }
 		 });
	
	}else{
		   $("#login-modal").trigger('click');
	}
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
	$(function(){
		
	
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
		
		
		
	
		var course = '${course.id}'
		
		var jsonStr = '${chapterList}';
		var chapterList = eval('('+jsonStr+')');
		
		var cont = $(".course-content");
		$.each(chapterList, function(n, obj){
			
			if(obj.secparentid == -1){
				
				cont.append('<div class="chapter-item">'
						+'<div class="chapter-title">'
						+'<span class="glyphicon glyphicon-align-justify"></span>'
						+'<span style="margin-left:10px;"><strong>'+obj.name+'</strong></span>'
						+'<span class="glyphicon glyphicon-collapse-down" style="float: right;"></span>'
						+'</div>'
						+'<div class="chapter-video-list" style="display: block;">'
						+'<div class="video-list">'
						+'<ul class="list-group  chapter-'+obj.chapterid+'">'
						+'</ul></div></div></div>');
			}
		})
		
		$.each(chapterList, function(n, obj){
			if(obj.secparentid != -1){
				var pid = obj.secparentid;
				var cont = $(".chapter-"+pid);
				cont.append('<a href="../../student/openChapter/'+obj.id+'" class="a-chapter"><li class="list-group-item"><span class="glyphicon glyphicon-play"></span><span class="video-item-i">'+obj.name+'</span></li></a>');
			}
		})
		
		$.ajax({
			type:"post",
			url:basePath+"/courseManger/findFiveHotestCourse",
			dataType:"json",
			success:function(data){
				var cont = $(".course-recommend-list");
				$.each(data, function(n , obj){
					if(n<3){
						cont.append('<li class="clearfix"><a href="../../student/CourseInfo/'+obj.id+'">'
								+'<div class="course-img" style="display: inline-block;">'
								+'<img src="../../'+obj.coursepic+'" alt="" style="width: 80px; height: 60px;">'
								+'</div><div class="course-info" style="display: inline-block; vertical-align: top;">'
								+'<p>'+obj.coursename+'</p><p>'+obj.describe+'</p>'
								+'<p class="learn-detail">'+obj.dif+'</p>'
								+'</div></a></li>');
					}
				})
			}
		})	
		
	})
</script>
    <script>
            (function($){
            	$('#star').raty();
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
                $("#navigation").css("-webkit-filter","blur(5px)");
            });
            $("#login-signup-modal,#purchase-vip-modal").on('hide.bs.modal',function(){  
                $("#main").css("-webkit-filter","none");
                $("#navigation").css("-webkit-filter","none");
            });
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
            var sc = '${course.score}';
            $("#star").raty({ 
            	score: sc,
            	readOnly: false,
            	size: 40,
            	click: function(score, evt) {
//             		    alert('ID: ' + $(this).attr('id') + "\nscore: " + score + "\nevent: " + evt);
            		    $('#star').raty('readOnly', true);
            	 } 
            });
            $(".chapter-title").click(function(){
            	var toggle=$(this).next();
            	if($(toggle).is(":hidden")){
            		$(toggle).slideDown();
            	}else{
            		$(toggle).slideUp();
            	}
            });
            $(".chapter-item .list-group-item").hover(
            	function(){
            		$(this).css({'background-color':'#14191e','color':'white'});
				},
				function(){
					$(this).css({'background-color':'#edf1f2','color':'#787d82'});
				}
			);
			$("[data-toggle='tooltip']").tooltip();;
        });
        
        $('.colist li').click(function(){
        	 $('.colist li.active').removeClass("active"); 
        	if($(this).index()==0){
        		$('#list1').show();
        		 $(this).addClass("active");
        		$('#list2').css('display','none');
        		$('#list3').css('display','none');
        		$('#list4').css('display','none');
        	}else if($(this).index()==1){
        		$('#list2').show();
       		    $(this).addClass("active");
       		    $('#list1').css('display','none');
       		    $('#list3').css('display','none');
        		$('#list4').css('display','none');
        	}else if($(this).index()==2){
        		$('#list3').show();
       		    $(this).addClass("active");
       		    $('#list1').css('display','none');
       		    $('#list2').css('display','none');
        		$('#list4').css('display','none');
        	}else{
        		$('#list4').show();
       		    $(this).addClass("active");
       		    $('#list1').css('display','none');
       		    $('#list2').css('display','none');
       		 	$('#list3').css('display','none');    
        	}
        })
        </script>
<script type="text/javascript">
		
		$(function(){
			function formateDate(date) {
		        var y = date.getFullYear();
		        var m = date.getMonth() + 1;
		        var d = date.getDate();
		        var h = date.getHours();
		        var mi = date.getMinutes();
		        m = m > 9 ? m : '0' + m;
		        return y + '-' + m + '-' + d + ' ' + h + ':' + mi;
		    }
			
			var xx="${identify}";
			var uid='${message.username}';
			var kk1='${course.reference}';
			if(kk1==null||kk1==""){
				$('#kejian').text('无课件')
			}
			if(xx!=null&&xx=='student'){
				
				$('.login-ready').show();
				$('.login-none').css('display','none');
				$('.user-name h4').text("${message.nickname}");
				var c="${message.pic}";
				if(c!=null&&c!=""){
					$('#user-avatar').attr('src',"../../${message.pic}");
				}
				$.ajax({
					url: basePath +"/mystudy/studying",
					type: "POST", 
					data:{
		 			cid:'${course.id }',
		 			uid:uid
					},success:function(data){
// 						alert(data);
		 			   if(data=='yes'){
		 					$('.addintostudy strong').text('已加入学习');
		 					$('.addintostudy').attr('disabled','true');
		 			   }
		 		    }
		 		 });
			}
			
			$.ajax({
				type:"post",
				url:basePath+"/postManager/findAllPost2",
				dataType:"json",
				success:function(data2){
					var cont = $(".course-question");
					var postList = data2['postList'];
					$.each(postList, function(n, obj){
						var pic = data2['pic-'+obj.createduid];
						cont.append('<div class="course-question-tab">'
								+'<div class="questioner-avtar">'
								+''+'<a href="#"><img src="'+pic+'" alt="" class="img-circle" style="height: 45px;margin:0 15px;"></a>'
								+'</div>'
								+'<div class="questioner-detail">'
								+'<div class="questioner-name"><p><a href="#">'+obj.nickname+'</a></p></div>'
								+'<div class="questioner-question-title"><p><a href="../../postManager/clickReply/'+obj.postid+'">'+obj.name+'</a></p></div>'
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
								+'<span class="answer-nun"><a href="#">回答：'+obj.replynum+'</a></span>'
								+'</div>'
								+'</p>'
								+'</div>'
								+'</div>'
								+'</div>');
					})
				}
			
			})
			
		});
	     $('#search-btn').click(function(){
	    	 
	    		var x=$('#searchs').val();
	 			if(x=="") return ;
	 			location.href= basePath+'/Search.jsp?word='+x;
	     })
	     
	   $('#search-btn2').click(function(){
	    	 
	    		var x=$('#searchs2').val();
	 			if(x=="") return ;
	 			location.href= basePath+'/Search.jsp?word='+x;
	     })
        </script>
</body>
</html>