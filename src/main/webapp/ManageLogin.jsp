<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

	<head>

		<meta charset="utf-8" />

		<title>后台登陆</title>

	
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />



		<!-- basic styles -->



		<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet" />

	<link rel="stylesheet" type="text/css" href="resources/font-awesome/css/font-awesome.css">
<script type="text/javascript" src="resources/js/jquery-3.1.1.min.js"></script>  
<script type="text/javascript" src="resources/js/toastr.min.js"></script> 
<link href="resources/css/toastr.css" rel="stylesheet">

		<!--[if IE 7]>

		  <link rel="stylesheet" href="resources/assets/css/font-awesome-ie7.min.css" />

		<![endif]-->



		<!-- page specific plugin styles -->



		<!-- fonts -->



		 



		<!-- ace styles -->



		<link rel="stylesheet" href="resources/assets/css/ace.min.css" />

		<link rel="stylesheet" href="resources/assets/css/ace-rtl.min.css" />



		<!--[if lte IE 8]>

		  <link rel="stylesheet" href="resources/assets/css/ace-ie.min.css" />

		<![endif]-->



		<!-- inline styles related to this page -->



		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->



		<!--[if lt IE 9]>

		<script src="resources/assets/js/html5shiv.js"></script>

		<script src="resources/assets/js/respond.min.js"></script>

		<![endif]-->

	</head>



	<body class="login-layout"   >

		<div class="main-container" style="margin-top:7%;text-align:center;width:100%" >

			<div class="main-content">

				<div class="row">

					<div class="col-sm-10 col-sm-offset-1">

						<div class="login-container">

							<div class="center">

								<h1>

									<i class="icon-leaf green"></i>

									<!-- <span class="red">精品课</span> -->

									<span class="white">后台登陆</span>

								</h1>

								<h4 class="blue">&copy; 不打代码跟咸鱼有什么区别</h4>

							</div>



							<div class="space-6"></div>



							<div class="position-relative">

								<div id="login-box" class="login-box visible widget-box no-border">

									<div class="widget-body">

										<div class="widget-main">

											<h4 class="header blue lighter bigger">

												<i class="icon-coffee green"></i>

												Please Enter Your Information

											</h4>



											<div class="space-6"></div>


<form id="loginForm" action="/studyonline/login/msgCheck" method="POST">


												
													<label class="block clearfix">

														<span class="block input-icon input-icon-right">

															<input id="username"   name="username" type="text"  class="form-control"  placeholder="账号" />

															<i class="icon-user" style="margin-top:3px"></i>

														</span>

													</label>



													<label class="block clearfix">

														<span class="block input-icon input-icon-right">

															<input  id="password"  name="password"  type="password" class="form-control" placeholder="密码" />

															<i class="icon-lock" style="margin-top:3px"></i>

														</span>

													</label>

												
												<label class="block clearfix">

														<span class="block input-icon input-icon-right">

															<select  id="usertype"   name="usertype" class="form-control"   style="color:black">

																<option  value="1" style="color: #b6b6b6" disabled selected>请选择身份</option>

																<option value="teacher">教师</option>

																<option value="admin">管理员</option>
															</select>
															<i class="icon-user" style="margin-top:3px"></i>

														</span>

													</label>

													<div class="space"></div>



													<div class="clearfix">

														<!-- <label class="inline"> -->

															<!-- <input type="checkbox" class="ace" /> -->

															<!-- <span class="lbl"> Remember Me</span> -->

														<!-- </label> -->



														<button type="button" class="width-35 pull-right btn btn-sm btn-primary"  onclick="login();">

															<i class="icon-key"></i>

															登陆

														</button>

													</div>



											

												

			
			</form>



											<!-- <div class="social-or-login center"> -->

												<!-- <span class="bigger-110">Or Login Using</span> -->

											<!-- </div> -->



											<!-- <div class="social-login center"> -->

												<!-- <a class="btn btn-primary"> -->

													<!-- <i class="icon-facebook"></i> -->

												<!-- </a> -->



												<!-- <a class="btn btn-info"> -->

													<!-- <i class="icon-twitter"></i> -->

												<!-- </a> -->



												<!-- <a class="btn btn-danger"> -->

													<!-- <i class="icon-google-plus"></i> -->

												<!-- </a> -->

											<!-- </div> -->

										</div><!-- /widget-main -->



										<!-- <div class="toolbar clearfix"> -->

											<!-- <div> -->

												<!-- <a href="#" onclick="show_box('forgot-box'); return false;" class="forgot-password-link"> -->

													<!-- <i class="icon-arrow-left"></i> -->

													<!-- I forgot my password -->

												<!-- </a> -->

											<!-- </div> -->



											<!-- <div> -->

												<!-- <a href="#" onclick="show_box('signup-box'); return false;" class="user-signup-link"> -->

													<!-- I want to register -->

													<!-- <i class="icon-arrow-right"></i> -->

												<!-- </a> -->

											<!-- </div> -->

										<!-- </div> -->

									</div><!-- /widget-body -->

								</div><!-- /login-box -->


<!-- 
								<div id="forgot-box" class="forgot-box widget-box no-border">

									<div class="widget-body">

										<div class="widget-main">

											<h4 class="header red lighter bigger">

												<i class="icon-key"></i>

												Retrieve Password

											</h4>



											<div class="space-6"></div>

											<p>

												Enter your email and to receive instructions

											</p>



											<form>

												<fieldset>

													<label class="block clearfix">

														<span class="block input-icon input-icon-right">

															<input type="email" class="form-control" placeholder="Email" />

															<i class="icon-envelope"></i>

														</span>

													</label>



													<div class="clearfix">

														<button type="button" class="width-35 pull-right btn btn-sm btn-danger">

															<i class="icon-lightbulb"></i>

															Send Me!

														</button>

													</div>

												</fieldset>

											</form>

										</div><!-- /widget-main -->



										<!-- <div class="toolbar center"> -->

											<!-- <a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link"> -->

												<!-- Back to login -->

												<!-- <i class="icon-arrow-right"></i> -->

											<!-- </a> -->

										<!-- </div> -->

									<!-- </div><!-- /widget-body --> -->

								<!-- </div><!-- /forgot-box -->  -->



								<!-- <div id="signup-box" class="signup-box widget-box no-border"> -->

									<!-- <div class="widget-body"> -->

										<!-- <div class="widget-main"> -->

											<!-- <h4 class="header green lighter bigger"> -->

												<!-- <i class="icon-group blue"></i> -->

												<!-- New User Registration -->

											<!-- </h4> -->



											<!-- <div class="space-6"></div> -->

											<!-- <p> Enter your details to begin: </p> -->



											<!-- <form> -->

												<!-- <fieldset> -->

													<!-- <label class="block clearfix"> -->

														<!-- <span class="block input-icon input-icon-right"> -->

															<!-- <input type="email" class="form-control" placeholder="Email" /> -->

															<!-- <i class="icon-envelope"></i> -->

														<!-- </span> -->

													<!-- </label> -->



													<!-- <label class="block clearfix"> -->

														<!-- <span class="block input-icon input-icon-right"> -->

															<!-- <input type="text" class="form-control" placeholder="Username" /> -->

															<!-- <i class="icon-user"></i> -->

														<!-- </span> -->

													<!-- </label> -->



													<!-- <label class="block clearfix"> -->

														<!-- <span class="block input-icon input-icon-right"> -->

															<!-- <input type="password" class="form-control" placeholder="Password" /> -->

															<!-- <i class="icon-lock"></i> -->

														<!-- </span> -->

													<!-- </label> -->



													<!-- <label class="block clearfix"> -->

														<!-- <span class="block input-icon input-icon-right"> -->

															<!-- <input type="password" class="form-control" placeholder="Repeat password" /> -->

															<!-- <i class="icon-retweet"></i> -->

														<!-- </span> -->

													<!-- </label> -->



													<!-- <label class="block"> -->

														<!-- <input type="checkbox" class="ace" /> -->

														<!-- <span class="lbl"> -->

															<!-- I accept the -->

															<!-- <a href="#">User Agreement</a> -->

														<!-- </span> -->

													<!-- </label> -->



													<!-- <div class="space-24"></div> -->



													<!-- <div class="clearfix"> -->

														<!-- <button type="reset" class="width-30 pull-left btn btn-sm"> -->

															<!-- <i class="icon-refresh"></i> -->

															<!-- Reset -->

														<!-- </button> -->



														<!-- <button type="button" class="width-65 pull-right btn btn-sm btn-success"> -->

															<!-- Register -->

															<!-- <i class="icon-arrow-right icon-on-right"></i> -->

														<!-- </button> -->

													<!-- </div> -->

												<!-- </fieldset> -->

											<!-- </form> -->

										<!-- </div> -->



										<!-- <div class="toolbar center"> -->

											<!-- <a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link"> -->

												<!-- <i class="icon-arrow-left"></i> -->

												<!-- Back to login -->

											<!-- </a> -->

										<!-- </div> -->

									<!-- </div><!-- /widget-body --> -->

								<!-- </div><!-- /signup-box --> -->

							</div><!-- /position-relative -->

						</div>

					</div><!-- /.col -->

				</div><!-- /.row -->

			</div>

		</div><!-- /.main-container -->



		<!-- basic scripts -->



		<!--[if !IE]> -->



		<!-- <script src="http://www.jq22.com/jquery/jquery-2.1.1.js"></script>
 -->


		<!-- <![endif]-->



		<!--[if IE]>

<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> -->

<![endif]-->



		<!--[if !IE]> -->



		<script type="text/javascript">

			window.jQuery || document.write("<script src='resources/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");

		</script>



		<!-- <![endif]-->



		<!--[if IE]>

<script type="text/javascript">

 window.jQuery || document.write("<script src='resources/assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");

</script>

<![endif]-->



		<script type="text/javascript">

			if("ontouchend" in document) document.write("<script src='resources/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");

		</script>
		
		<script type="text/javascript">
		$(function(){
			toastr.options = {  
			        positionClass: "toast-center-center",  
			        "showDuration": "1900",//显示的动画时间
			        "hideDuration": "1500",//消失的动画时间
			        "timeOut": "1500", //展现时间
			}
			
			var wrongMsg = GetQueryString("wrongMsg");
			if(wrongMsg!=null){
				toastr.error("用户名或密码错误！");
			}
			
			function GetQueryString(name)
			{
			     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
			     var r = window.location.search.substr(1).match(reg);
			     if(r!=null)return  unescape(r[2]); return null;
			}
		});
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

		function login(){
			
			var username=$('#username').val();
			if(username==''){
				$('#username').focus();
				return ;
			}
			var password=$('#password').val();
			if(password==''){
				$('#password').focus();
				return ;
			}
			var userType=$('#usertype').val();
			if(userType==null){
				$('#usertype').focus();
				return ;
			}
			var x=document.getElementById('loginForm');
			x.submit();

			$.ajax({
	            url: localhostPath + "/checkonline/login/msgcheck",
	            type: "POST",
	            data: {
	                password: password,
	                username: username,
	                identity: "教师"
	            },
	            success: function (data) {
// 	                alert('66');
	            }
	        })
		    /* 	$.ajax({
				url: basePath +"/login/msgCheck",
				type: "POST", 
				data:{
					username:username,
					password:password,
					userType:userType
				},
				success:function(data){
					if(data=='false'){
						alert('账号或密码错误');
					}
				}
			}) */

		}
	
		</script>


		<!-- inline scripts related to this page -->



</body>

</html>

