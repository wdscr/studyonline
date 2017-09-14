<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

	<head>

		<meta charset="utf-8" />

		<title>个人信息</title>

		 

		<meta name="viewport" content="width=device-width, initial-scale=1.0" />



		<!-- basic styles -->



		<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet" />

	<link rel="stylesheet" type="text/css" href="resources/font-awesome/css/font-awesome.css">



		<!--[if IE 7]>

		  <link rel="stylesheet" href="resources/assets/css/font-awesome-ie7.min.css" />

		<![endif]-->



		<!-- page specific plugin styles -->



		<link rel="stylesheet" href="resources/assets/css/jquery-ui-1.10.3.custom.min.css" />

		<link rel="stylesheet" href="resources/assets/css/jquery.gritter.css" />

		<link rel="stylesheet" href="resources/assets/css/select2.css" />

		<link rel="stylesheet" href="resources/assets/css/bootstrap-editable.css" />



		<!-- fonts -->



		 



		<!-- ace styles -->



		<link rel="stylesheet" href="resources/assets/css/ace.min.css" />

		<link rel="stylesheet" href="resources/assets/css/ace-rtl.min.css" />

		<link rel="stylesheet" href="resources/assets/css/ace-skins.min.css" />



		<!--[if lte IE 8]>

		  <link rel="stylesheet" href="resources/assets/css/ace-ie.min.css" />

		<![endif]-->



		<!-- inline styles related to this page -->



		<!-- ace settings handler -->



		<script src="resources/assets/js/ace-extra.min.js"></script>



		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

<link rel="stylesheet" href="resources/css/common.css"/>

		<!--[if lt IE 9]>

		<script src="resources/assets/js/html5shiv.js"></script>

		<script src="resources/assets/js/respond.min.js"></script>

		<![endif]-->
<style type="text/css">
.editInfos label{
margin-right:10px;
}

</style>
	</head>



	<body>
	
	<script type="text/javascript">

<%if(session.getAttribute("identify")==null || session.getAttribute("identify")!="teacher"){%>
　      window.location.href="ManageLogin.jsp";
 <%} %>
 </script>
 
   <span id="savechapter" style="display:none"></span>
		<div class="navbar navbar-default" id="navbar">

			<script type="text/javascript">

				try{ace.settings.check('navbar' , 'fixed')}catch(e){}

			</script>
<span id ="willrep" style="display:none">-1</span>


			<div class="navbar-container" id="navbar-container">

				<div class="navbar-header pull-left">

					<a href="#" class="navbar-brand">

						<small>

							<i class="icon-leaf"></i>

						教师控制台

						</small>

					</a><!-- /.brand -->

				</div><!-- /.navbar-header -->



				<div class="navbar-header pull-right" role="navigation">

					<ul class="nav ace-nav">

					


						<li class="light-blue">

							<a data-toggle="dropdown" href="#" class="dropdown-toggle">

								<img class="nav-user-photo" src="${message1.pic==null||message1.pic==''?'resources/images/default.png':message1.pic}" alt="Jason's Photo" />

								<span class="user-info">

									<small>欢迎，</small>

													${message1.nickname }

								</span>



								<i class="icon-caret-down"></i>

							</a>



							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">

		<!-- 						<li>

									<a href="#">

										<i class="icon-cog"></i>

										Settings

									</a>

								</li> -->



								<li>

									<a href="profile.jsp">

										<i class="icon-user"></i>

										个人信息

									</a>

								</li>



								<li class="divider"></li>



								<li>

									<a href="login/logout2">

										<i class="icon-off"></i>

										退出

									</a>

								</li>

							</ul>

						</li>

					</ul><!-- /.ace-nav -->

				</div><!-- /.navbar-header -->

			</div><!-- /.container -->

		</div>



		<div class="main-container" id="main-container">

			<script type="text/javascript">

				try{ace.settings.check('main-container' , 'fixed')}catch(e){}

			</script>



			<div class="main-container-inner">

				<a class="menu-toggler" id="menu-toggler" href="#">

					<span class="menu-text"></span>

				</a>



				<div class="sidebar" id="sidebar">

					<script type="text/javascript">

						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}

					</script>



					
<ul class="nav nav-list">


                       
						<li class="active">

							<a href="profile.jsp">

								<i class="icon-user"></i>

								<span class="menu-text"> 个人信息 </span>

							</a>

						</li>
						
						<li >

							<a href="Coursemanage.jsp">

								<i class="icon-credit-card"></i>

								<span class="menu-text"> 课程管理 </span>

							</a>

						</li>



						<li>

							<a href="Courseupload.jsp">

								<i class="icon-cloud-upload"></i>

								<span class="menu-text"> 课程上传 </span>

							</a>

						</li>

                          <li>
							<a href="Classmanage.jsp">

								<i class="icon-folder-open"></i>

								<span class="menu-text"> 分类管理</span>

							</a>

						</li>
           <li >

							<a href="exam.jsp" >

								<i class="icon-leaf""></i>

								<span class="menu-text"> 试题管理 </span>

							</a>

					</li>

					</ul><!-- /.nav-list -->



					<div class="sidebar-collapse" id="sidebar-collapse">

						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>

					</div>



					<script type="text/javascript">

						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}

					</script>

				</div>



				<div class="main-content">

					<div class="breadcrumbs" id="breadcrumbs">

						<script type="text/javascript">

							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}

						</script>



						<ul class="breadcrumb" style="margin-top:8px">

							<li>

								<i class="icon-home home-icon"></i>

								<a href="#">Home</a>

							</li>


							<li class="active">个人信息</li>

						</ul><!-- .breadcrumb -->





					</div>



					<div class="page-content">

						<div class="page-header">

							<h1>

								个人信息



							</h1>

						</div><!-- /.page-header -->



						<div class="row">

							<div class="col-xs-12">

								<!-- PAGE CONTENT BEGINS -->



								<div class="clearfix">




									<div class="pull-right">

			

									</div>

								</div>



								<div class="hr dotted"></div>



								<div>

									<div id="user-profile-1" class="user-profile row">

										<div class="col-xs-12 col-sm-3 center">

											<div>

												<span class="profile-picture">

													<img style="width:200px;height:200px" id="avatar" class="editable img-responsive" alt="Alex's Avatar" src="${message1.pic==null||message1.pic==''?'resources/images/default.png':message1.pic}" />

												</span>



												<div class="space-4"></div>



												<div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">

													<div class="inline position-relative">

														<a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">

															<i class="icon-circle light-green middle"></i>

															&nbsp;

															<span class="white">${message1.nickname==null?"":message1.nickname}</span>

														</a>



														

													</div>

												</div>

											</div>



											<div class="space-6"></div>



										



											<div class="hr hr12 dotted"></div>



											<!-- <div class="clearfix"> -->

												<!-- <div class="grid2"> -->

													<!-- <span class="bigger-175 blue">25</span> -->



													<!-- <br /> -->

													<!-- Followers -->

												<!-- </div> -->



												<!-- <div class="grid2"> -->

													<!-- <span class="bigger-175 blue">12</span> -->



													<!-- <br /> -->

													<!-- Following -->

												<!-- </div> -->

											<!-- </div> -->



											<div class="hr hr16 dotted"></div>

										</div>



										<div class="col-xs-12 col-sm-9">

			



											<div class="space-12"></div>



											<div class="profile-user-info profile-user-info-striped">

												<div class="profile-info-row">

													<div class="profile-info-name"> 用户名 </div>



													<div class="profile-info-value">

														<span class="editable" id="username">${message1.teaname}</span>

													</div>

												</div>



												<div class="profile-info-row">

													<div class="profile-info-name"> 职称 </div>



													<div class="profile-info-value">

														<i class="icon-user blue bigger-110"></i>

														<span class="editable" id="country">${message1.title==null||message1.title==""?"null":message1.title}</span>

													</div>

												</div>



												<div class="profile-info-row">

													<div class="profile-info-name"> 性别 </div>



													<div class="profile-info-value">

														<span class="editable" id="age">${message1.sex}</span>

													</div>

												</div>



												<div class="profile-info-row">

													<div class="profile-info-name"> 联系电话</div>



													<div class="profile-info-value">

														<span class="editable" id="signup">${message1.phone==null||message1.phone==""?"null":message1.phone}</span>

													</div>

												</div>

												<div class="profile-info-row">

													<div class="profile-info-name"> 身份证</div>



													<div class="profile-info-value">

														<span class="editable" id="signup">${message1.cardnum==null||message1.cardnum==""?"null":message1.cardnum}</span>

													</div>

												</div>

												<div class="profile-info-row">

													<div class="profile-info-name"> 生日 </div>



													<div class="profile-info-value">

														<span class="editable" id="bir">${message1.birthday==null?"":message1.birthday}</span>

													</div>

												</div>



												<div class="profile-info-row">

													<div class="profile-info-name"> 关于我 </div>



													<div class="profile-info-value">

														<span class="editable" id="about">${message1.userinfo==null||message1.userinfo==""?"null":message1.userinfo}</span>

													</div>

												</div>

											</div>



											<!-- <div class="space-20"></div> -->



											<!-- <div class="widget-box transparent"> -->

												<!-- <div class="widget-header widget-header-small"> -->

													<!-- <h4 class="blue smaller"> -->

														<!-- <i class="icon-rss orange"></i> -->

														<!-- Recent Activities -->

													<!-- </h4> -->



													<!-- <div class="widget-toolbar action-buttons"> -->

														<!-- <a href="#" data-action="reload"> -->

															<!-- <i class="icon-refresh blue"></i> -->

														<!-- </a> -->



														<!-- &nbsp; -->

														<!-- <a href="#" class="pink"> -->

															<!-- <i class="icon-trash"></i> -->

														<!-- </a> -->

													<!-- </div> -->

												<!-- </div> -->



												<!-- <div class="widget-body"> -->

													<!-- <div class="widget-main padding-8"> -->

														<!-- <div id="profile-feed-1" class="profile-feed"> -->

															<!-- <div class="profile-activity clearfix"> -->

																<!-- <div> -->

																	<!-- <img class="pull-left" alt="Alex Doe's avatar" src="resources/assets/avatars/avatar5.png" /> -->

																	<!-- <a class="user" href="#"> Alex Doe </a> -->

																	<!-- changed his profile photo. -->

																	<!-- <a href="#">Take a look</a> -->



																	<!-- <div class="time"> -->

																		<!-- <i class="icon-time bigger-110"></i> -->

																		<!-- an hour ago -->

																	<!-- </div> -->

																<!-- </div> -->



																<!-- <div class="tools action-buttons"> -->

																	<!-- <a href="#" class="blue"> -->

																		<!-- <i class="icon-pencil bigger-125"></i> -->

																	<!-- </a> -->



																	<!-- <a href="#" class="red"> -->

																		<!-- <i class="icon-remove bigger-125"></i> -->

																	<!-- </a> -->

																<!-- </div> -->

															<!-- </div> -->



															<!-- <div class="profile-activity clearfix"> -->

																<!-- <div> -->

																	<!-- <img class="pull-left" alt="Susan Smith's avatar" src="resources/assets/avatars/avatar1.png" /> -->

																	<!-- <a class="user" href="#"> Susan Smith </a> -->



																	<!-- is now friends with Alex Doe. -->

																	<!-- <div class="time"> -->

																		<!-- <i class="icon-time bigger-110"></i> -->

																		<!-- 2 hours ago -->

																	<!-- </div> -->

																<!-- </div> -->



																<!-- <div class="tools action-buttons"> -->

																	<!-- <a href="#" class="blue"> -->

																		<!-- <i class="icon-pencil bigger-125"></i> -->

																	<!-- </a> -->



																	<!-- <a href="#" class="red"> -->

																		<!-- <i class="icon-remove bigger-125"></i> -->

																	<!-- </a> -->

																<!-- </div> -->

															<!-- </div> -->



															<!-- <div class="profile-activity clearfix"> -->

																<!-- <div> -->

																	<!-- <i class="pull-left thumbicon icon-ok btn-success no-hover"></i> -->

																	<!-- <a class="user" href="#"> Alex Doe </a> -->

																	<!-- joined -->

																	<!-- <a href="#">Country Music</a> -->



																	<!-- group. -->

																	<!-- <div class="time"> -->

																		<!-- <i class="icon-time bigger-110"></i> -->

																		<!-- 5 hours ago -->

																	<!-- </div> -->

																<!-- </div> -->



																<!-- <div class="tools action-buttons"> -->

																	<!-- <a href="#" class="blue"> -->

																		<!-- <i class="icon-pencil bigger-125"></i> -->

																	<!-- </a> -->



																	<!-- <a href="#" class="red"> -->

																		<!-- <i class="icon-remove bigger-125"></i> -->

																	<!-- </a> -->

																<!-- </div> -->

															<!-- </div> -->



															<!-- <div class="profile-activity clearfix"> -->

																<!-- <div> -->

																	<!-- <i class="pull-left thumbicon icon-picture btn-info no-hover"></i> -->

																	<!-- <a class="user" href="#"> Alex Doe </a> -->

																	<!-- uploaded a new photo. -->

																	<!-- <a href="#">Take a look</a> -->



																	<!-- <div class="time"> -->

																		<!-- <i class="icon-time bigger-110"></i> -->

																		<!-- 5 hours ago -->

																	<!-- </div> -->

																<!-- </div> -->



																<!-- <div class="tools action-buttons"> -->

																	<!-- <a href="#" class="blue"> -->

																		<!-- <i class="icon-pencil bigger-125"></i> -->

																	<!-- </a> -->



																	<!-- <a href="#" class="red"> -->

																		<!-- <i class="icon-remove bigger-125"></i> -->

																	<!-- </a> -->

																<!-- </div> -->

															<!-- </div> -->



															<!-- <div class="profile-activity clearfix"> -->

																<!-- <div> -->

																	<!-- <img class="pull-left" alt="David Palms's avatar" src="resources/assets/avatars/avatar4.png" /> -->

																	<!-- <a class="user" href="#"> David Palms </a> -->



																	<!-- left a comment on Alex's wall. -->

																	<!-- <div class="time"> -->

																		<!-- <i class="icon-time bigger-110"></i> -->

																		<!-- 8 hours ago -->

																	<!-- </div> -->

																<!-- </div> -->



																<!-- <div class="tools action-buttons"> -->

																	<!-- <a href="#" class="blue"> -->

																		<!-- <i class="icon-pencil bigger-125"></i> -->

																	<!-- </a> -->



																	<!-- <a href="#" class="red"> -->

																		<!-- <i class="icon-remove bigger-125"></i> -->

																	<!-- </a> -->

																<!-- </div> -->

															<!-- </div> -->



															<!-- <div class="profile-activity clearfix"> -->

																<!-- <div> -->

																	<!-- <i class="pull-left thumbicon icon-edit btn-pink no-hover"></i> -->

																	<!-- <a class="user" href="#"> Alex Doe </a> -->

																	<!-- published a new blog post. -->

																	<!-- <a href="#">Read now</a> -->



																	<!-- <div class="time"> -->

																		<!-- <i class="icon-time bigger-110"></i> -->

																		<!-- 11 hours ago -->

																	<!-- </div> -->

																<!-- </div> -->



																<!-- <div class="tools action-buttons"> -->

																	<!-- <a href="#" class="blue"> -->

																		<!-- <i class="icon-pencil bigger-125"></i> -->

																	<!-- </a> -->



																	<!-- <a href="#" class="red"> -->

																		<!-- <i class="icon-remove bigger-125"></i> -->

																	<!-- </a> -->

																<!-- </div> -->

															<!-- </div> -->



															<!-- <div class="profile-activity clearfix"> -->

																<!-- <div> -->

																	<!-- <img class="pull-left" alt="Alex Doe's avatar" src="resources/assets/avatars/avatar5.png" /> -->

																	<!-- <a class="user" href="#"> Alex Doe </a> -->



																	<!-- upgraded his skills. -->

																	<!-- <div class="time"> -->

																		<!-- <i class="icon-time bigger-110"></i> -->

																		<!-- 12 hours ago -->

																	<!-- </div> -->

																<!-- </div> -->



																<!-- <div class="tools action-buttons"> -->

																	<!-- <a href="#" class="blue"> -->

																		<!-- <i class="icon-pencil bigger-125"></i> -->

																	<!-- </a> -->



																	<!-- <a href="#" class="red"> -->

																		<!-- <i class="icon-remove bigger-125"></i> -->

																	<!-- </a> -->

																<!-- </div> -->

															<!-- </div> -->



															<!-- <div class="profile-activity clearfix"> -->

																<!-- <div> -->

																	<!-- <i class="pull-left thumbicon icon-key btn-info no-hover"></i> -->

																	<!-- <a class="user" href="#"> Alex Doe </a> -->



																	<!-- logged in. -->

																	<!-- <div class="time"> -->

																		<!-- <i class="icon-time bigger-110"></i> -->

																		<!-- 12 hours ago -->

																	<!-- </div> -->

																<!-- </div> -->



																<!-- <div class="tools action-buttons"> -->

																	<!-- <a href="#" class="blue"> -->

																		<!-- <i class="icon-pencil bigger-125"></i> -->

																	<!-- </a> -->



																	<!-- <a href="#" class="red"> -->

																		<!-- <i class="icon-remove bigger-125"></i> -->

																	<!-- </a> -->

																<!-- </div> -->

															<!-- </div> -->



															<!-- <div class="profile-activity clearfix"> -->

																<!-- <div> -->

																	<!-- <i class="pull-left thumbicon icon-off btn-inverse no-hover"></i> -->

																	<!-- <a class="user" href="#"> Alex Doe </a> -->



																	<!-- logged out. -->

																	<!-- <div class="time"> -->

																		<!-- <i class="icon-time bigger-110"></i> -->

																		<!-- 16 hours ago -->

																	<!-- </div> -->

																<!-- </div> -->



																<!-- <div class="tools action-buttons"> -->

																	<!-- <a href="#" class="blue"> -->

																		<!-- <i class="icon-pencil bigger-125"></i> -->

																	<!-- </a> -->



																	<!-- <a href="#" class="red"> -->

																		<!-- <i class="icon-remove bigger-125"></i> -->

																	<!-- </a> -->

																<!-- </div> -->

															<!-- </div> -->



															<!-- <div class="profile-activity clearfix"> -->

																<!-- <div> -->

																	<!-- <i class="pull-left thumbicon icon-key btn-info no-hover"></i> -->

																	<!-- <a class="user" href="#"> Alex Doe </a> -->



																	<!-- logged in. -->

																	<!-- <div class="time"> -->

																		<!-- <i class="icon-time bigger-110"></i> -->

																		<!-- 16 hours ago -->

																	<!-- </div> -->

																<!-- </div> -->



																<!-- <div class="tools action-buttons"> -->

																	<!-- <a href="#" class="blue"> -->

																		<!-- <i class="icon-pencil bigger-125"></i> -->

																	<!-- </a> -->



																	<!-- <a href="#" class="red"> -->

																		<!-- <i class="icon-remove bigger-125"></i> -->

																	<!-- </a> -->

																<!-- </div> -->

															<!-- </div> -->

														<!-- </div> -->

													<!-- </div> -->

												<!-- </div> -->

											</div>

		<div id="dialogBg"></div>
		<div id="dialog" class="bounceInDown" style="display:none;width:700px;"  >
		<form id="umsg"  >
			<div class="dialogTop">
				<a href="javascript:;" class="claseDialogBtn">关闭</a>
			</div>
                <div class="col-xs-3">
				         <a href="javascript:;"  onclick="changecover();"><img  id="ncover" style="margin-top:30px;margin-left:20px;height:180px" src="${message1.pic==null||message1.pic==''?'resources/images/default.png':message1.pic}"   title="课程封面"/></a>
				<input type="file"  id="cover"   name="file1" onchange="javascript:setImagePreview();" accept="image/jpg,image/icon,image/png,image/jpeg," style="filter:alpha(opacity=0);opacity:0;width: 0;height: 0;"/> 
	
				</div>
				 <div class="col-xs-9" >
				<ul class="editInfos" >
				    <li style="margin-left:-8px">
				    <label>用户名：<input type="text" readonly="true"  name="username1" class="ipt"  style="width:150px;"  value="${message1.teaname}" /></label>
				    <label>昵    称：<input type="text"  name="nickname1"  class="ipt" style="width:150px" value="${message1.nickname}" /></label>

				    </li>
	
					<li style="margin-left:-30px">
					<label>职    称：<input type="text"  name="title1"  class="ipt" style="width:150px" value="${message1.title}" /></label>
					<label>性    别：
					<select  name="sex1"  class="ipt"  id="sex1" >
					<option value="男">男</option>
					<option value="女">女</option>
					</select>
					</label>
					</li>
					
					<li style="margin-left:-40px">
					<label>身份证：<input type="text"  name="cardnum1"  class="ipt" style="width:250px" value="${message1.cardnum}" /></label>
					</li>
				
					<li><label>生   日：
					<input  name="date1" class="date-picker" id="id-date-picker-1" type="text" data-date-format="yyyy-mm-dd" style="width:150px"/></label>
					<label>电话号码：<input name="phone1"  type="text" id="pop4"   class="ipt" style="width:150px" value="${message1.phone}" /></label>
					</li>	
						<li style="margin-left:-10px">个人描述：<textarea class="autosize-transition ipt"  name="userinfo1" required style=" word-wrap: break-word;height: 100px;width:350px;resize:none;">${message1.userinfo}</textarea></label></li>				
				</ul>
				</div>
					<center><input type="button" value="确认修改" class="submitBtn"  onclick="modifymes();" style="margin-bottom:6px;"/></center>
			</form>
		</div>
	

											<div class="hr hr2 hr-double"></div>



											<div class="space-6"></div>
											


											<div class="center"   style="margin-top:250px;">

												<a href="#" class="btn btn-sm btn-primary"   onclick="modify();">

													

													<span class="bigger-110"  >修改信息</span>



													<i class="icon-on-right icon-arrow-right"></i>

												</a>

											</div>

										</div>

									</div>

								</div>



								<div class="hide">

									<div id="user-profile-2" class="user-profile">

										<div class="tabbable">

											<ul class="nav nav-tabs padding-18">

												<li class="active">

													<a data-toggle="tab" href="#home">

														<i class="green icon-user bigger-120"></i>

														Profile

													</a>

												</li>



												<li>

													<a data-toggle="tab" href="#feed">

														<i class="orange icon-rss bigger-120"></i>

														Activity Feed

													</a>

												</li>



												<li>

													<a data-toggle="tab" href="#friends">

														<i class="blue icon-group bigger-120"></i>

														Friends

													</a>

												</li>



												<li>

													<a data-toggle="tab" href="#pictures">

														<i class="pink icon-picture bigger-120"></i>

														Pictures

													</a>

												</li>

											</ul>



											<div class="tab-content no-border padding-24">

												<div id="home" class="tab-pane in active">

													<div class="row">

														<div class="col-xs-12 col-sm-3 center">

															<span class="profile-picture">

																<img class="editable img-responsive" alt="Alex's Avatar" id="avatar2" src="resources/assets/avatars/profile-pic.jpg" />

															</span>



															<div class="space space-4"></div>



															<a href="#" class="btn btn-sm btn-block btn-success">

																<i class="icon-plus-sign bigger-120"></i>

																<span class="bigger-110">Add as a friend</span>

															</a>



															<a href="#" class="btn btn-sm btn-block btn-primary">

																<i class="icon-envelope-alt bigger-110"></i>

																<span class="bigger-110">Send a message</span>

															</a>

														</div><!-- /span -->



														<div class="col-xs-12 col-sm-9">

															<h4 class="blue">

																<span class="middle">Alex M. Doe</span>



																<span class="label label-purple arrowed-in-right">

																	<i class="icon-circle smaller-80 align-middle"></i>

																	online

																</span>

															</h4>



															<div class="profile-user-info">

																<div class="profile-info-row">

																	<div class="profile-info-name"> Username </div>



																	<div class="profile-info-value">

																		<span>alexdoe</span>

																	</div>

																</div>



																<div class="profile-info-row">

																	<div class="profile-info-name"> Location </div>



																	<div class="profile-info-value">

																		<i class="icon-map-marker light-orange bigger-110"></i>

																		<span>Netherlands</span>

																		<span>Amsterdam</span>

																	</div>

																</div>



																<div class="profile-info-row">

																	<div class="profile-info-name"> Age </div>



																	<div class="profile-info-value">

																		<span>38</span>

																	</div>

																</div>



																<div class="profile-info-row">

																	<div class="profile-info-name"> Joined </div>



																	<div class="profile-info-value">

																		<span>20/06/2010</span>

																	</div>

																</div>



																<div class="profile-info-row">

																	<div class="profile-info-name"> Last Online </div>



																	<div class="profile-info-value">

																		<span>3 hours ago</span>

																	</div>

																</div>

															</div>



															<div class="hr hr-8 dotted"></div>



															<div class="profile-user-info">

																<div class="profile-info-row">

																	<div class="profile-info-name"> Website </div>



																	<div class="profile-info-value">

																		<a href="#" target="_blank">www.alexdoe.com</a>

																	</div>

																</div>



																<div class="profile-info-row">

																	<div class="profile-info-name">

																		<i class="middle icon-facebook-sign bigger-150 blue"></i>

																	</div>



																	<div class="profile-info-value">

																		<a href="#">Find me on Facebook</a>

																	</div>

																</div>



																<div class="profile-info-row">

																	<div class="profile-info-name">

																		<i class="middle icon-twitter-sign bigger-150 light-blue"></i>

																	</div>



																	<div class="profile-info-value">

																		<a href="#">Follow me on Twitter</a>

																	</div>

																</div>

															</div>

														</div><!-- /span -->

													</div><!-- /row-fluid -->



													<div class="space-20"></div>



													<div class="row">

														<div class="col-xs-12 col-sm-6">

															<div class="widget-box transparent">

																<div class="widget-header widget-header-small">

																	<h4 class="smaller">

																		<i class="icon-check bigger-110"></i>

																		Little About Me

																	</h4>

																</div>



																<div class="widget-body">

																	<div class="widget-main">

																		<p>

																			My job is mostly lorem ipsuming and dolor sit ameting as long as consectetur adipiscing elit.

																		</p>

																		<p>

																			Sometimes quisque commodo massa gets in the way and sed ipsum porttitor facilisis.

																		</p>

																		<p>

																			The best thing about my job is that vestibulum id ligula porta felis euismod and nullam quis risus eget urna mollis ornare.

																		</p>

																		<p>

																			Thanks for visiting my profile.

																		</p>

																	</div>

																</div>

															</div>

														</div>



														<div class="col-xs-12 col-sm-6">

															<div class="widget-box transparent">

																<div class="widget-header widget-header-small header-color-blue2">

																	<h4 class="smaller">

																		<i class="icon-lightbulb bigger-120"></i>

																		My Skills

																	</h4>

																</div>



																<div class="widget-body">

																	<div class="widget-main padding-16">

																		<div class="clearfix">

																			<div class="grid3 center">

																				<div class="easy-pie-chart percentage" data-percent="45" data-color="#CA5952">

																					<span class="percent">45</span>%

																				</div>



																				<div class="space-2"></div>

																				Graphic Design

																			</div>



																			<div class="grid3 center">

																				<div class="center easy-pie-chart percentage" data-percent="90" data-color="#59A84B">

																					<span class="percent">90</span>%

																				</div>



																				<div class="space-2"></div>

																				HTML5 & CSS3

																			</div>



																			<div class="grid3 center">

																				<div class="center easy-pie-chart percentage" data-percent="80" data-color="#9585BF">

																					<span class="percent">80</span>%

																				</div>



																				<div class="space-2"></div>

																				Javascript/jQuery

																			</div>

																		</div>



																		<div class="hr hr-16"></div>



																		<div class="profile-skills">

																			<div class="progress">

																				<div class="progress-bar" style="width:80%">

																					<span class="pull-left">HTML5 & CSS3</span>

																					<span class="pull-right">80%</span>

																				</div>

																			</div>



																			<div class="progress">

																				<div class="progress-bar progress-bar-success" style="width:72%">

																					<span class="pull-left">Javascript & jQuery</span>



																					<span class="pull-right">72%</span>

																				</div>

																			</div>



																			<div class="progress">

																				<div class="progress-bar progress-bar-purple" style="width:70%">

																					<span class="pull-left">PHP & MySQL</span>



																					<span class="pull-right">70%</span>

																				</div>

																			</div>



																			<div class="progress">

																				<div class="progress-bar progress-bar-warning" style="width:50%">

																					<span class="pull-left">Wordpress</span>



																					<span class="pull-right">50%</span>

																				</div>

																			</div>



																			<div class="progress">

																				<div class="progress-bar progress-bar-danger" style="width:35%">

																					<span class="pull-left">Photoshop</span>



																					<span class="pull-right">35%</span>

																				</div>

																			</div>

																		</div>

																	</div>

																</div>

															</div>

														</div>

													</div>

												</div><!-- #home -->



												<div id="feed" class="tab-pane">

													<div class="profile-feed row-fluid">

														<div class="span6">

															<div class="profile-activity clearfix">

																<div>

																	<img class="pull-left" alt="Alex Doe's avatar" src="resources/assets/avatars/avatar5.png" />

																	<a class="user" href="#"> Alex Doe </a>

																	changed his profile photo.

																	<a href="#">Take a look</a>



																	<div class="time">

																		<i class="icon-time bigger-110"></i>

																		an hour ago

																	</div>

																</div>



																<div class="tools action-buttons">

																	<a href="#" class="blue">

																		<i class="icon-pencil bigger-125"></i>

																	</a>



																	<a href="#" class="red">

																		<i class="icon-remove bigger-125"></i>

																	</a>

																</div>

															</div>



															<div class="profile-activity clearfix">

																<div>

																	<img class="pull-left" alt="Susan Smith's avatar" src="resources/assets/avatars/avatar1.png" />

																	<a class="user" href="#"> Susan Smith </a>



																	is now friends with Alex Doe.

																	<div class="time">

																		<i class="icon-time bigger-110"></i>

																		2 hours ago

																	</div>

																</div>



																<div class="tools action-buttons">

																	<a href="#" class="blue">

																		<i class="icon-pencil bigger-125"></i>

																	</a>



																	<a href="#" class="red">

																		<i class="icon-remove bigger-125"></i>

																	</a>

																</div>

															</div>



															<div class="profile-activity clearfix">

																<div>

																	<i class="pull-left thumbicon icon-ok btn-success no-hover"></i>

																	<a class="user" href="#"> Alex Doe </a>

																	joined

																	<a href="#">Country Music</a>



																	group.

																	<div class="time">

																		<i class="icon-time bigger-110"></i>

																		5 hours ago

																	</div>

																</div>



																<div class="tools action-buttons">

																	<a href="#" class="blue">

																		<i class="icon-pencil bigger-125"></i>

																	</a>



																	<a href="#" class="red">

																		<i class="icon-remove bigger-125"></i>

																	</a>

																</div>

															</div>



															<div class="profile-activity clearfix">

																<div>

																	<i class="pull-left thumbicon icon-picture btn-info no-hover"></i>

																	<a class="user" href="#"> Alex Doe </a>

																	uploaded a new photo.

																	<a href="#">Take a look</a>



																	<div class="time">

																		<i class="icon-time bigger-110"></i>

																		5 hours ago

																	</div>

																</div>



																<div class="tools action-buttons">

																	<a href="#" class="blue">

																		<i class="icon-pencil bigger-125"></i>

																	</a>



																	<a href="#" class="red">

																		<i class="icon-remove bigger-125"></i>

																	</a>

																</div>

															</div>



															<div class="profile-activity clearfix">

																<div>

																	<img class="pull-left" alt="David Palms's avatar" src="resources/assets/avatars/avatar4.png" />

																	<a class="user" href="#"> David Palms </a>



																	left a comment on Alex's wall.

																	<div class="time">

																		<i class="icon-time bigger-110"></i>

																		8 hours ago

																	</div>

																</div>



																<div class="tools action-buttons">

																	<a href="#" class="blue">

																		<i class="icon-pencil bigger-125"></i>

																	</a>



																	<a href="#" class="red">

																		<i class="icon-remove bigger-125"></i>

																	</a>

																</div>

															</div>

														</div><!-- /span -->



														<div class="span6">

															<div class="profile-activity clearfix">

																<div>

																	<i class="pull-left thumbicon icon-edit btn-pink no-hover"></i>

																	<a class="user" href="#"> Alex Doe </a>

																	published a new blog post.

																	<a href="#">Read now</a>



																	<div class="time">

																		<i class="icon-time bigger-110"></i>

																		11 hours ago

																	</div>

																</div>



																<div class="tools action-buttons">

																	<a href="#" class="blue">

																		<i class="icon-pencil bigger-125"></i>

																	</a>



																	<a href="#" class="red">

																		<i class="icon-remove bigger-125"></i>

																	</a>

																</div>

															</div>



															<div class="profile-activity clearfix">

																<div>

																	<img class="pull-left" alt="Alex Doe's avatar" src="resources/assets/avatars/avatar5.png" />

																	<a class="user" href="#"> Alex Doe </a>



																	upgraded his skills.

																	<div class="time">

																		<i class="icon-time bigger-110"></i>

																		12 hours ago

																	</div>

																</div>



																<div class="tools action-buttons">

																	<a href="#" class="blue">

																		<i class="icon-pencil bigger-125"></i>

																	</a>



																	<a href="#" class="red">

																		<i class="icon-remove bigger-125"></i>

																	</a>

																</div>

															</div>



															<div class="profile-activity clearfix">

																<div>

																	<i class="pull-left thumbicon icon-key btn-info no-hover"></i>

																	<a class="user" href="#"> Alex Doe </a>



																	logged in.

																	<div class="time">

																		<i class="icon-time bigger-110"></i>

																		12 hours ago

																	</div>

																</div>



																<div class="tools action-buttons">

																	<a href="#" class="blue">

																		<i class="icon-pencil bigger-125"></i>

																	</a>



																	<a href="#" class="red">

																		<i class="icon-remove bigger-125"></i>

																	</a>

																</div>

															</div>



															<div class="profile-activity clearfix">

																<div>

																	<i class="pull-left thumbicon icon-off btn-inverse no-hover"></i>

																	<a class="user" href="#"> Alex Doe </a>



																	logged out.

																	<div class="time">

																		<i class="icon-time bigger-110"></i>

																		16 hours ago

																	</div>

																</div>



																<div class="tools action-buttons">

																	<a href="#" class="blue">

																		<i class="icon-pencil bigger-125"></i>

																	</a>



																	<a href="#" class="red">

																		<i class="icon-remove bigger-125"></i>

																	</a>

																</div>

															</div>



															<div class="profile-activity clearfix">

																<div>

																	<i class="pull-left thumbicon icon-key btn-info no-hover"></i>

																	<a class="user" href="#"> Alex Doe </a>



																	logged in.

																	<div class="time">

																		<i class="icon-time bigger-110"></i>

																		16 hours ago

																	</div>

																</div>



																<div class="tools action-buttons">

																	<a href="#" class="blue">

																		<i class="icon-pencil bigger-125"></i>

																	</a>



																	<a href="#" class="red">

																		<i class="icon-remove bigger-125"></i>

																	</a>

																</div>

															</div>

														</div><!-- /span -->

													</div><!-- /row -->



													<div class="space-12"></div>



													<div class="center">

														<a href="#" class="btn btn-small btn-primary">

															<i class="icon-rss bigger-150 middle"></i>



															View more activities

															<i class="icon-on-right icon-arrow-right"></i>

														</a>

													</div>

												</div><!-- /#feed -->



												<div id="friends" class="tab-pane">

													<div class="profile-users clearfix">

														<div class="itemdiv memberdiv">

															<div class="inline position-relative">

																<div class="user">

																	<a href="#">

																		<img src="resources/assets/avatars/avatar4.png" alt="Bob Doe's avatar" />

																	</a>

																</div>



																<div class="body">

																	<div class="name">

																		<a href="#">

																			<span class="user-status status-online"></span>

																			Bob Doe

																		</a>

																	</div>

																</div>



																<div class="popover">

																	<div class="arrow"></div>



																	<div class="popover-content">

																		<div class="bolder">Content Editor</div>



																		<div class="time">

																			<i class="icon-time middle bigger-120 orange"></i>

																			<span class="green"> 20 mins ago </span>

																		</div>



																		<div class="hr dotted hr-8"></div>



																		<div class="tools action-buttons">

																			<a href="#">

																				<i class="icon-facebook-sign blue bigger-150"></i>

																			</a>



																			<a href="#">

																				<i class="icon-twitter-sign light-blue bigger-150"></i>

																			</a>



																			<a href="#">

																				<i class="icon-google-plus-sign red bigger-150"></i>

																			</a>

																		</div>

																	</div>

																</div>

															</div>

														</div>



														<div class="itemdiv memberdiv">

															<div class="inline position-relative">

																<div class="user">

																	<a href="#">

																		<img src="resources/assets/avatars/avatar1.png" alt="Rose Doe's avatar" />

																	</a>

																</div>



																<div class="body">

																	<div class="name">

																		<a href="#">

																			<span class="user-status status-offline"></span>

																			Rose Doe

																		</a>

																	</div>

																</div>



																<div class="popover">

																	<div class="arrow"></div>



																	<div class="popover-content">

																		<div class="bolder">Graphic Designer</div>



																		<div class="time">

																			<i class="icon-time middle bigger-120 grey"></i>

																			<span class="grey"> 30 min ago </span>

																		</div>



																		<div class="hr dotted hr-8"></div>



																		<div class="tools action-buttons">

																			<a href="#">

																				<i class="icon-facebook-sign blue bigger-150"></i>

																			</a>



																			<a href="#">

																				<i class="icon-twitter-sign light-blue bigger-150"></i>

																			</a>



																			<a href="#">

																				<i class="icon-google-plus-sign red bigger-150"></i>

																			</a>

																		</div>

																	</div>

																</div>

															</div>

														</div>



														<div class="itemdiv memberdiv">

															<div class="inline position-relative">

																<div class="user">

																	<a href="#">

																		<img src="resources/assets/avatars/avatar.png" alt="Jim Doe's avatar" />

																	</a>

																</div>



																<div class="body">

																	<div class="name">

																		<a href="#">

																			<span class="user-status status-busy"></span>

																			Jim Doe

																		</a>

																	</div>

																</div>



																<div class="popover">

																	<div class="arrow"></div>



																	<div class="popover-content">

																		<div class="bolder">SEO &amp; Advertising</div>



																		<div class="time">

																			<i class="icon-time middle bigger-120 red"></i>

																			<span class="grey"> 1 hour ago </span>

																		</div>



																		<div class="hr dotted hr-8"></div>



																		<div class="tools action-buttons">

																			<a href="#">

																				<i class="icon-facebook-sign blue bigger-150"></i>

																			</a>



																			<a href="#">

																				<i class="icon-twitter-sign light-blue bigger-150"></i>

																			</a>



																			<a href="#">

																				<i class="icon-google-plus-sign red bigger-150"></i>

																			</a>

																		</div>

																	</div>

																</div>

															</div>

														</div>



														<div class="itemdiv memberdiv">

															<div class="inline position-relative">

																<div class="user">

																	<a href="#">

																		<img src="resources/assets/avatars/avatar5.png" alt="Alex Doe's avatar" />

																	</a>

																</div>



																<div class="body">

																	<div class="name">

																		<a href="#">

																			<span class="user-status status-idle"></span>

																			Alex Doe

																		</a>

																	</div>

																</div>



																<div class="popover">

																	<div class="arrow"></div>



																	<div class="popover-content">

																		<div class="bolder">Marketing</div>



																		<div class="time">

																			<i class="icon-time middle bigger-120 orange"></i>

																			<span class=""> 40 minutes idle </span>

																		</div>



																		<div class="hr dotted hr-8"></div>



																		<div class="tools action-buttons">

																			<a href="#">

																				<i class="icon-facebook-sign blue bigger-150"></i>

																			</a>



																			<a href="#">

																				<i class="icon-twitter-sign light-blue bigger-150"></i>

																			</a>



																			<a href="#">

																				<i class="icon-google-plus-sign red bigger-150"></i>

																			</a>

																		</div>

																	</div>

																</div>

															</div>

														</div>



														<div class="itemdiv memberdiv">

															<div class="inline position-relative">

																<div class="user">

																	<a href="#">

																		<img src="resources/assets/avatars/avatar2.png" alt="Phil Doe's avatar" />

																	</a>

																</div>



																<div class="body">

																	<div class="name">

																		<a href="#">

																			<span class="user-status status-online"></span>

																			Phil Doe

																		</a>

																	</div>

																</div>



																<div class="popover">

																	<div class="arrow"></div>



																	<div class="popover-content">

																		<div class="bolder">Public Relations</div>



																		<div class="time">

																			<i class="icon-time middle bigger-120 orange"></i>

																			<span class="green"> 2 hours ago </span>

																		</div>



																		<div class="hr dotted hr-8"></div>



																		<div class="tools action-buttons">

																			<a href="#">

																				<i class="icon-facebook-sign blue bigger-150"></i>

																			</a>



																			<a href="#">

																				<i class="icon-twitter-sign light-blue bigger-150"></i>

																			</a>



																			<a href="#">

																				<i class="icon-google-plus-sign red bigger-150"></i>

																			</a>

																		</div>

																	</div>

																</div>

															</div>

														</div>



														<div class="itemdiv memberdiv">

															<div class="inline position-relative">

																<div class="user">

																	<a href="#">

																		<img src="resources/assets/avatars/avatar3.png" alt="Susan Doe's avatar" />

																	</a>

																</div>



																<div class="body">

																	<div class="name">

																		<a href="#">

																			<span class="user-status status-online"></span>

																			Susan Doe

																		</a>

																	</div>

																</div>



																<div class="popover">

																	<div class="arrow"></div>



																	<div class="popover-content">

																		<div class="bolder">HR Management</div>



																		<div class="time">

																			<i class="icon-time middle bigger-120 orange"></i>

																			<span class="green"> 20 mins ago </span>

																		</div>



																		<div class="hr dotted hr-8"></div>



																		<div class="tools action-buttons">

																			<a href="#">

																				<i class="icon-facebook-sign blue bigger-150"></i>

																			</a>



																			<a href="#">

																				<i class="icon-twitter-sign light-blue bigger-150"></i>

																			</a>



																			<a href="#">

																				<i class="icon-google-plus-sign red bigger-150"></i>

																			</a>

																		</div>

																	</div>

																</div>

															</div>

														</div>



														<div class="itemdiv memberdiv">

															<div class="inline position-relative">

																<div class="user">

																	<a href="#">

																		<img src="resources/assets/avatars/avatar1.png" alt="Jennifer Doe's avatar" />

																	</a>

																</div>



																<div class="body">

																	<div class="name">

																		<a href="#">

																			<span class="user-status status-offline"></span>

																			Jennifer Doe

																		</a>

																	</div>

																</div>



																<div class="popover">

																	<div class="arrow"></div>



																	<div class="popover-content">

																		<div class="bolder">Graphic Designer</div>



																		<div class="time">

																			<i class="icon-time middle bigger-120 grey"></i>

																			<span class="grey"> 2 hours ago </span>

																		</div>



																		<div class="hr dotted hr-8"></div>



																		<div class="tools action-buttons">

																			<a href="#">

																				<i class="icon-facebook-sign blue bigger-150"></i>

																			</a>



																			<a href="#">

																				<i class="icon-twitter-sign light-blue bigger-150"></i>

																			</a>



																			<a href="#">

																				<i class="icon-google-plus-sign red bigger-150"></i>

																			</a>

																		</div>

																	</div>

																</div>

															</div>

														</div>



														<div class="itemdiv memberdiv">

															<div class="inline position-relative">

																<div class="user">

																	<a href="#">

																		<img src="resources/assets/avatars/avatar3.png" alt="Alexa Doe's avatar" />

																	</a>

																</div>



																<div class="body">

																	<div class="name">

																		<a href="#">

																			<span class="user-status status-offline"></span>

																			Alexa Doe

																		</a>

																	</div>

																</div>



																<div class="popover">

																	<div class="arrow"></div>



																	<div class="popover-content">

																		<div class="bolder">Accounting</div>



																		<div class="time">

																			<i class="icon-time middle bigger-120 grey"></i>

																			<span class="grey"> 4 hours ago </span>

																		</div>



																		<div class="hr dotted hr-8"></div>



																		<div class="tools action-buttons">

																			<a href="#">

																				<i class="icon-facebook-sign blue bigger-150"></i>

																			</a>



																			<a href="#">

																				<i class="icon-twitter-sign light-blue bigger-150"></i>

																			</a>



																			<a href="#">

																				<i class="icon-google-plus-sign red bigger-150"></i>

																			</a>

																		</div>

																	</div>

																</div>

															</div>

														</div>

													</div>



													<div class="hr hr10 hr-double"></div>



													<ul class="pager pull-right">

														<li class="previous disabled">

															<a href="#">&larr; Prev</a>

														</li>



														<li class="next">

															<a href="#">Next &rarr;</a>

														</li>

													</ul>

												</div><!-- /#friends -->



												<div id="pictures" class="tab-pane">

													<ul class="ace-thumbnails">

														<li>

															<a href="#" data-rel="colorbox">

																<img alt="150x150" src="resources/assets/images/gallery/thumb-1.jpg" />

																<div class="text">

																	<div class="inner">Sample Caption on Hover</div>

																</div>

															</a>



															<div class="tools tools-bottom">

																<a href="#">

																	<i class="icon-link"></i>

																</a>



																<a href="#">

																	<i class="icon-paper-clip"></i>

																</a>



																<a href="#">

																	<i class="icon-pencil"></i>

																</a>



																<a href="#">

																	<i class="icon-remove red"></i>

																</a>

															</div>

														</li>



														<li>

															<a href="#" data-rel="colorbox">

																<img alt="150x150" src="resources/assets/images/gallery/thumb-2.jpg" />

																<div class="text">

																	<div class="inner">Sample Caption on Hover</div>

																</div>

															</a>



															<div class="tools tools-bottom">

																<a href="#">

																	<i class="icon-link"></i>

																</a>



																<a href="#">

																	<i class="icon-paper-clip"></i>

																</a>



																<a href="#">

																	<i class="icon-pencil"></i>

																</a>



																<a href="#">

																	<i class="icon-remove red"></i>

																</a>

															</div>

														</li>



														<li>

															<a href="#" data-rel="colorbox">

																<img alt="150x150" src="resources/assets/images/gallery/thumb-3.jpg" />

																<div class="text">

																	<div class="inner">Sample Caption on Hover</div>

																</div>

															</a>



															<div class="tools tools-bottom">

																<a href="#">

																	<i class="icon-link"></i>

																</a>



																<a href="#">

																	<i class="icon-paper-clip"></i>

																</a>



																<a href="#">

																	<i class="icon-pencil"></i>

																</a>



																<a href="#">

																	<i class="icon-remove red"></i>

																</a>

															</div>

														</li>



														<li>

															<a href="#" data-rel="colorbox">

																<img alt="150x150" src="resources/assets/images/gallery/thumb-4.jpg" />

																<div class="text">

																	<div class="inner">Sample Caption on Hover</div>

																</div>

															</a>



															<div class="tools tools-bottom">

																<a href="#">

																	<i class="icon-link"></i>

																</a>



																<a href="#">

																	<i class="icon-paper-clip"></i>

																</a>



																<a href="#">

																	<i class="icon-pencil"></i>

																</a>



																<a href="#">

																	<i class="icon-remove red"></i>

																</a>

															</div>

														</li>



														<li>

															<a href="#" data-rel="colorbox">

																<img alt="150x150" src="resources/assets/images/gallery/thumb-5.jpg" />

																<div class="text">

																	<div class="inner">Sample Caption on Hover</div>

																</div>

															</a>



															<div class="tools tools-bottom">

																<a href="#">

																	<i class="icon-link"></i>

																</a>



																<a href="#">

																	<i class="icon-paper-clip"></i>

																</a>



																<a href="#">

																	<i class="icon-pencil"></i>

																</a>



																<a href="#">

																	<i class="icon-remove red"></i>

																</a>

															</div>

														</li>



														<li>

															<a href="#" data-rel="colorbox">

																<img alt="150x150" src="resources/assets/images/gallery/thumb-6.jpg" />

																<div class="text">

																	<div class="inner">Sample Caption on Hover</div>

																</div>

															</a>



															<div class="tools tools-bottom">

																<a href="#">

																	<i class="icon-link"></i>

																</a>



																<a href="#">

																	<i class="icon-paper-clip"></i>

																</a>



																<a href="#">

																	<i class="icon-pencil"></i>

																</a>



																<a href="#">

																	<i class="icon-remove red"></i>

																</a>

															</div>

														</li>



														<li>

															<a href="#" data-rel="colorbox">

																<img alt="150x150" src="resources/assets/images/gallery/thumb-1.jpg" />

																<div class="text">

																	<div class="inner">Sample Caption on Hover</div>

																</div>

															</a>



															<div class="tools tools-bottom">

																<a href="#">

																	<i class="icon-link"></i>

																</a>



																<a href="#">

																	<i class="icon-paper-clip"></i>

																</a>



																<a href="#">

																	<i class="icon-pencil"></i>

																</a>



																<a href="#">

																	<i class="icon-remove red"></i>

																</a>

															</div>

														</li>



														<li>

															<a href="#" data-rel="colorbox">

																<img alt="150x150" src="resources/assets/images/gallery/thumb-2.jpg" />

																<div class="text">

																	<div class="inner">Sample Caption on Hover</div>

																</div>

															</a>



															<div class="tools tools-bottom">

																<a href="#">

																	<i class="icon-link"></i>

																</a>



																<a href="#">

																	<i class="icon-paper-clip"></i>

																</a>



																<a href="#">

																	<i class="icon-pencil"></i>

																</a>



																<a href="#">

																	<i class="icon-remove red"></i>

																</a>

															</div>

														</li>

													</ul>

												</div><!-- /#pictures -->

											</div>

										</div>

									</div>

								</div>



								<div class="hide">

									<div id="user-profile-3" class="user-profile row">

										<div class="col-sm-offset-1 col-sm-10">

											<div class="well well-sm">

												<button type="button" class="close" data-dismiss="alert">&times;</button>

												&nbsp;

												<div class="inline middle blue bigger-110"> Your profile is 70% complete </div>



												&nbsp; &nbsp; &nbsp;

												<div style="width:200px;" data-percent="70%" class="inline middle no-margin progress progress-striped active">

													<div class="progress-bar progress-bar-success" style="width:70%"></div>

												</div>

											</div><!-- /well -->



											<div class="space"></div>



											<form class="form-horizontal">

												<div class="tabbable">

													<ul class="nav nav-tabs padding-16">

														<li class="active">

															<a data-toggle="tab" href="#edit-basic">

																<i class="green icon-edit bigger-125"></i>

																Basic Info

															</a>

														</li>



														<li>

															<a data-toggle="tab" href="#edit-settings">

																<i class="purple icon-cog bigger-125"></i>

																Settings

															</a>

														</li>



														<li>

															<a data-toggle="tab" href="#edit-password">

																<i class="blue icon-key bigger-125"></i>

																Password

															</a>

														</li>

													</ul>



													<div class="tab-content profile-edit-tab-content">

														<div id="edit-basic" class="tab-pane in active">

															<h4 class="header blue bolder smaller">General</h4>



															<div class="row">

																<div class="col-xs-12 col-sm-4">

																	<input type="file" />

																</div>



																<div class="vspace-xs"></div>



																<div class="col-xs-12 col-sm-8">

																	<div class="form-group">

																		<label class="col-sm-4 control-label no-padding-right" for="form-field-username">Username</label>



																		<div class="col-sm-8">

																			<input class="col-xs-12 col-sm-10" type="text" id="form-field-username" placeholder="Username" value="alexdoe" />

																		</div>

																	</div>



																	<div class="space-4"></div>



																	<div class="form-group">

																		<label class="col-sm-4 control-label no-padding-right" for="form-field-first">Name</label>



																		<div class="col-sm-8">

																			<input class="input-small" type="text" id="form-field-first" placeholder="First Name" value="Alex" />

																			<input class="input-small" type="text" id="form-field-last" placeholder="Last Name" value="Doe" />

																		</div>

																	</div>

																</div>

															</div>



															<hr />

															<div class="form-group">

																<label class="col-sm-3 control-label no-padding-right" for="form-field-date">Birth Date</label>



																<div class="col-sm-9">

																	<div class="input-medium">

																		<div class="input-group">

																			<input class="input-medium date-picker" id="form-field-date" type="text" data-date-format="dd-mm-yyyy" placeholder="dd-mm-yyyy" />

																			<span class="input-group-addon">

																				<i class="icon-calendar"></i>

																			</span>

																		</div>

																	</div>

																</div>

															</div>



															<div class="space-4"></div>



															<div class="form-group">

																<label class="col-sm-3 control-label no-padding-right">Gender</label>



																<div class="col-sm-9">

																	<label class="inline">

																		<input name="form-field-radio" type="radio" class="ace" />

																		<span class="lbl"> Male</span>

																	</label>



																	&nbsp; &nbsp; &nbsp;

																	<label class="inline">

																		<input name="form-field-radio" type="radio" class="ace" />

																		<span class="lbl"> Female</span>

																	</label>

																</div>

															</div>



															<div class="space-4"></div>



															<div class="form-group">

																<label class="col-sm-3 control-label no-padding-right" for="form-field-comment">Comment</label>



																<div class="col-sm-9">

																	<textarea id="form-field-comment"></textarea>

																</div>

															</div>



															<div class="space"></div>

															<h4 class="header blue bolder smaller">Contact</h4>



															<div class="form-group">

																<label class="col-sm-3 control-label no-padding-right" for="form-field-email">Email</label>



																<div class="col-sm-9">

																	<span class="input-icon input-icon-right">

																		<input type="email" id="form-field-email" value="alexdoe@gmail.com" />

																		<i class="icon-envelope"></i>

																	</span>

																</div>

															</div>



															<div class="space-4"></div>



															<div class="form-group">

																<label class="col-sm-3 control-label no-padding-right" for="form-field-website">Website</label>



																<div class="col-sm-9">

																	<span class="input-icon input-icon-right">

																		<input type="url" id="form-field-website" value="http://www.alexdoe.com/" />

																		<i class="icon-globe"></i>

																	</span>

																</div>

															</div>



															<div class="space-4"></div>



															<div class="form-group">

																<label class="col-sm-3 control-label no-padding-right" for="form-field-phone">Phone</label>



																<div class="col-sm-9">

																	<span class="input-icon input-icon-right">

																		<input class="input-medium input-mask-phone" type="text" id="form-field-phone" />

																		<i class="icon-phone icon-flip-horizontal"></i>

																	</span>

																</div>

															</div>



															<div class="space"></div>

															<h4 class="header blue bolder smaller">Social</h4>



															<div class="form-group">

																<label class="col-sm-3 control-label no-padding-right" for="form-field-facebook">Facebook</label>



																<div class="col-sm-9">

																	<span class="input-icon">

																		<input type="text" value="facebook_alexdoe" id="form-field-facebook" />

																		<i class="icon-facebook blue"></i>

																	</span>

																</div>

															</div>



															<div class="space-4"></div>



															<div class="form-group">

																<label class="col-sm-3 control-label no-padding-right" for="form-field-twitter">Twitter</label>



																<div class="col-sm-9">

																	<span class="input-icon">

																		<input type="text" value="twitter_alexdoe" id="form-field-twitter" />

																		<i class="icon-twitter light-blue"></i>

																	</span>

																</div>

															</div>



															<div class="space-4"></div>



															<div class="form-group">

																<label class="col-sm-3 control-label no-padding-right" for="form-field-gplus">Google+</label>



																<div class="col-sm-9">

																	<span class="input-icon">

																		<input type="text" value="google_alexdoe" id="form-field-gplus" />

																		<i class="icon-google-plus red"></i>

																	</span>

																</div>

															</div>

														</div>



														<div id="edit-settings" class="tab-pane">

															<div class="space-10"></div>



															<div>

																<label class="inline">

																	<input type="checkbox" name="form-field-checkbox" class="ace" />

																	<span class="lbl"> Make my profile public</span>

																</label>

															</div>



															<div class="space-8"></div>



															<div>

																<label class="inline">

																	<input type="checkbox" name="form-field-checkbox" class="ace" />

																	<span class="lbl"> Email me new updates</span>

																</label>

															</div>



															<div class="space-8"></div>



															<div>

																<label class="inline">

																	<input type="checkbox" name="form-field-checkbox" class="ace" />

																	<span class="lbl"> Keep a history of my conversations</span>

																</label>



																<label class="inline">

																	<span class="space-2 block"></span>



																	for

																	<input type="text" class="input-mini" maxlength="3" />

																	days

																</label>

															</div>

														</div>



														<div id="edit-password" class="tab-pane">

															<div class="space-10"></div>



															<div class="form-group">

																<label class="col-sm-3 control-label no-padding-right" for="form-field-pass1">New Password</label>



																<div class="col-sm-9">

																	<input type="password" id="form-field-pass1" />

																</div>

															</div>



															<div class="space-4"></div>



															<div class="form-group">

																<label class="col-sm-3 control-label no-padding-right" for="form-field-pass2">Confirm Password</label>



																<div class="col-sm-9">

																	<input type="password" id="form-field-pass2" />

																</div>

															</div>

														</div>

													</div>

												</div>



												<div class="clearfix form-actions">

													<div class="col-md-offset-3 col-md-9">

														<button class="btn btn-info" type="button">

															<i class="icon-ok bigger-110"></i>

															Save

														</button>



														&nbsp; &nbsp;

														<button class="btn" type="reset">

															<i class="icon-undo bigger-110"></i>

															Reset

														</button>

													</div>

												</div>

											</form>

										</div><!-- /span -->

									</div><!-- /user-profile -->

								</div>



								<!-- PAGE CONTENT ENDS -->

							</div><!-- /.col -->

						</div><!-- /.row -->

					</div><!-- /.page-content -->

				</div><!-- /.main-content -->



				<div class="ace-settings-container" id="ace-settings-container">

					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">

						<i class="icon-cog bigger-150"></i>

					</div>



					<div class="ace-settings-box" id="ace-settings-box">

						<div>

							<div class="pull-left">

								<select id="skin-colorpicker" class="hide">

									<option data-skin="default" value="#438EB9">#438EB9</option>

									<option data-skin="skin-1" value="#222A2D">#222A2D</option>

									<option data-skin="skin-2" value="#C6487E">#C6487E</option>

									<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>

								</select>

							</div>

							<span>&nbsp; Choose Skin</span>

						</div>



						<div>

							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />

							<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>

						</div>



						<div>

							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />

							<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>

						</div>



						<div>

							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />

							<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>

						</div>



						<div>

							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />

							<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>

						</div>



						<div>

							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />

							<label class="lbl" for="ace-settings-add-container">

								Inside

								<b>.container</b>

							</label>

						</div>

					</div>

				</div><!-- /#ace-settings-container -->

			</div><!-- /.main-container-inner -->



			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">

				<i class="icon-double-angle-up icon-only bigger-110"></i>

			</a>

		</div><!-- /.main-container -->



		<!-- basic scripts -->



		<!--[if !IE]> -->



		<script src="http://www.jq22.com/jquery/jquery-2.1.1.js"></script>



		<!-- <![endif]-->



		<!--[if IE]>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<![endif]-->



		<!--[if !IE]> -->



		<script type="text/javascript">

			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");

		</script>



		<!-- <![endif]-->



		<!--[if IE]>

<script type="text/javascript">

 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");

</script>

<![endif]-->



		<script type="text/javascript">

			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");

		</script>

		<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>

		<script src="resources/assets/js/typeahead-bs2.min.js"></script>



		<!-- page specific plugin scripts -->



		<!--[if lte IE 8]>

		  <script src="resources/assets/js/excanvas.min.js"></script>

		<![endif]-->

<script type="text/javascript" src="resources/js/jquery-3.1.1.min.js"></script>  
	<script src="resources/js/jquery-form.js"></script>

		<script src="resources/assets/js/jquery-ui-1.10.3.custom.min.js"></script>

		<script src="resources/assets/js/jquery.ui.touch-punch.min.js"></script>

		<script src="resources/assets/js/jquery.gritter.min.js"></script>

		<script src="resources/assets/js/bootbox.min.js"></script>

		<script src="resources/assets/js/jquery.slimscroll.min.js"></script>

		<script src="resources/assets/js/jquery.easy-pie-chart.min.js"></script>

		<script src="resources/assets/js/jquery.hotkeys.min.js"></script>

		<script src="resources/assets/js/bootstrap-wysiwyg.min.js"></script>

		<script src="resources/assets/js/select2.min.js"></script>

		<script src="resources/assets/js/date-time/bootstrap-datepicker.min.js"></script>

		<script src="resources/assets/js/fuelux/fuelux.spinner.min.js"></script>

		<script src="resources/assets/js/x-editable/bootstrap-editable.min.js"></script>

		<script src="resources/assets/js/x-editable/ace-editable.min.js"></script>

		<script src="resources/assets/js/jquery.maskedinput.min.js"></script>



		<!-- ace scripts -->



		<script src="resources/assets/js/ace-elements.min.js"></script>

		<script src="resources/assets/js/ace.min.js"></script>



		<!-- inline scripts related to this page -->



		<script type="text/javascript">
	 	function changecover(){
	 		$("#cover").trigger("click"); 
	 	}
		function setImagePreview(avalue) {
			var docObj=document.getElementById("cover");
			 
			var imgObjPreview=document.getElementById("ncover");
			if(docObj.files &&docObj.files[0])
			{
			//火狐下，直接设img属性
		
			//imgObjPreview.src = docObj.files[0].getAsDataURL();
			 
			//火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
			imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
			}
			else
			{
			//IE下，使用滤镜
			docObj.select();
			var imgSrc = document.selection.createRange().text;
		
			//图片异常的捕捉，防止用户修改后缀来伪造图片
			try{
			localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
			localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
			}
			catch(e)
			{
			alert("您上传的图片格式不正确，请重新选择!");
			return false;
			}
			imgObjPreview.style.display = 'none';
			document.selection.empty();
			}
			return true;
			}
		  function modify(){
		     	$('#dialogBg').fadeIn(300);
		     	$('#dialog').removeAttr('class').addClass('animated flipInX').fadeIn(100);
		  }
			jQuery(function($) {
				$('#sex1').val("${message1.sex}");
				$('.date-picker').datepicker({
					autoclose : true
				}).next().on(ace.click_event, function() {

					$(this).prev().focus();

				});
				var  c=getDateTime("${message1.birthday}");
				 $('#id-date-picker-1').val(c);
				 $('#bir').text(c);
			});
			function getDateTime(adate) {
				 var date = new Date(adate);  
			    var year = date.getFullYear();
			    var month = date.getMonth() + 1;
			    var day = date.getDate();
			   
			    return year + "-" + month + "-" + day;
			}
			
			function modifymes(){
				 $("#umsg").ajaxSubmit({
		         		type:"post",
		         		url: "userManger/modifymes",
		         		dataType:"text",
		         		success:function(msg){
		         			/* alert(msg); */
		         			$('#sex1').val("${message1.sex}");
		         			window.location.reload();
		         		}
		         	 })
			}
			
		     $('#dialog .claseDialogBtn').click(function(){
			     	$('#dialogBg').fadeOut(300,function(){
			     		$('#dialog').addClass('bounceOutUp').fadeOut(100);
			     	});
			     });
		</script>

	

</body>

</html>

