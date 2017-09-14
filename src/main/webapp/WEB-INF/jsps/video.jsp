<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
		<link rel="stylesheet"  href="../../resources/css/bootstrap.css">
        <script src="../../resources/js/jquery-3.2.1.min.js"></script>
        <script src="../../resources/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../../resources/css/plyr.css">
		<script src="../../resources/js/plyr.js"></script>
		<script src="../../resources/js/demo2.js"></script>
				

		
	    <style type="text/css">
       /*  body { font-size: 12px; line-height: 120%; text-align: center; } */
        #list-reply a { color: #333; text-decoration: none;}
        #list-reply a:hover { text-decoration: underline;}
        
        #list-reply .clearfix:after { content:"."; display:block; height:0; clear:both; visibility:hidden}
        #list-reply .clearfix { *height:1%;position: relative;}
        #list-reply{ margin: 10px auto; text-align: left; width: 100%;}
        #list-reply .box { border-bottom: 1px solid #eee; position: relative;  width: 100%; padding: 20px 0}
        #list-reply .box:hover .close { display: block;}
        #list-reply .close { display: none; top:0px; right: 0px; width: 28px; height: 28px; border: 1px solid #eee; position: absolute; background: #f2f4f7; line-height: 27px; text-align: center;}
        #list-reply .close:hover { background: #c8d2e2; text-decoration: none;}
        #list-reply .head { float: left; width: 60px; height: 60px; margin-right: 10px;}
        #list-reply .content { float: left; width: 800px;}
        #list-reply .main { margin-bottom: 10px; }
        #list-reply .txt { margin-bottom: 10px;}
        #list-reply .user { color: #003a6c; }
        #list-reply .pic { margin-right: 5px; width: 200px; border: 1px solid #eee;}
        #list-reply .info { height: 20px; line-height: 19px; font-size: 14px; margin: 0 0 10px 0;}
        #list-reply .info .time { font-size:14px;color: #ccc; float: left; height: 20px; padding-left: 20px; float:right;  background: url("images/bg1.jpg") no-repeat left top;}
        #list-reply .info .praise { color: #369; float: right; height: 20px; padding-left: 18px; background: url("images/bg2.jpg") no-repeat left top;}
        #list-reply .info .praise:hover { text-decoration: underline; background: url("images/bg3.jpg") no-repeat left top;}
        #list-reply .praises-total { margin: 0 0 10px 0; height: 20px; background: url("images/praise.png") no-repeat 5px 5px rgb(247, 247, 247); padding: 5px 0 5px 25px; line-height: 19px;}
        #list-reply .comment-box { padding: 10px 0; border-top: 1px solid #eee;}
        #list-reply .comment-box:hover { background: rgb(247, 247, 247);}
        #list-reply .comment-box .myhead { float: left; width: 30px; height: 30px; margin-right: 10px;}
        #list-reply .comment-box .comment-content { float: left; width: 750px; }
        #list-reply .comment-box .comment-content .comment-time {font-size:14px; color: #ccc; margin-top: 3px; line-height: 16px; position: relative; float:right;}
        #list-reply .comment-box .comment-content .comment-praise { display: none; color: #369; padding-left: 17px; height: 20px; background: url("images/praise.png") no-repeat;  position: absolute; bottom: 0px; right: 44px;}
        #list-reply .comment-box .comment-content .comment-operate { display: none; color: #369; height: 20px;  position: absolute; bottom: 0px; right: 10px;}
        #list-reply .comment-box .comment-content:hover .comment-praise { display: inline-block;}
        #list-reply .comment-box .comment-content:hover .comment-operate { display: inline-block;}
        #list-reply .text-box .comment { border: 1px solid #eee; display: block; height: 30px; width: 100%; padding: 5px; resize: none; color: #ccc; overflow:hidden}
        #list-reply .text-box .btn { font-size: 14px; font-weight: bold; display: none; float: right; width: 65px; height: 25px; border: 1px solid #0C528D; color: #fff; background: #4679AC;}
        #list-reply .text-box .btn-off { border: 1px solid #ccc; color: #ccc; background: #F7F7F7; margin-top:5px; padding:0px;}
        #list-reply .text-box .word{ display: none; float: right; margin: 7px 10px 0 0; color: #666;}
        #list-reply .text-box-on .comment{ height: 50px; color: #333;}
        #list-reply .text-box-on .btn{ display: inline; margin-top:5px; padding:0px;}
        #list-reply .text-box-on .word{ display: inline;}
		#list-reply p{word-wrap:break-word;}/*解决数字不换行问题*/
		
		
    </style>	
		
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
        .can-reply{
        	background:#2a5caa;
        }
        .cant-reply{
        	background:#8a8c8e;
        }
    </style>

<script>
	$(function() {
		plyr.setup();
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
		
		(function($) {
			$.fn.hoverDelay = function(options) {
				var defaults = {
					hoverDuring : 200,
					outDuring : 200,
					hoverEvent : function() {
						$.noop();
					},
					outEvent : function() {
						$.noop();
					}
				};
				var sets = $.extend(defaults, options || {});
				var hoverTimer, outTimer;
				return $(this).each(
						function() {
							$(this).hover(
									function() {
										clearTimeout(outTimer);
										hoverTimer = setTimeout(
												sets.hoverEvent,
												sets.hoverDuring);
									},
									function() {
										clearTimeout(hoverTimer);
										outTimer = setTimeout(sets.outEvent,
												sets.outDuring);
									});
						});
			}
		})(jQuery);

		$("#login-modal").click(function() {
			$("#ls-tab a:first").tab("show");
		});
		$("#signup-modal").click(function() {
			$("#ls-tab a:last").tab("show");
		});

		$("#avatar-btn").hoverDelay({
			hoverEvent : function() {
				$(".user-card-inner").slideDown();
				$("#user-avatar").animate({
					top : '20px',
					width : '80px',
					right : '15px'
				}, 200);
			},
			outEvent : function() {
				if (!$(".user-card-inner:hover").length) {
					$(".user-card-inner").slideUp();
					$("#user-avatar").animate({
						top : '0px',
						width : '45px',
						right : '0px'
					}, 200);
				}
			}
		});
		$(".user-card-inner,#user-avatar").hoverDelay({
			outEvent : function() {
				$(".user-card-inner").slideUp();
				$("#user-avatar").animate({
					top : '0px',
					width : '45px',
					right : '0px'
				}, 200);
			}
		});

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
// 	                alert('66');
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
		
		var xx="${identify}";
	var uid='${message.username}';
	if(xx!=null&&xx=='student'){
			$('.login-ready').show();
			$('.login-none').css('display','none');
			$('.user-name h4').text("${message.nickname}");
			var c="${message.pic}";
			if(c!=null&&c!=""){
				$('#user-avatar').attr('src',"../../${message.pic}");
			}
		}
		
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
			function formateDate(date) {
		        var y = date.getFullYear();
		        var m = date.getMonth() + 1;
		        var d = date.getDate();
		        var h = date.getHours();
		        var mi = date.getMinutes();
		        m = m > 9 ? m : '0' + m;
		        return y + '-' + m + '-' + d + ' ' + h + ':' + mi;
		    }
			
			$("#textarea-reply").keyup(
					function() {
						var val = $(this).val();
						var len = val.length;
						if (len<=0 || len>300) {
							$("#submit-reply")
									.addClass("cant-reply");
						} else {
							$("#submit-reply")
									.removeClass("cant-reply")

						}
						$("#text-len").html(len+'/300');
					})
					
					
			$("#submit-reply").click(function(){
				if($(this).hasClass("cant-reply")){
					alert("评论不能为空啊");
				}else{
					
					var cont = $("#list-reply");
					var text = $("#textarea-reply").val();
					var time = new Date();
					var myname = '${message.nickname}'
					var mypic = '${message.pic}'
					var myuid='${message.username}'
					var chapterid = '${chapter.id}';
					
					if(myuid!=""){
					cont.prepend('<div class="box clearfix">'
							+'<img class="head" src="/studyonline/'+mypic+'" alt="" />'
							+'<div class="content">'
							+'<div class="main">'
							+'<p class="txt">'
							+'<span class="user">'+myname+'：</span>'+text
							+'</p>'
							+'</div>'
							+'<div class="info clearfix">'
							+'<span class="time">'+formateDate(time) +'</span>'
							+'</div>'
							+'<div class="comment-list">'
							+'</div>'
							+'<div class="text-box">'
							+'<textarea class="comment" autocomplete="off" placeholder="评论..."></textarea>'
							+'<button class="btn reply-btn">回 复</button>'
							+'<span class="word"><span class="length">0</span>/140</span>'
							+'</div>'
							+'</div>'
							+'</div>');
						
					reply({pic:mypic, name:myname});
					var newestid;
						$.ajax({
							type:"post",
							url: basePath+"/CreplyManger/addCreply",
							dataType:"text",
							contentType:"application/json",
							data:JSON.stringify({
								chapterid:chapterid,
								uid:myuid,
								content:text,
								replytime: time,
								replytoreplyid:-1,
								replytouid:"-1",
								replyname:myname,
								replytoname:"-1",
							}),
							success:function(msg){
								 $("#textarea-reply").val("");	
								 newestid = msg;
							}
						})
					
					var replyBtn = $(".reply-btn").eq(0);
					
					replyBtn.click(function(){
						var text2 = $(this).parent().find("textarea").val();
						$.ajax({
							type:"post",
							url:basePath+"/CreplyManger/addCreply",
							dataType:"json",
							contentType:"application/json",
							data:JSON.stringify({
								uid:myuid,
								replyname:myname,
								content:text2,
								replytime:new Date(),
								replytoreplyid:newestid,
								replytoname:"-1",
								replytouid:"-1",
								chapterid:chapterid
							}),
							success:function(msg){
							}
						})
					})
					}else{
						 $("#login-modal").trigger('click');
					}
				}
					
					
			})		
			
			var chapterid = '${chapter.id}'
			$.ajax({
				type:"post",
				url:basePath+"/CreplyManger/findAllCreplyByCid",
				ype:"json",
				data:{
					chapterid:chapterid
				},
				success:function(data){
					var cont = $("#list-reply");
					var CreplyList = data['CreplyList'];
					$.each(CreplyList, function(n, obj){
						if(obj.replytoreplyid == -1){
							cont.prepend('<div class="box clearfix">'
							+'<img class="head" src="/studyonline/'+data['pic-'+obj.uid]+'" alt="" />'
							+'<div class="content">'
							+'<div class="main">'
							+'<p class="txt">'
							+'<span class="user">'+obj.replyname+'：</span>'+obj.content
							+'</p>'
							+'</div>'
							+'<div class="info clearfix">'
							+'<span class="time">'+formateDate( new Date(parseInt(obj.replytime, 10))) +'</span>'
							+'</div>'
							+'<div class="comment-list replyid-'+obj.replyid+'">'
							+'</div>'
							+'<div class="text-box">'
							+'<textarea class="comment" autocomplete="off" placeholder="评论..."></textarea>'
							+'<button class="btn reply-btn"><input type="hidden" value="'+obj.replyid+'" />回 复</button>'
							+'<span class="word"><span class="length">0</span>/140</span>'
							+'</div>'
							+'</div>'
							+'</div>');
						}
					})
					var myname = '${message.nickname}';
					var mypic = '${message.pic}';
					var myuid='${message.username}';
					
					var replyBtn = $(".reply-btn");
					replyBtn.each(function(){
						$(this).click(function(){
							var text3 = $(this).parent().find("textarea").val();
							var toreplyid = $(this).find("input").val();
							if(text3!="" && myname!=""){
								$.ajax({
									type:"post",
									url:basePath+"/CreplyManger/addCreply",
									dataType:"text",
									contentType:"application/json",
									data:JSON.stringify({
										chapterid:chapterid,
										uid:myuid,
										content:text3,
										replytime:new Date(),
										replytoreplyid:toreplyid,
										replyname:myname,
										replytoname:"-1",
										replytouid:"-1"
									}),
									success:function(msg){
									}
								})										
							}else{
								$("#login-modal").trigger('click');
							}
						})
					})
					
					$.each(CreplyList, function(n, obj){
						if(obj.replytoreplyid != -1){
							
							var cont = $(".replyid-"+obj.replytoreplyid);
							cont.prepend('<div class="comment-box clearfix" user="other">'
									+'<img class="myhead" src="/studyonline/'+data['pic-'+obj.uid]+'" alt=""/>'
									+'<div class="comment-content">'
									+'<p class="comment-text"><span class="user">'+obj.replyname+'：</span>'+obj.content+'</p>'
									+'<p class="comment-time">'+formateDate( new Date(parseInt(obj.replytime, 10))) 
									+'</p></div></div>');
						}
					})
					
					reply({pic:mypic, name:myname});
				}
			})					
	})
				
</script>
<body>
<nav class="navbar navbar-inverse" role="navigation" id="navigation" style="margin-bottom:0px;">
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
                            <a href="#" class="navbar-brand" id="title">
                                <p style="min-width:150px;font-family: myFirstFont;">精品课程网</p>
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
                                            <button class="btn btn-default btn-sm" id="search-btn"  type="button"><span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </span>
                                    </div>
                                </form>
                            </li>               
                           <!--  <li style="display:list-item;"><a href="#" data-toggle="modal" data-target="#purchase-vip-modal" style="color: gold;">VIP</a></li> -->
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
                                            <button class="btn btn-default btn-sm" id="search-btn2" type="button"><span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </span>
                                    </div>
                                </form>
                            </li>
                            <li class="user-card" style="display:list-item; width: 60px; height: 60px; z-index:999">
                                    <a href="#" style="padding: 5px;line-height: 30px; height: 60px;" id="avatar-btn">
                                         <img class="img-circle" src="../../resources/images/logo.jpg" alt="" id="user-avatar">
                                    </a>
                                    <div class="user-card-inner" style="display:none;" >
                                            <div class="user-name" style="">
                                                 <p><h4 style="text-align: center;">${message.nickname }</h4></p>
                                            </div>
                                            <div class="user-info" style="padding:15px;">
                                                <div class="user-status" style="border-bottom: 1px solid #e5e9ef;">
                                                    <p style="text-align:center;">身份:${message.dept }</p>
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
                           <!--  <li style="display:list-item;"><a href="#" data-toggle="modal" data-target="#purchase-vip-modal" style="color: gold; height: 60px;line-height: 25px;">VIP</a></li> -->
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
	<div class="videobox" style="margin-top: 0px;">
		<video poster="../../resources/images/vs.png" controls> <source
			src="../../${chapter.videosrc }"
			type="video/mp4"> <!-- <source src="/path/to/video.webm" type="video/webm">-->
		
	</div>
	<div class="row"
		style="width: 900px; margin: 0px auto; margin-top: 10px;">
		<ul id="myTab" class="nav nav-tabs">
			<li class="active"><a href="#home" data-toggle="tab"> 用户评论 </a>
			</li>
			<li><a href="#ios" data-toggle="tab">课程作业</a></li>
			<!-- <li><a href="#ios" data-toggle="tab">教学课件</a></li> -->
		</ul>
		<div id="myTabContent" class="tab-content" style="height:900px;">
			<div class="tab-pane fade in active" id="home">
				<div class="row" style="margin-top: 15px;">
					<div class="col-md-1 col-xs-1">
						<img class="img-circle" id="reply-role"
							style="height: 50px; width: 50px; float: right;" alt=""
							src="/studyonline/resources/images/default-pic.jpg">
					</div>
					<script type="text/javascript">
						var pic = '${message.pic}'
						if(pic!=null && pic!=""){
							$("#reply-role").attr("src", '/studyonline/'+pic);
						}
					</script>
					<div class="col-md-11 col-xs-11">
						<textarea id="textarea-reply" rows="5" cols="111"
							style="border: 1px solid #eee; resize: none"
							placeholder="  听说，你有故事？我这里有酒~"></textarea>

					</div>
				</div>
				<div class="row" style="width: 100%; margin-top: 10px; padding-right:8px;">
					<button style="float: right; margin-left: 5px;" id="submit-reply"
						class="btn btn-primary cant-reply">评 论</button>
					<p id="text-len" style="float: right;">0/300</p>
				</div>

				<hr />


				<div class="reply-cont">
					<div id="list-reply">
						
					</div>
				</div>

			</div>
			<div class="tab-pane fade" id="ios" style="margin-top:100px;">
			<center><a style="font-size:20px;"id="homework"  target="_blank" href="http://localhost:8080/checkonline/TestPage.jsp?tid=${homework.hwcontent}"  >点我去做作业</a> </center>
			<script type="text/javascript">
					var tid = '${homework.hwcontent}';
					if(tid == "暂无作业"||tid == "null"){
						$("#homework").html("本课程暂无作业");
					}
					$('#homework').click(function(){
						
						var xx="${identify}";
						var uid='${message.username}';
						if(xx!=null&&xx=='student'&&uid!=null&&uid!=""){
							return true;
						}else{
							$("#login-modal").trigger('click');
							return false;
						}
					
					})
					
			</script>
			</div>
<!-- 			<div class="tab-pane fade" id="ios">
				<p>教学课件</p>
			</div> -->

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
</body>
</html>