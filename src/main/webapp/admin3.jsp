<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta charset="utf-8" />

<title>管理员模块</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />


<link
	href="resources/assets/css/bootstrap.min.css"
	rel="stylesheet" />

<link rel="stylesheet" type="text/css"
	href="resources/font-awesome/css/font-awesome.css">

<link rel="stylesheet"
	href="resources/assets/css/jquery-ui-1.10.3.custom.min.css" />

<link rel="stylesheet"
	href="resources/assets/css/chosen.css" />

<link rel="stylesheet"
	href="resources/assets/css/datepicker.css" />

<link rel="stylesheet"
	href="resources/assets/css/ace.min.css" />

<link rel="stylesheet"
	href="resources/assets/css/ace-rtl.min.css" />

<link rel="stylesheet"
	href="resources/assets/css/ace-skins.min.css" />

<link rel="stylesheet"
	href="resources/css/popup.css" />


<script
	src="resources/assets/js/ace-extra.min.js"></script>
	

<style>
*{
list-style: none;
}

.topnav {
	width: 100%;
	padding: 40px 28px 25px 0;
	font-family: "Microsoft Yahei", "Century Gothic", Arial, Helvetica, sans-serif;
}

ul.topnav {
	padding: 0;
	margin: 0;
	font-size: 15px;
	line-height: 0.5em;
}

ul.topnav li {}

ul.topnav li a {
	line-height: 10px;
	font-size: 11px;
	padding: 10px 5px;
	color: #000;
	display: block;
	text-decoration: none;
	font-weight: bolder;
}

ul.topnav li a:hover {
	background-color:#675C7C;
	color:white;
}

ul.topnav ul {
	margin: 0;
	padding: 0;
	display: none;
}

ul.topnav ul li {
	margin: 0;
	padding: 0;
	clear: both;
}

ul.topnav ul li a {
	padding-left: 20px;
	font-size: 10px;
	font-weight: normal;
	outline:0;
}

ul.topnav ul li a:hover {
	background-color:#D3C99C;
	color:#675C7C;
}

ul.topnav ul ul li a {
	color:black;
	padding-left: 40px;
}

ul.topnav ul ul li a:hover {
	background-color:#D3CEB8;
	color:#675C7C;
}

ul.topnav span{
	float:right;
}
</style>

<style>
.videoBox {
	background: grey;
	height: 200px;
	width: 300px;
	margin: 10px 10px;
	float: left;
}

.videoBox .vtitle {
	background: #d3d7d4;
	height: 30px;
	width: auto;
	line-height: 30px;
}

.videoBox .vspan {
	float: right;
	margin-right:5px;
	cursor: default;
	line-height: 30px;
	color:grey;
	font-size:20px;
}
.videoBox .vspan:hover{
	color:black;
}
</style>

</head>



<body>

	<div class="navbar navbar-default" id="navbar">

			<script type="text/javascript">

				try{ace.settings.check('navbar' , 'fixed')}catch(e){}

			</script>

		<div class="navbar-container" id="navbar-container">

			<div class="navbar-header pull-left">

				<a href="#" class="navbar-brand"> <small> <i
						class="icon-leaf"></i> 管理员控制台

				</small>

				</a>
				<!-- /.brand -->

			</div>
			<!-- /.navbar-header -->



			<div class="navbar-header pull-right" role="navigation">

				<ul class="nav ace-nav">

					<li class="light-blue"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle"> <img class="nav-user-photo"
							src="/studyonline/resources/images/default-pic.jpg"
							alt="Jason's Photo" /> <span class="user-info"> <small>欢迎光临,</small>

								Jason

						</span> <i class="icon-caret-down"></i>

					</a>



						<ul
							class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">

							<li><a href="#"> <i class="icon-cog"></i> 设置

							</a></li>



							<li><a href="#"> <i class="icon-user"></i> 个人资料

							</a></li>



							<li class="divider"></li>



							<li><a href="#"> <i class="icon-off"></i> 退出

							</a></li>

						</ul></li>

				</ul>
				<!-- /.ace-nav -->

			</div>
			<!-- /.navbar-header -->

		</div>
		<!-- /.container -->

	</div>



	<div class="main-container" id="main-container">

		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>



		<div class="main-container-inner">

			<a class="menu-toggler" id="menu-toggler" href="#"> <span
				class="menu-text"></span>

			</a>



			<div class="sidebar" id="sidebar">

				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'fixed')
					} catch (e) {
					}
				</script>






				<ul id="nav" class="nav nav-list">

					<li><a href="admin.jsp">
							<i class="icon-group"></i> <span class="menu-text"> 学生账户管理
						</span>

					</a></li>
					<li><a href="admin2.jsp">
							<i class="icon-user"></i> <span class="menu-text"> 教师账户管理
						</span>

					</a></li>
					<li class="active"><a
						href="admin3.jsp"> <i
							class="icon-film"></i> <span class="menu-text"> 视频资源管理 </span>

					</a></li>
					<li><a href="admin4.jsp">
							<i class="icon-comments"></i> <span class="menu-text">
								留言信息管理 </span>

					</a></li>

				</ul>
				<!-- /.nav-list -->



				<div class="sidebar-collapse" id="sidebar-collapse">

					<i class="icon-double-angle-left"
						data-icon1="icon-double-angle-left"
						data-icon2="icon-double-angle-right"></i>

				</div>



				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'collapsed')
					} catch (e) {
					}
				</script>

			</div>



			<div class="main-content">

				<div class="breadcrumbs" id="breadcrumbs">

					<script type="text/javascript">
						try {
							ace.settings.check('breadcrumbs', 'fixed')
						} catch (e) {
						}
					</script>



					<ul class="breadcrumb" style="margin-top: 8px;">
						<li>视频资源管理</li>
					</ul>

				</div>



				<div class="page-content">

					<div class="row" >

						<div class="col-md-2 col-xs-12 col-sm-12" style="border-left:1px solid #d3d7d4;border-right:1px solid #d3d7d4; height:810px;overflow:auto;">
						<h4 class="navtitle">课程目录</h4>
							<ul class="topnav">
								
						
							</ul>
						</div>
						<div class="col-md-10 col-xs-12 col-sm-12">
							<div id="videoCont" class="col-md-12 col-sm-12" style="border:2px solid #d3d7d4; padding:0px; height:810px;"  >
							
						<!-- 	<div class="videoBox">
								<div class="vtitle">I AM TITLE <span class="icon-ban-circle vspan" ></span></div>
								
							<video src="resources/video/哲学经典.mp4" controls="controls" style="height:170px; width:300px;"></video>
								
							</div> -->
						
							<h1 style="line-height:810px; color:grey; text-align:center;">请选择课程 ...</h1>
				
						</div>
						</div>
					</div>
		
					
				
						
				</div>

				<div id="popup3" class="popup">
					<div class="title">
						<span class="icon-ban-circle"></span>
					</div>
					<div class="cont" style="height: 200px">
						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2"></div>

						</div>

						<div class="center" style="padding-top: 35px;">
							<button id="submit3" class="btn btn-primary"
								style="margin-right: 80px;">Submit</button>
							<button id="reset3" class="btn btn-grey">Reset</button>
						</div>

					</div>
				</div>


				<div id="mask_shadow"></div>
			</div>
			<!-- /.main-content -->





		</div>
		<!-- /.main-container-inner -->



		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="icon-double-angle-up icon-only bigger-110"></i>

		</a>

	</div>
	<!-- /.main-container -->

<script src='resources/assets/js/jquery-2.0.3.min.js'></script>
<script src='resources/assets/js/jquery.mobile.custom.min.js'></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/assets/js/typeahead-bs2.min.js"></script>
<script src="resources/assets/js/jquery.dataTables.min.js"></script>
<script src="resources/assets/js/jquery.dataTables.bootstrap.js"></script>
<script src="resources/assets/js/date-time/bootstrap-datepicker.min.js"></script>
<script src="resources/assets/js/ace-elements.min.js"></script>
<script src="resources/assets/js/ace.min.js"></script>
<script src="resources/js/jquery-form.js"></script>

<script src="resources/js/scriptbreaker-multiple-accordion-1.js"></script>
<script type="text/javascript" src="resources/js/toastr.min.js"></script> 
<link href="resources/css/toastr.css" rel="stylesheet">

	<script>
		$(function() {

			toastr.options = {  
			        positionClass: "toast-center-center",  
			        "showDuration": "1900",//显示的动画时间
			        "hideDuration": "1500",//消失的动画时间
			        "timeOut": "1500", //展现时间
			}
		});
	</script>

	<script>
		$(function() {
			//获取当前网址，如http://localhost:8080/Tmall/index.jsp 
			var curWwwPath = window.document.location.href;

			//获取主机地址之后的目录如：/Tmall/index.jsp 
			var pathName = window.document.location.pathname;
			var pos = curWwwPath.indexOf(pathName);

			//获取主机地址，如： http://localhost:8080 
			var localhostPath = curWwwPath.substring(0, pos);

			//获取带"/"的项目名，如：/Tmall 
			var projectName = pathName.substring(0, pathName.substr(1).indexOf(
					'/') + 1);
			//项目路径
			var basePath = localhostPath + projectName;

			
		
			
			//获取课程分类列表
			$.ajax({
				type:"POST",
				url: basePath+"/Dir/findFirstDir",
				dataType:"json",
				async: false,
				success:function(data){
					var cont = $(".topnav");
					cont.html("");
					var addHtml = "";
					$.each(data, function(n, obj){
						addHtml += '<li class="firstdir"><input type="hidden" value="'+obj.id+'" /><a>'+obj.classname+'</a></li>';
					})
					cont.append(addHtml);
					
					var fDirList = cont.find(".firstdir");
					
					
					$.ajax({
						type:"post",
						url: basePath+"/Dir/findSecDir",
						dataType:"json",
						async:false,
						success:function(data2){
							fDirList.each(function(){
								
								var cont = $(this);
								var id = cont.find("input").val();
								var dirName = cont.find("a").html();
								var addHtml =""
								$.each(data2, function(n, obj){
									if(obj.fdirid == id){
										if(addHtml == "")
											addHtml+="<ul>";
										addHtml+= '<li class="secdir"><a>'+obj.classname+'</a></li>';
									}
								})
								if(addHtml!=""){
									addHtml+='</ul>';
								}
								cont.append(addHtml);
							})
							
							var sDirList = cont.find(".secdir");
							
							$.ajax({
								type:"post",
								url: basePath+"/courseManger/findAllCourse",
								dataType:"json",
								async:false,
								success:function(data3){
									sDirList.each(function(){
										var cont = $(this);
										var classname = cont.find("a").html();
										var addHtml ="";										
										$.each(data3, function(n, obj){
											if(obj.secclassname == classname){
												if(addHtml == ""){
													addHtml+="<ul>";
												}
												addHtml+= '<li class="courseli"><a><input type="hidden" value = "'+obj.id+'" />'+obj.coursename+"</a></li>";
											}
										})
										if(addHtml!=""){
											addHtml+="</ul>";
										}
										cont.append(addHtml);
									})
									
									var courseList = cont.find(".courseli");
									
									courseList.each(function(){
										$(this).on("click", function(){
											var id = $(this).find("input").val();
											
											$.ajax({
												type:"post",
												url: basePath+"/chapterManager/findChapter",
												dataType:"json",
												async:false,
												data:{
													courseid:id
												},
												success:function(data4){
													var cont = $("#videoCont");
													cont.html("");
													var addHtml = "";
													$.each(data4, function(n, obj){
														if(obj.videosrc!=""){
															addHtml+='<div class="videoBox"><div class="vtitle">'+obj.name+'<span class="icon-remove vspan" ><input type="hidden" value="'+n+'" /></span></div>'
																+'<video src="'+obj.videosrc+'" controls="controls" style="height:170px; width:300px;"></video></div>'
														}
													})
													if(addHtml==""){
														addHtml='<h1 style="line-height:810px; color:grey; text-align:center;">该课程还没有上传视频 ...</h1>';
													}
													cont.append(addHtml);
													
													var delBtn = cont.find(".vspan");
													delBtn.each(function(){
														var index = $(this).find("input").val();
														$(this).click(function(){
															/* alert(data4[index].videosrc); */
															 $.ajax({
																type:"post",
																url:basePath+"/chapterManager/delChapter",
																dataType:"text",
																data:{
																	id:data4[index].id,
																	videosrc:data4[index].videosrc
																},
																success:function(msg){
																	toastr.success("删除成功");
																	$(this).parent().parent().remove();
																}
															}) 
														})
													})
												}
												
											})
										})
									})
								}
							})
						}
					})
					
				}
			
			});
			
			
			$(".topnav").accordion({
				accordion:false,
				speed: 200,
				closedSign: '[+]',
				openedSign: '[-]'
			});
			
			
		})
	</script>



</body>

</html>
