<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">



    <style type="text/css">
     .tab-content {background-color:white;}
        #dropdown13 { font-size: 12px; line-height: 120%; text-align: center; color:#333; padding: 20px;}
        #dropdown13  a { color: #333; text-decoration: none;}
        #dropdown13 a:hover { text-decoration: underline;}
       
        #dropdown13 .clearfix:after { content:"."; display:block; height:0; clear:both; visibility:hidden}
        #dropdown13 .clearfix { *height:1%;}
        #list { margin: 0 auto; text-align: left; width: 500px;}
       #dropdown13  .box { border-top: 1px solid #eee; position: relative;  width: 500px; padding: 20px 0}
       #dropdown13  .box:hover .close { display: block;}
       #dropdown13  .close { display: none; top:0px; right: 0px; width: 28px; height: 28px; border: 1px solid #eee; position: absolute; background: #f2f4f7; line-height: 27px; text-align: center;}
       #dropdown13  .close:hover { background: #c8d2e2; text-decoration: none;}
        #dropdown13 .head { float: left; width: 60px; height: 60px; margin-right: 10px;}
      #dropdown13   .content { float: left; width: 430px;}
       #dropdown13  .main { margin-bottom: 10px;}
       #dropdown13  .txt { margin-bottom: 10px;}
        #dropdown13 .user { color: #369; }
       #dropdown13  .pic { margin-right: 5px; width: 200px; border: 1px solid #eee;}
      #dropdown13   .info { height: 20px; line-height: 19px; font-size: 12px; margin: 0 0 10px 0;}
        #dropdown13 .info .time { color: #ccc; float: left; height: 20px; padding-left: 20px; background: url("resources/images/bg1.jpg") no-repeat left top;}
        .info .praise { color: #369; float: right; height: 20px; padding-left: 18px; background: url("resources/images/bg2.jpg") no-repeat left top;}
        .info .praise:hover { text-decoration: underline; background: url("images/bg3.jpg") no-repeat left top;}
        .praises-total { margin: 0 0 10px 0; height: 20px; background: url("images/praise.png") no-repeat 5px 5px rgb(247, 247, 247); padding: 5px 0 5px 25px; line-height: 19px;}
        .comment-box { padding: 10px 0; border-top: 1px solid #eee;}
        .comment-box:hover { background: rgb(247, 247, 247);}
        .comment-box .myhead { float: left; width: 30px; height: 30px; margin-right: 10px;}
        .comment-box .comment-content { float: left; width: 390px; }
        .comment-box .comment-content .comment-time { color: #ccc; margin-top: 3px; line-height: 16px; position: relative;}
        .comment-box .comment-content .comment-praise { display: none; color: #369; padding-left: 17px; height: 20px; background: url("resources/images/praise.png") no-repeat;  position: absolute; bottom: 0px; right: 44px;}
       .comment-box .comment-content .comment-del{ display: none; color: #369; height: 20px;   position: absolute; bottom: 0px; right: 44px;}
        .comment-box .comment-content .comment-operate { display: none; color: #369; height: 20px;  position: absolute; bottom: 0px; right: 10px;}
        .comment-box .comment-content:hover .comment-praise { display: inline-block;}
            .comment-box .comment-content:hover .comment-del { display: inline-block;}
        .comment-box .comment-content:hover .comment-operate { display: inline-block;}
        .text-box .comment { border: 1px solid #eee; display: block; height: 28px; width: 430px; padding: 5px; resize: none; color: #ccc}
        .text-box .btn { font-size: 12px; font-weight: bold; display: none; float: right; width: 65px; height: 30px; border: 1px solid #0C528D; color: #fff; background: #4679AC;}
        .text-box .btn-off { border: 1px solid #ccc; color: #ccc; background: #F7F7F7;}
        .text-box .word{ display: none; float: right; margin: 7px 10px 0 0; color: #666;}
        .text-box-on .comment{ height: 70px; color: #333;}
        .text-box-on .btn{ display: inline;}
        .text-box-on .word{ display: inline;}
		#dropdown13  p{word-wrap:break-word;}/*解决数字不换行问题*/
    </style>

<style>

td:not(:last-child){
white-space:nowrap;overflow:hidden;text-overflow: ellipsis;
 }
li div{
   font-family:仿宋;
   font-size:14px;
   text-align: left;

}
</style>
	<head>

		<meta charset="utf-8" />

		<title>课程管理</title>

		 

		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<script type="text/javascript" src="resources/js/jquery-3.1.1.min.js"></script>  
<script type="text/javascript" src="resources/js/toastr.min.js"></script> 
<link href="resources/css/toastr.css" rel="stylesheet">
	<script src="resources/js/jquery-form.js"></script>

<link rel="stylesheet" href="resources/css/popup.css" />

		<!-- basic styles -->

		<!-- page specific plugin scripts -->



		<script src="resources/assets/js/jquery.dataTables.min.js"></script>

		<script src="resources/assets/js/jquery.dataTables.bootstrap.js"></script>



		<!-- ace scripts -->



		<script src="resources/assets/js/ace-elements.min.js"></script>

		<script src="resources/assets/js/ace.min.js"></script>



		<!-- inline scripts related to this page -->

		<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet" />

		<link rel="stylesheet" type="text/css" href="resources/font-awesome/css/font-awesome.css">

		<link rel="stylesheet" href="resources/assets/css/select2.css" />
				<script src="resources/assets/js/select2.min.js"></script>

		<!--[if IE 7]>

		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />

		<![endif]-->



		<!-- page specific plugin styles -->



		<!-- fonts -->



		 



		<!-- ace styles -->



		<link rel="stylesheet" href="resources/assets/css/ace.min.css" />

		<link rel="stylesheet" href="resources/assets/css/ace-rtl.min.css" />

		<link rel="stylesheet" href="resources/assets/css/ace-skins.min.css" />



		<!--[if lte IE 8]>

		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />

		<![endif]-->



		<!-- inline styles related to this page -->



		<!-- ace settings handler -->



		<script src="resources/assets/js/ace-extra.min.js"></script>


<script src="resources/assets/js/jquery.nestable.min.js"></script>
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->



		<!--[if lt IE 9]>

		<script src="resources/assets/js/html5shiv.js"></script>

		<script src="resources/assets/js/respond.min.js"></script>

		<![endif]-->

    


	</head>



	<body>

  
<script type="text/javascript">
<%if(session.getAttribute("identify")==null || session.getAttribute("identify")!="teacher"){%>
　      window.location.href="ManageLogin.jsp";
 <%} %>
 </script>
 <form id="form111">
 <input type="hidden" id="uuid"  name="uuid">
 	<input type="file"  id="cover111"   name="cover111" onchange="javascript:setImage();" accept="image/jpg,image/icon,image/png,image/jpeg," style="filter:alpha(opacity=0);opacity:0;width: 0;height: 0;"/>
 </form> 
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

				<!-- 		<li class="grey">

							<a data-toggle="dropdown" class="dropdown-toggle" href="#">

								<i class="icon-tasks"></i>

								<span class="badge badge-grey">4</span>

							</a>



							<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">

								<li class="dropdown-header">

									<i class="icon-ok"></i>

									4 Tasks to complete

								</li>



								<li>

									<a href="#">

										<div class="clearfix">

											<span class="pull-left">Software Update</span>

											<span class="pull-right">65%</span>

										</div>



										<div class="progress progress-mini ">

											<div style="width:65%" class="progress-bar "></div>

										</div>

									</a>

								</li>



								<li>

									<a href="#">

										<div class="clearfix">

											<span class="pull-left">Hardware Upgrade</span>

											<span class="pull-right">35%</span>

										</div>



										<div class="progress progress-mini ">

											<div style="width:35%" class="progress-bar progress-bar-danger"></div>

										</div>

									</a>

								</li>



								<li>

									<a href="#">

										<div class="clearfix">

											<span class="pull-left">Unit Testing</span>

											<span class="pull-right">15%</span>

										</div>



										<div class="progress progress-mini ">

											<div style="width:15%" class="progress-bar progress-bar-warning"></div>

										</div>

									</a>

								</li>



								<li>

									<a href="#">

										<div class="clearfix">

											<span class="pull-left">Bug Fixes</span>

											<span class="pull-right">90%</span>

										</div>



										<div class="progress progress-mini progress-striped active">

											<div style="width:90%" class="progress-bar progress-bar-success"></div>

										</div>

									</a>

								</li>



								<li>

									<a href="#">

										See tasks with details

										<i class="icon-arrow-right"></i>

									</a>

								</li>

							</ul>

						</li>



						<li class="purple">

							<a data-toggle="dropdown" class="dropdown-toggle" href="#">

								<i class="icon-bell-alt icon-animated-bell"></i>

								<span class="badge badge-important">8</span>

							</a>



							<ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">

								<li class="dropdown-header">

									<i class="icon-warning-sign"></i>

									8 Notifications

								</li>



								<li>

									<a href="#">

										<div class="clearfix">

											<span class="pull-left">

												<i class="btn btn-xs no-hover btn-pink icon-comment"></i>

												New Comments

											</span>

											<span class="pull-right badge badge-info">+12</span>

										</div>

									</a>

								</li>



								<li>

									<a href="#">

										<i class="btn btn-xs btn-primary icon-user"></i>

										Bob just signed up as an editor ...

									</a>

								</li>



								<li>

									<a href="#">

										<div class="clearfix">

											<span class="pull-left">

												<i class="btn btn-xs no-hover btn-success icon-shopping-cart"></i>

												New Orders

											</span>

											<span class="pull-right badge badge-success">+8</span>

										</div>

									</a>

								</li>



								<li>

									<a href="#">

										<div class="clearfix">

											<span class="pull-left">

												<i class="btn btn-xs no-hover btn-info icon-twitter"></i>

												Followers

											</span>

											<span class="pull-right badge badge-info">+11</span>

										</div>

									</a>

								</li>



								<li>

									<a href="#">

										See all notifications

										<i class="icon-arrow-right"></i>

									</a>

								</li>

							</ul>

						</li>



						<li class="green">

							<a data-toggle="dropdown" class="dropdown-toggle" href="#">

								<i class="icon-envelope icon-animated-vertical"></i>

								<span class="badge badge-success">5</span>

							</a>



							<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">

								<li class="dropdown-header">

									<i class="icon-envelope-alt"></i>

									5 Messages

								</li>



								<li>

									<a href="#">

										<img src="resources/assets/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />

										<span class="msg-body">

											<span class="msg-title">

												<span class="blue">Alex:</span>

												Ciao sociis natoque penatibus et auctor ...

											</span>



											<span class="msg-time">

												<i class="icon-time"></i>

												<span>a moment ago</span>

											</span>

										</span>

									</a>

								</li>



								<li>

									<a href="#">

										<img src="resources/assets/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />

										<span class="msg-body">

											<span class="msg-title">

												<span class="blue">Susan:</span>

												Vestibulum id ligula porta felis euismod ...

											</span>



											<span class="msg-time">

												<i class="icon-time"></i>

												<span>20 minutes ago</span>

											</span>

										</span>

									</a>

								</li>



								<li>

									<a href="#">

										<img src="resources/assets/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />

										<span class="msg-body">

											<span class="msg-title">

												<span class="blue">Bob:</span>

												Nullam quis risus eget urna mollis ornare ...

											</span>



											<span class="msg-time">

												<i class="icon-time"></i>

												<span>3:15 pm</span>

											</span>

										</span>

									</a>

								</li>



								<li>

									<a href="inbox.html">

										See all messages

										<i class="icon-arrow-right"></i>

									</a>

								</li>

							</ul>

						</li>
 -->


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

	<!-- 							<li>

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

						<li >

							<a href="profile.jsp">

								<i class="icon-user"></i>

								<span class="menu-text"> 个人信息 </span>

							</a>

						</li>
						
						<li class="active">

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

								<span class="menu-text" id="exam-manager"> 试题管理 </span>

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




							<li class="active">课程管理</li>

						</ul><!-- .breadcrumb -->





					</div>



					<div class="page-content">

						<div class="page-header">

							<h1>

							课程管理

							</h1>

						</div><!-- /.page-header -->



						<div class="row">

							<div class="col-xs-12">

								<!-- PAGE CONTENT BEGINS -->



								<div class="row">

									<div class="col-xs-12">

										<div class="table-responsive">


										</div><!-- /.table-responsive -->

									</div><!-- /span -->

								</div><!-- /row -->
				
			
		<div id="popup3"  class="popup"  style="margin-left:-180px;margin-top:-190px;">
					<div class="title" style="width:700px;padding:0px">
						<span class="icon-remove"  onclick="clean();"></span>
					</div>
					<div class="cont" style="height:auto;width:700px;">
			
									<div class="tabbable tabs-left">

											<ul class="nav nav-tabs" id="myTab3">

												<li class="active">

													<a data-toggle="tab" href="#home3">

														<i class="pink  icon-facetime-video bigger-110"></i>

														视频

													</a>

												</li>



												<li>

													<a data-toggle="tab" href="#profile3">

														<i class="blue icon-book bigger-110"></i>

														作业

													</a>

												</li>



												<li>

													<a data-toggle="tab" href="#dropdown13">

														<i class="icon-comment-alt"></i>

														评论

													</a>

												</li>

											</ul>



											<div class="tab-content"  style="height:540px;">
										
												<div id="home3" class="tab-pane in active"  >
												
												<p>视频标题:<input type="text"  value="视频标题"  required class="ipt"  style="margin-bottom:5px;width:400px" id="ttitle" name="ttitle" /></p>
												<video id="tvideo" src=""  style="width:100%" controls="controls"></video>
												<form id="ajform">
									<input type="hidden"  name="chapterid"  id="chapterid"/>
									<input type="hidden"  name="videosrc" id="videosrc"/>
										<input type="hidden"  name="title1" id="title1"/>
									<textarea style="display:none" name="hw1" id="hw1"></textarea>
										<p  style="margin-top:7px;margin-bottom:0px"><input type="file"   id="id-input-file-2"  name="id-input-file-2""/></p>
                                   </form>
											
												
												</div>



												<div id="profile3" class="tab-pane">
																	<div class="col-xs-12" >

																		<select size=20  id="state4" name="state4" class="select2" data-placeholder="Click to Choose..." style="min-width:100%;margin-top:10px;">

																			<option value="null">&nbsp;</option>

																		</select>
																	</div>


												</div>



												<div id="dropdown13" class="tab-pane">

													 <div id="list" ></div>

												</div>

											</div>
</form>
			
						</div>
						<div class="center" style="padding-top: 6px;padding-bottom: 6px;">
							<button id="submit3" class="btn btn-primary  btn-sm " style="margin-right: 80px;" onclick="modifymes()">提交修改</button>
							<button id="reset3" class="btn btn-grey btn-sm ">取消</button>
						</div>
						
					</div>
	</div>
									
		<div id="dialogBg"></div>
		<div id="dialog" class="bounceInDown" style="display:none">
			<img class="dialogIco" width="50" height="50" src="resources/images/ico.png" alt="" />
			<div class="dialogTop">
				<a href="javascript:;" class="claseDialogBtn">关闭</a>
			</div>
                <div class="col-xs-4">
				         <a href="javascript:;"  onclick="changecover();"><img  id="ncover" style="margin-top:30px;margin-left:20px;height:200px" src="resources/images/slide2.jpg"  title="课程封面"/></a>
				<form id="file-input3" >
				<input type="file"  id="cover"   name="cover" onchange="javascript:setImagePreview();" accept="image/jpg,image/icon,image/png,image/jpeg," style="filter:alpha(opacity=0);opacity:0;width: 0;height: 0;"/> 
				<input type="hidden"  id="couid" name="couid"/>
				</form>
				</div>
				 <div class="col-xs-8" >
				<ul class="editInfos" >
				    <li  ><label><font color="#ff0000">* </font>课程编号：<input type="text" readonly="true" id="pop1" required value="" class="ipt"  style="width:250px;"/></label></li>
					<li><label><font color="#ff0000">* </font>课程名称：<input type="text" id="pop2" required value="" class="ipt" style="width:250px"/></label></li>
					<li><label><font color="#ff0000">* </font>课程分类：
					<select  id="pop3_1" required value="" class="ipt" style="width:113px" data-placeholder="选择课程分类..." onchange="getsec('');"></select>
					<select  id="pop3" required value="" class="ipt" style="width:125px" data-placeholder="选择课程分类..."></select>
					</label></li>
					<li><label><font color="#ff0000">* </font>课程难度：
					<select  id="pop5"  class="ipt"  style="width:245px";>
					                        <option value="初级">初级</option>
									         <option value="中级">中级</option>
																			<option value="高级">高级</option>
					</select>
					</label></li>
					<li><label><font color="#ff0000">* </font>课程描述：<textarea class="autosize-transition ipt" id="pop4"  required style=" word-wrap: break-word;height: 100px;width:250px;resize:none;"></textarea></label></li>
				
				
					
				</ul>
				</div>
					<center><input type="button" value="确认修改" class="submitBtn"  id="submitBtn1" style="margin-bottom:6px;"/></center>
		</div>
		
		<div id="dialog2" class="animated" style="display:none">
			<img class="dialogIco" width="50" height="50" src="resources/images/delete_48.png" alt="" />
			<div class="dialogTop">
				<a href="javascript:;" class="claseDialogBtn">关闭</a>
			</div>
			<form action="" method="post"  >
				<center><label style="color:red;margin-top:10px">是否确定删除该数据?</label></center>
					<center  style="padding-top: 6px;padding-bottom: 6px;"><input type="button"  value="确认" class="submitBtn"   id="submitBtn" />
					<input type="button" value="取消"  class="cancelBtn"  style="margin-left:20px"/></center>
			</form>
		</div>

		<div  class="row message"  style="display:none;">
		<center class="tmessage" >
		

		 </center>
			<button class="btn btn-primary  btn-sm " style="float:left" onclick="returnpre();">
			<i class="icon-reply icon-only"></i>
			返回
			</button>
		      <!--  <button class="editmessage">333</button> -->
		      
		     
		</div>
								<div class="row mytable"  style=“position:absolute;dispaly:block;min-height:800px;” >

									<div class="col-xs-12">




										<div class="table-responsive">

											<table id="sample-table-2" class="table table-striped table-bordered table-hover" style="table-layout:fixed;" >

												<thead>

													<tr>

							 							<th class="center">
							 							    首页推荐
														</th> 

														<th>课程编号</th>

														<th>课程名称</th>

														<th >课程描述</th>
														                   
														<th></th>
														
														<th></th>
														
														<th>课程分类</th>
														
														
														<th>操作</th>
														
		
													</tr>

												</thead>



										<!-- 		<tbody>

													<tr>

														<td class="center">

															<label>

																<input type="checkbox" class="ace" />

																<span class="lbl"></span>

															</label>

														</td>



														<td>app.com</td>

														<td>$45</td>

														<td class="hidden-480">3,330</td>

														<td>Feb 12</td>



					



														<td>

															<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">

																<a class="blue" href="#">

																	<i class="icon-zoom-in bigger-130"></i>

																</a>



																<a class="green" href="#">

																	<i class="icon-pencil bigger-130 rollIn"></i>

																</a>



																<a class="red" href="#">

																	<i class="icon-trash bigger-130"></i>

																</a>

															</div>



															<div class="visible-xs visible-sm hidden-md hidden-lg">

																<div class="inline position-relative">

																	<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">

																		<i class="icon-caret-down icon-only bigger-120"></i>

																	</button>



																	<ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">

																		<li>

																			<a href="#" class="tooltip-info" data-rel="tooltip" title="View">

																				<span class="blue">

																					<i class="icon-zoom-in bigger-120"></i>

																				</span>

																			</a>

																		</li>



																		<li>

																			<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">

																				<span class="green">

																					<i class="icon-edit bigger-120 rollIn"></i>

																				</span>

																			</a>

																		</li>



																		<li>

																			<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">

																				<span class="red">

																					<i class="icon-trash bigger-120"></i>

																				</span>

																			</a>

																		</li>

																	</ul>

																</div>

															</div>

														</td>

													</tr>





		

													</tbody> -->
													

												</table>

											</div>

								<div class="hr hr-18 dotted hr-double"></div>



								<h4 class="pink">

									<i class="icon-hand-right icon-animated-hand-pointer blue"></i>

									<a href="#modal-table" role="button" class="green" data-toggle="modal">首页推荐 </a>

								</h4>



								<div class="hr hr-18 dotted hr-double"></div>


										<div id="accordion" class="accordion-style1 panel-group">

										

											</div>

										</div>

										</div><!-- /.modal-content -->

									</div><!-- /.modal-dialog -->

								</div><!-- PAGE CONTENT ENDS -->

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



		<!-- <script src="http://www.jq22.com/jquery/jquery-2.1.1.js"></script> -->



		<!-- <![endif]-->



		<!--[if IE]>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

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

		<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>

		<script src="resources/assets/js/typeahead-bs2.min.js"></script>



		<!-- page specific plugin scripts -->



		<script src="resources/assets/js/jquery.dataTables.min.js"></script>

		<script src="resources/assets/js/jquery.dataTables.bootstrap.js"></script>



		<!-- ace scripts -->



		<script src="resources/assets/js/ace-elements.min.js"></script>





		<!-- inline scripts related to this page -->



		<script type="text/javascript">
		 var list = document.getElementById('list');
		    var boxs = list.children;
		    var timer;
	     function edit(a){
	    	   $('#pop1').val(a);
	    	   $.ajax({
	        		 type:"post",
	        		 url:basePath+"/courseManger/findCourse",
	        		 dataType:"json",
	        		 data:{
	        			 courseId:a
	        		 },
	        		 success:function(msg){
	        			 $('#ncover').attr('src',msg.coursepic);
	        			 $('#pop3_1').val(msg.firstclassname);
	        			 getsec(msg.secclassname);
						 $('#pop2').val(msg.coursename);
						 $('#pop4').val(msg.describe);
						 $('#pop5').val(msg.dif);
	        		 }
	        	 })  
		     	$('#dialogBg').fadeIn(300);
		     	$('#dialog').removeAttr('class').addClass('bounceInDown rollIn').fadeIn();
		 }

		     //关闭弹窗
		     $('#dialog .claseDialogBtn').click(function(){
		     	$('#dialogBg').fadeOut(300,function(){
		     		$('#dialog').addClass('bounceOutUp').fadeOut();
		     	});
		     });
		     
		   function returnpre(){

		    	   $(".message").toggle(100,function(){
				    	 $(".mytable").show("fast");
				    });
		    }
		    
		 	function  message(i){		 		 
	        	 $.ajax({
	        		 type:"post",
	        		 url:basePath+"/courseManger/findCourseAllMessage",
	        		 dataType:"json",
	        		 data:{
	        			 courseId:i
	        		 },
	        		 success:function(msg){
	        			 displaymes(msg);
	        		 }
	        	 })     	 
			    $(".mytable").toggle(500,function(){
			    	 $(".message").show("slow");
			    });
			}
		 	
		 	
		 	function creatsection(json){
				  var section=$('<li/>',{"class":"item-orange"});
				  var sectionmsg=$('<div/>',{"class":"dd-handle",text:json.name,id:'cp'+json.id});
				  var div1=$('<div/>',{"class":"pull-right action-buttons",style:"margin-top:12px;margin-right:16px"});
				  var a1=$('<a/>',{"class":"blue editmessage",href:'#',click:function(){
					 
					 $('#savechapter').text(json.id);
					  $('#ttitle').val(json.name);
					  $('#tvideo').attr('src', json.videosrc);
					
					  $.ajax({
			        		 type:"post",
			        		 url:basePath+"/courseManger/Chapterreply",
			        		 dataType:"json",
			        		 data:{
			        			 chapterId:json.id
			        		 },
			        		 success:function(msg){
			        			 fillreply(msg);
			        			 
			        		 },
			        		 error:function(){
			        			 alert('error');
			        		 }
			        	 });
			        	 
					  $.ajax({
			        		 type:"post",
			        		 url:basePath+"/courseManger/findHomework",
			        		 dataType:"json",
			        		 data:{
			        			 id:json.id
			        		 },
			        		 success:function(msg){
			        			 /* alert(msg.hwcontent); */
			        				 $('#state4').val(msg.hwcontent);
			        		 },
			        		 error:function(){
			        			 alert('error');
			        		 }
			        	 });
				  }});
				  var i1=$('<i/>',{"class":"icon-pencil bigger-130 "});
				  a1.append(i1);
				  var a2=$('<a/>',{"class":"red",href:'#'});
				  var i2=$('<i/>',{"class":"icon-remove bigger-130",click:function(){
					  /* alert(json.id); */
					  var tttt=delchapter(json.id,json.videosrc);
					  if(tttt==-1) return ;
					  else section.remove();
				  }});
				  a2.append(i2);
				  div1.append(a1);
				  div1.append(a2);
				  section.append(div1);
				  section.append(sectionmsg);
				  return section;
		 	}
		 	
		 	function delchapter(id,videosrc){
		 		$.ajax({
	        		 type:"post",
	        		 url:basePath+"/chapterManager/delChapter",
	        		 dataType:"text",
	        		data:{
							id:id,
							videosrc:videosrc
						},
	        		 success:function(msg){
	        			 if(msg=='success') return 1;
	        			 else return -1;
	        		 },
	        		 error:function(){
	        			 return -1;
	        		 }
	        	 });
		 	}
		 	
		 	function insertchapter(jsonstr){
		 		$.ajax({
	        		 type:"post",
	        		 url:basePath+"/chapterManager/addChapter",
	        		 dataType:"text",
	        		 contentType:"application/json",
	        		 data:JSON.stringify(jsonstr),
	        		 success:function(msg){
	        			 if(msg==-1) return ;
	        			 jsonstr.id=msg;
						  /* alert('67676   '+jsonstr.chapterid); */
						  var  section=creatsection(jsonstr);
						  $('#tcourselist  #c'+jsonstr.secparentid+"  .dd-list").append(section);
							$("#popup3").popup({
				                  classname:".editmessage",
				                  submit:"#reset3"
			            });
	        		 },
	        		 error:function(){
	        			 return -1;
	        		 }
	        	 });
		 	}
		 	function displaymes(msg){
		 		/* <div class="dd" id="nestable">
				<ol class="dd-list" id="tcourselist"> */
		 		 $('#nestable').remove(); 
		 		var nestable=$('<div/>',{"class":"dd",id:"nestable"});
		 		var tcourselist=$('<ol/>',{"class":"dd-list",id:"tcourselist"});
		 		nestable.append(tcourselist);
		 		 $('.tmessage').append(nestable);
		 		$.each(msg, function(n, json){
					if(json.secparentid==-1){
						  var chapter=$('<li/>',{"class":"dd-item",id:"c"+json.chapterid});
						  var chaptermsg=$('<div/>',{"class":"dd-handle",text:json.name});
						  var chapterlist=$('<ol/>',{"class":"dd-list"});
						  var div1=$('<div/>',{"class":"pull-right action-buttons",style:"margin-top:12px;margin-right:16px"});
						  var a1=$('<a/>',{"class":"blue",href:'#',click:function(){
						     }
						  });
						  var i1=$('<i/>',{"class":"icon-pencil bigger-130"});
						  a1.append(i1);
						  var a2=$('<a/>',{"class":"red",href:'#'});
						  var i2=$('<i/>',{"class":"icon-remove bigger-130",click:function(){
							  var tttt=delchapter(json.id,"");
							  if(tttt==-1) return ;
							  else chapter.remove();
						  }});
						  a2.append(i2);
						  div1.append(a1);
						  div1.append(a2);
						  var a3=$('<a/>',{"class":"green",href:'#'});
						  var i3=$('<i/>',{"class":"icon-plus bigger-120",click:function(){
							 /*  alert(json.courseid) */
							  var row2 = {id:-1,name: '待编辑', courseid: json.courseid,videosrc:'upload/newadd/123',secparentid:json.chapterid,chapterid:-1,sectionid:9999};
							  var t=insertchapter(row2);
						  }});
						  a3.append(i3);
						  div1.append(a3);
						  chapter.append(div1);
						  chapter.append(chaptermsg);
						  chapter.append(chapterlist);
						  $('#tcourselist').append(chapter);
					}
					else{
						 var  section=creatsection(json);
						  $('#tcourselist #c'+json.secparentid+" .dd-list").append(section);
					}
				});
		 		  if($('#tcourselist').html()==""){
		 			  $('#tcourselist').html("该课程无数据");
		 		  }
					$("#popup3").popup({
			                  classname:".editmessage",
			                  submit:"#reset3"
		            });
			 		$('.dd').nestable();
					    $('.dd-handle a').on('mousedown', function(e){
						        e.stopPropagation();
			        });
		 	}
	
			

				
	
				function 	 fillreply(msg){
					$('#list').html("");
		 			$.each(msg, function(n, json){
		 				if(json.replytoreplyid==-1){
		 					       var html="";
					 				html+="<div class='box clearfix' id='"+json.replyid+"'>";
					 				html+="<a class='close' href='javascript:;'>×</a>";
					 				html+="<img class='head' src='resources/images/3.jpg' alt=''/>";
					 				html+="<div class='content'>";
					 				html+="<div class='main'>";
					 				html+=" <p class='txt'>";
					 				html+="<span class='user' name='user"+json.uid+"'>"+json.replyname+"：</span>"+json.content;
					 				html+="</p>";
					 				html+="</div>";
					 				html+="<div class='info clearfix'>";
					 				html+="<span class='time'>"+new Date(json.replytime).format("yyyy-MM-dd hh:mm:ss") +"</span>";
					 				html+=" </div>";
			                        html+="<div class='comment-list' id='txt"+json.replyid+"'>";
			                        html+="</div>";
					 				html+="<div class='text-box'>";
					 				html+=" <textarea class='comment' autocomplete='off' placeholder='评论...'></textarea>";
					 				html+="<button class='btn '>回 复</button>";
					 				html+=" <span class='word'><span class='length'>0</span>/140</span>";
					 				html+=" </div>";
					 				html+="</div>";
					 				html+="</div>";
					 				$('#list').append(html);
		 				}else{
		 					if(json.replytouid==-1){
		 						var html1="";
		 						html1+="<div class='comment-box clearfix' user='other'  id='"+json.replyid+"'>";
                        		html1+="<img class='myhead' src='resources/images/4.jpg' alt=''/>";
                        		html1+="<div class='comment-content' name='"+json.replytoreplyid+"'>";
                        		html1+=" <p class='comment-text'><span class='user' name='user"+json.uid+"'>"+json.replyname+"：</span>"+json.content+"</p>";
                        		html1+="<p class='comment-time'>";
                        		html1+=new Date(json.replytime).format("yyyy-MM-dd hh:mm:ss");
                        		if(json.uid!="${message1.teaname}"){
                        		html1+=" <a href='javascript:;' class='comment-del'>删除</a>";
                        		html1+=" <a href='javascript:;' class='comment-operate'>回复</a>";
                        		}
                        		else
                        			html1+=" <a href='javascript:;' class='comment-operate'>删除</a>";
                        		html1+="</p>";
                        		html1+="</div>";
                        		html1+="</div>"; 
                        		$('#txt' +json.replytoreplyid).append(html1);								
		 					}else{
		 						var html1="";
		 						var idd=$('#' +json.replytoreplyid+' .comment-content').attr('name');
		 						
		 						html1+="<div class='comment-box clearfix' user='other'  id='"+json.replyid+"'>";
                        		html1+="<img class='myhead' src='resources/images/4.jpg' alt=''/>";
                        		html1+="<div class='comment-content' name='"+idd+"'>";
                        		html1+=" <p class='comment-text'><span class='user' name='user"+json.uid+"'>"+json.replyname+"：</span>回复 <span class='user' name='user"+json.replytouid+"'>"+json.replytoname+"：</span>"+json.content+"</p>";
                        		html1+="<p class='comment-time'>";
                        		html1+=new Date(json.replytime).format("yyyy-MM-dd hh:mm:ss");
                        		if(json.uid!="${message1.teaname}"){
                            		html1+=" <a href='javascript:;' class='comment-del'>删除</a>";
                            		html1+=" <a href='javascript:;' class='comment-operate'>回复</a>";
                            	}
                            	else
                            			html1+=" <a href='javascript:;' class='comment-operate'>删除</a>";
                        		html1+="</p>";
                        		html1+="</div>";
                        		html1+="</div>"; 
		 						
		 						$('#txt' +idd).append(html1);	
		 					}
		 				}
		 				if($('#list').html()==""){
		 					$('#list').html("暂无评论");
		 				}
		 			});
		 			 list = document.getElementById('list');
			 		 boxs = list.children;
			 		    //把事件代理到每条分享div容器
			 		    for (var i = 0; i < boxs.length; i++) {
			 		        //点击
			 		        boxs[i].onclick = function (e) {
			 		            e = e || window.event;
			 		            var el = e.srcElement;
			 		 
			 		            switch (el.className) {

			 		                //关闭分享
			 		                case 'close':
			 		                    removeNode(el.parentNode);
			 		                    break;

			 		                //赞分享
			 		                case 'praise':
			 		                    praiseBox(el.parentNode.parentNode.parentNode, el);
			 		                    break;

			 		                //回复按钮蓝
			 		                case 'btn':
			 		                    reply(el.parentNode.parentNode.parentNode, el);
			 		                    break;

			 		                //回复按钮灰
			 		                case 'btn btn-off':
			 		                    clearTimeout(timer);
			 		                    break;

			 		                //赞留言
			 		                case 'comment-praise':
			 		                    praiseReply(el);
			 		                    break;

			 		                //操作留言
			 		                case 'comment-operate':
			 		                    operate(el);
			 		                    break;
			 		                case 'comment-del':
			 		                    operate(el);
			 		                    break;
			 		            }
			 		        }

			 		        //评论
			 		        var textArea = boxs[i].getElementsByClassName('comment')[0];

			 		        //评论获取焦点
			 		        textArea.onfocus = function () {
			 		            this.parentNode.className = 'text-box text-box-on';
			 		           /*  this.value = this.value == '评论…' ? '' : this.value; */
			 		            this.onkeyup();
			 		        }

			 		        //评论失去焦点
			 		        textArea.onblur = function () {
			 		            var me = this;
			 		            var val = me.value;
			 		            if (val == '') {
			 		                timer = setTimeout(function () {
			 		                   /*  me.value = '评论…'; */
			 						    me.placeholder='评论...';
			 		                    me.parentNode.className = 'text-box';
			 		                }, 200);
			 		            }
			 		        }

			 		        //评论按键事件
			 		        textArea.onkeyup = function () {
			 		            var val = this.value;
			 		            var len = val.length;
			 		            var els = this.parentNode.children;
			 		            var btn = els[1];
			 		            var word = els[2];
			 		            if (len <=0 || len > 300) {
			 		                btn.className = 'btn btn-off';
			 		            }
			 		            else {
			 		                btn.className = 'btn';
			 		            }
			 		            word.innerHTML = len + '/300';
			 		        }
			 		    }
		 		}
		 		 

		 		    //格式化日期
		 		    function formateDate(date) {
		 		        var y = date.getFullYear();
		 		        var m = date.getMonth() + 1;
		 		        var d = date.getDate();
		 		        var h = date.getHours();
		 		        var mi = date.getMinutes();
		 		        m = m > 9 ? m : '0' + m;
		 		        return y + '-' + m + '-' + d + ' ' + h + ':' + mi;
		 		    }

		 		    //删除节点
		 		    function removeNode(node) {
		 		    	/* alert(node.id); */
		 		    	 $.ajax({
			        		 type:"post",
			        		 url:basePath+"/courseManger/delCreply",
			        		 data:{
			        			 id:node.id
			        		 },
			        		 success:function(msg){
			        			alert('success');
			        			 node.parentNode.removeChild(node);
			        		 },
			        		 error:function(){
			        			 alert('error');
			        		 }
			        	 })
		 		       
		 		    }

		 		    /**
		 		     * 赞分享
		 		     * @param box 每个分享的div容器
		 		     * @param el 点击的元素
		 		     */
		 		    function praiseBox(box, el) {
		 		        var txt = el.innerHTML;
		 		        var praisesTotal = box.getElementsByClassName('praises-total')[0];
		 		        var oldTotal = parseInt(praisesTotal.getAttribute('total'));
		 		        var newTotal;
		 		        if (txt == '赞') {
		 		            newTotal = oldTotal + 1;
		 		            praisesTotal.setAttribute('total', newTotal);
		 		            praisesTotal.innerHTML = (newTotal == 1) ? '我觉得很赞' : '我和' + oldTotal + '个人觉得很赞';
		 		            el.innerHTML = '取消赞';
		 		        }
		 		        else {
		 		            newTotal = oldTotal - 1;
		 		            praisesTotal.setAttribute('total', newTotal);
		 		            praisesTotal.innerHTML = (newTotal == 0) ? '' : newTotal + '个人觉得很赞';
		 		            el.innerHTML = '赞';
		 		        }
		 		        praisesTotal.style.display = (newTotal == 0) ? 'none' : 'block';
		 		    }

		 		    /**
		 		     * 发评论
		 		     * @param box 每个分享的div容器
		 		     * @param el 点击的元素
		 		     */
		 		    function reply(box, el) {
		 		    	var replytoreplyid=$('#willrep').attr('name');
		 		    	if(replytoreplyid==null||replytoreplyid==""){
		 		    	    var xx = box.getElementsByClassName('comment-list')[0];
		 		    		 replytoreplyid=xx.getAttribute("id").substring(3);
		 		    	}
		 		    	/* alert(replytoreplyid); */
		 		    	replytouid = $('#willrep').text();//回复谁
		 		    	
		 		    	var uid="${message1.teaname}";
		 		    	var replytime=new Date();
		 		    	var chapterid=$('#savechapter').text();
		 		
		 		    	var replyname="${message1.nickname}";
		 		    	var replytoname="";
		 		    	var content="";
		 		        var commentList = box.getElementsByClassName('comment-list')[0];
		 		        var textarea = box.getElementsByClassName('comment')[0];
		 		        var commentBox = document.createElement('div');
		 		        commentBox.className = 'comment-box clearfix';
		 		       commentBox.setAttribute("name", replytoreplyid);
		 				if(textarea.placeholder!="评论..."){
		 					replytoname=textarea.placeholder.substring(2,textarea.placeholder.length-1);
		 					content="</span>回复 <span class='user' name='user"+replytouid+"'>"+replytoname+"：</span>"+textarea.value+"</p>";
		 					/* alert(replytoname); */
		 				}else{
		 					content=textarea.value;
		 				}
		 				$('#willrep').attr('name',"");
		 				$('#willrep').text("-1");
		 		        commentBox.setAttribute('user', 'self');
		 		         $.ajax({
				        		 type:"post",
				        		 url:basePath+"/CreplyManger/addCreply",
				        		 dataType:"text",
				        		 contentType:"application/json",
				        		 data:JSON.stringify( {
				        			    chapterid:chapterid,
				        			    uid:uid,
				        			    content:textarea.value,
				        			    replytime:replytime,
				        			    replytoreplyid:replytoreplyid,
				        			    replytouid:replytouid,
				        			    uname:"000",//去掉
				        			    replyname:replyname,
				        			    replytoname:replytoname
				        		 }),
				        		 success:function(msg){
				        			 /* alert(msg); */
				        			 commentBox.innerHTML =
						 		            '<img class="myhead" src="images/my.jpg" alt=""/>' +
						 		                '<div class="comment-content">' +
						 		                "<p class='comment-text'><span class='user'  name='user"+uid+"'>"+replyname+"：</span>"+ content +
						 		                '<p class="comment-time">' +
						 		                formateDate(new Date()) +
						 		                '<a href="javascript:;" class="comment-operate">删除</a>' +
						 		                '</p>' +
						 		                '</div>';
						 		      /*    alert(commentList.innerHTML); */
						 		        commentList.append(commentBox);
						 		        textarea.value = '';
						 		        textarea.onblur();
				        		 }
				        	 })
        	 
		 		       
		 		    }
		 		    
		 		    
		 		  
		 		    /**
		 		     * 赞回复
		 		     * @param el 点击的元素
		 		     */
		 		    function praiseReply(el) {
		 		        var myPraise = parseInt(el.getAttribute('my'));
		 		        var oldTotal = parseInt(el.getAttribute('total'));
		 		        var newTotal;
		 		        if (myPraise == 0) {
		 		            newTotal = oldTotal + 1;
		 		            el.setAttribute('total', newTotal);
		 		            el.setAttribute('my', 1);
		 		            el.innerHTML = newTotal + ' 取消赞';
		 		        }
		 		        else {
		 		            newTotal = oldTotal - 1;
		 		            el.setAttribute('total', newTotal);
		 		            el.setAttribute('my', 0);
		 		            el.innerHTML = (newTotal == 0) ? '赞' : newTotal + ' 赞';
		 		        }
		 		        el.style.display = (newTotal == 0) ? '' : 'inline-block'
		 		    }

		 		    /**
		 		     * 操作留言
		 		     * @param el 点击的元素
		 		     */
		 		    function operate(el) {
		 		
		 		        var commentBox = el.parentNode.parentNode.parentNode;
		 		        var box = commentBox.parentNode.parentNode.parentNode;
		 		        var txt = el.innerHTML;

		 		        var user = commentBox.getElementsByClassName('user')[0].innerHTML;
		 		        var x= commentBox.getElementsByClassName('user')[0];
		 		 /*        alert(x.getAttribute("name").substring(4));
		 		        alert(user); */
		 		        $('#willrep').text(x.getAttribute("name").substring(4));
		 		        
		 		        $('#willrep').attr('name',commentBox.id);
		 		        var textarea = box.getElementsByClassName('comment')[0];
		 		        if (txt == '回复') {
		 					textarea.focus();
		 					textarea.placeholder='回复' + user;
		 					/* textarea.value = '回复' + user; */
		 		            textarea.onkeyup();
		 		        }
		 		        else {
		 		        	alert(commentBox.id);
		 		            removeNode(commentBox);
		 		        }
		 		    }

		 	function clean(){
		 		$('#tvideo').attr('src','');
		 	}
		 	
		 	function changecover(){
		 		$("#cover").trigger("click"); 
		 	}
		 	
		     function del(a){
		       // alert(a);
		        $('#pop1').val(a);
		     	$('#dialogBg').fadeIn(300);
		     	$('#dialog2').removeAttr('class').addClass('animated flipInX').fadeIn(100);
		     }
		     
		     $('#submitBtn').click(function(){
				 	$.ajax({
				 		url: basePath+"/courseManger/delCourse",
				 		dataType:"text",
				 		type: "POST", 
				 		data:{
				 			courseId: $('#pop1').val()
				 		},
				 		success:function(data){
				 			if(data=="success"){
							        var row=$('#sample-table-2 tbody tr');
									row.each(function(){
										var now=$(this).find('td');
										if(now.eq(1).text()== $('#pop1').val()){
											$(this).remove();
											return false;
										}
									});
									$('#dialogBg').fadeOut(300,function(){
							     		$('#dialog2').addClass('bounceOutUp').fadeOut(100);
							     	});
									toastr.success('删除成功');
				 			}else{
				 				toastr.error('删除失败');
				 			}
				 		}
				 	})
			 });
		     //关闭弹窗
		     $('#dialog2 .claseDialogBtn,.cancelBtn').click(function(){
		     	$('#dialogBg').fadeOut(300,function(){
		     		$('#dialog2').addClass('bounceOutUp').fadeOut(100);
		     	});
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


			jQuery(function($) {

				table = $('#sample-table-2').dataTable( {
					"bFilter":false,
					 "bprocessing": true,
					 "bServerSide": true,
					 "sAjaxSource": basePath+"/courseManger/findCourseLimit",
					 "fnServerData": retrieveData,
				     "fnInitComplete": function(oSettings, json) {
						  function getSrceenWH(){
						     	var w = $(window).width();
						     	var h = $(window).height();
						     	$('#dialogBg').width(w).height(h);
						     }

						     window.onresize = function(){  
						     	getSrceenWH();
						     }  
						     $(window).resize();  
						     getSrceenWH();
						     //显示弹框
			
			         },
					 "oLanguage": {                         
	                        "sLengthMenu":"显示 _MENU_ 条记录",  
	            /*             "sSearch":'搜索', */
	                        "sZeroRecords": "没有检索到数据",  
	                        "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",  
	                        "sInfoEmtpy": "没有数据",  
	                        "sInfoFiltered": "数据表中共为 _MAX_ 条记录",
	                        "sProcessing": "正在加载数据...", 
	                        "sInfoEmpty": "显示 0 至 0 共 0 项",
	                        "oPaginate": {  
	                            "sFirst": "首页",  
	                            "sPrevious":"上一页",  
	                            "sNext": "下一页",  
	                            "sLast": "尾页"  
	                        }  
	                   },
					"aoColumns": [
					  {"sDefaultContent": "<label><input type='checkbox' class='ace' onclick='check(this)'/><span class='lbl'></span></label>","bSortable": false, "sClass" : "center" },
				      { "mData": "id","bSortable": false },
				      { "mData":"coursename" },
				      {"mData":"describe"},
				      {"mData":"firstclassname","bVisible": false},
				      {"mData":"secclassname","bVisible": false}
					],
					 "aoColumnDefs":[  
					                 {  
			                            	"mData": "id",
			                                "aTargets":[6],  
			                                "bSortable": false,
			                                "mRender":function(a,b,c,d){//a表示id，c表示当前记录行对象  
			                                    return c.firstclassname+'/'+c.secclassname;
			                                  }  
			                            },
			                            {  
			                            	"mData": "id",
			                                "aTargets":[7],  
			                                "bSortable": false,
			                                "mRender":function(a,b,c,d){//a表示id，c表示当前记录行对象  
			                                    return "<div class='visible-md visible-lg hidden-sm hidden-xs action-buttons'><a class='blue tooltip-info' href='#' data-rel='tooltip' title='详细'><i class='icon-zoom-in bigger-130'  onclick=\"message("+c.id+")\"></i></a>    <a class='green' href='#'>  <i class='icon-pencil bigger-130 rollIn' onclick=\"edit("+c.id+")\"></i>  </a>    <a class='red' href='#'>  <i class='icon-trash bigger-130 flipInX' onclick=\"del("+c.id+")\"></i>  </a>  </div>    <div class='visible-xs visible-sm hidden-md hidden-lg'>  <div class='inline position-relative'>  <button class='btn btn-minier btn-yellow dropdown-toggle' data-toggle='dropdown'>  <i class='icon-caret-down icon-only bigger-120'></i>  </button>    <ul class='dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close'>  <li>  <a href='#' class='tooltip-info' data-rel='tooltip' title='View'>  <span class='blue'>  <i class='icon-zoom-in bigger-120'></i>  </span>  </a>  </li>    <li>  <a href='#' class='tooltip-success' data-rel='tooltip' title='Edit'>  <span class='green'>  <i class='icon-edit bigger-120 rollIn' onclick=\"edit("+c.id+")\"></i>  </span>  </a>  </li>    <li>  <a href='#' class='tooltip-error' data-rel='tooltip' title='Delete'>  <span class='red'>  <i class='icon-trash bigger-120 flipInX' onclick=\"del("+c.id+")\"></i>  </span>  </a>  </li>  </ul>  </div>  </div>";
			                                  }  
			                            }],  
					} );
				

				 function retrieveData( sSource111,aoData111, fnCallback111) {
			            $.ajax({
			                url : sSource111,//这个就是请求地址对应sAjaxSource
			                data : {"aoData":JSON.stringify(aoData111)},//这个是把datatable的一些基本数据传给后台,比如起始位置,每页显示的行数
			                type : 'post',
			                dataType : 'json',
			                async : false,
			                success : function(result) {
			                    fnCallback111(result);
			                    //把返回的数据传给这个方法就可以了,datatable会自动绑定数据的
			                },
			                error : function(msg) {
			                }
			            });
			        }
				



				
				$('table th input:checkbox').on('click' , function(){

					var that = this;

					$(this).closest('table').find('tr > td:first-child input:checkbox')

					.each(function(){

						this.checked = that.checked;

						$(this).closest('tr').toggleClass('selected');

					});

						

				});

		       
			

				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});

				function tooltip_placement(context, source) {

					var $source = $(source);

					var $parent = $source.closest('table')

					var off1 = $parent.offset();

					var w1 = $parent.width();

			

					var off2 = $source.offset();

					var w2 = $source.width();

			

					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';

					return 'left';

				}

})

</script>
<link rel="stylesheet" href="resources/css/common.css"/>
	<script src="resources/js/popup.js"></script>
	<script type="text/javascript">
	
	function check(c){
		var kk=$(c).parent().parent().next().text();
		var xxx=$('#accordion .panel-default');
		/* alert(xxx.length); */
		if(xxx.length==3&&$(c).prop("checked")==true){
		 alert('首页推荐只能选择三个');
			   $(c).prop("checked",false);
		}else if($(c).prop("checked")==true){
			addtj(kk,c);	
		}else{
			$('#cccc'+kk).remove();
			$.ajax({
  				url: basePath+"/bestManager/delbest",
  				dataType:"text",
  				type: "POST", 
  				data:{
  					id:kk,
  				},
  				success:function(data){
  				  $(c).prop("checked",false);
  				},
  				error:function (){
  	  			 alert('失败');
  				  $(c).prop("checked",true);
  	  		 }
		})
		}
			  
	}
	
	function addtj(id,c){
		var html="";
		 alert("xxx"+id); 
 	   $.ajax({
  		 type:"post",
  		 url:"courseManger/findCourse",
  		 dataType:"json",
  		 data:{
  			 courseId:id
  		 },
  		 success:function(msg){
  			/*  alert(id+"   "+msg.coursepic); */
  			$.ajax({
  				url: basePath+"/bestManager/addbest",
  				dataType:"json",
  				type: "POST", 
  				data:{
  					cid:id,
  					src:msg.coursepic
  				},
  				success:function(data){
  					html="<div class='panel panel-default' id='cccc"+id+"'>";
  		  			html+="<div class='panel-heading'>";
  		  			html+="<h4 class='panel-title'>";
  		  			html+="<a class='accordion-toggle' data-toggle='collapse' data-parent='#accordion' href='#collapse"+id+"'>";
  		  			html+="<i class='icon-angle-down bigger-110' data-icon-hide='icon-angle-down' data-icon-show='icon-angle-right'></i>";
  		  			html+="&nbsp;课程编号["+id+"]："+msg.coursename;
  		  			html+="<i class='icon-remove'  style='float:right' onclick='removetj(this);'></i>";
  		  			html+="</a>";
  		  			html+="</h4>";
  		  			html+="</div>";
  		  			html+="<div class='panel-collapse collapse in' id='collapse"+id+"'>";
  		  			html+="<div class='panel-body'>";
  		  			html+="<img alt=''  src='"+msg.coursepic+"'  style='width:100%;height:500px'   onclick='change(this)'  id='picc"+id+"'>";
  		  			html+="</div>";
  		  			html+="</div>";
  		  	        html+="</div>";
  		  	        /* alert(html); */
  					 $('#accordion').append(html);
  				},
  				error:function (){
  	  			  alert('添加失败');
  				  $(c).prop("checked",false);
  	  		 }
  			})
  		 },error:function (){
  			  alert('添加失败');
			  $(c).prop("checked",false);
  		 }
  	 })  
		
	}
	
	function change(cc){
		$('#uuid').val($(cc).attr('id').substring(4));
		$("#cover111").trigger("click"); 
	}
	function getsec(aa){
		alert($('#pop3_1').find("option:checked").attr('name'));
		$.ajax({
			url: basePath+"/Dir/findCourseClass2",
			dataType:"json",
			type: "POST", 
			conentType:"application/json",
			data:{
				id:$('#pop3_1').find("option:checked").attr('name')
			},
			success:function(data){
				$("#pop3 option").remove();
				var addHtml ="<option value=''>&nbsp;</option>";
				$.each(data, function(n, json){
					addHtml +="<option value='"+json.classname+"'  name='"+json.id+"'>"+json.classname+"</option>";
				});
				$("#pop3").append(addHtml);
				if(aa!=' ')
				 $('#pop3').val(aa);
			}
		})
	}
$(function(){
	toastr.options = {  
	        positionClass: "toast-center-center",  
	        "showDuration": "500",//显示的动画时间
	        "hideDuration": "500",//消失的动画时间
	        "timeOut": "1000", //展现时间
	}
	
	$.ajax({
		url: basePath+"/bestManager/findbest",
		dataType:"json",
		type: "POST", 
		conentType:"application/json",
		success:function(data){
			var html="";
			/* alert(data.length); */
			$.each(data, function(n, msg){
				html="<div class='panel panel-default' id='cccc"+msg.cid+"'>";
	  			html+="<div class='panel-heading'>";
	  			html+="<h4 class='panel-title'>";
	  			html+="<a class='accordion-toggle' data-toggle='collapse' data-parent='#accordion' href='#collapse"+msg.cid+"'>";
	  			html+="<i class='icon-angle-down bigger-110' data-icon-hide='icon-angle-down' data-icon-show='icon-angle-right'></i>";
	  			html+="&nbsp;课程编号["+msg.cid+"]";
	  			html+="<i class='icon-remove'  style='float:right' onclick='removetj(this);'></i>";
	  			html+="</a>";
	  			html+="</h4>";
	  			html+="</div>";
	  			html+="<div class='panel-collapse collapse in' id='collapse"+msg.cid+"'>";
	  			html+="<div class='panel-body'>";
	  			html+="<img alt=''  src='"+msg.src+"'  style='width:100%;height:500px'   onclick='change(this)'  id='picc"+msg.cid+"'>";
	  			html+="</div>";
	  			html+="</div>";
	  	        html+="</div>";		
	  	      $('#accordion').append(html);
			});
			
		}
	})

	


	$.ajax({
		url: basePath+"/Dir/findCourseClass1",
		dataType:"json",
		type: "POST", 
		conentType:"application/json",
		success:function(data){
			$("#pop3_1 option").remove();
			var addHtml ="<option value=''>&nbsp;</option>";
			$.each(data, function(n, json){
				addHtml +="<option value='"+json.classname+"'  name='"+json.id+"'>"+json.classname+"</option>";
			});
			$("#pop3_1").append(addHtml);
		}
	})
	
	$('#submitBtn1').click(function(){
		
		$.ajax({
			url: basePath+"/courseManger/modifyCourse",
			dataType:"text",
			type: "POST", 
			
			data:{
				id:$('#pop1').val(),
		        title:$('#pop2').val(),
			    des:$('#pop4').val(),
			    fclassname:$('#pop3_1').val(),
			    sclassname:$('#pop3').val(),
			    dif:$('#pop5').val()
			},
			success:function(data){
				if(data=='ok'){
					$('#couid').val($('#pop1').val());
					$("#file-input3").ajaxSubmit({
		        		type:"post",
		        		url: basePath+"/courseManger/modifyCoursePic",
		        		dataType:"text",
		        		success:function(msg){
		        			/* alert(msg); */
		        		}
		        	 })	  
					row=$('#sample-table-2 tbody tr');
					row.each(function(){
						var now=$(this).find('td');
						if(now.eq(1).text()==$('#pop1').val()){
							now.eq(4).text($('#pop3_1').val()+'/'+$('#pop3').val());
							now.eq(2).text($('#pop2').val());
							now.eq(3).text($('#pop4').val());
							return false;
						}
					});
					$('#dialogBg').fadeOut(300,function(){
							$('#dialog').addClass('bounceOutUp').fadeOut(1);
							toastr.success('修改成功');
					});
				}else{
					toastr.error('修改失败');
				}
			}
		})
	})
});



</script>


		



		<!-- ace scripts -->


		<script src="resources/assets/js/jquery.hotkeys.min.js"></script>

		<script src="resources/assets/js/bootstrap-wysiwyg.min.js"></script>

		<script src="resources/assets/js/bootbox.min.js"></script>
		



		<!-- inline scripts related to this page -->



		<script type="text/javascript">
		
		function removetj(tj){
		   alert($(tj).parent().parent().parent().parent().attr('id'));
		   var id=$(tj).parent().parent().parent().parent().attr('id');
			$.ajax({
  				url: basePath+"/bestManager/delbest",
  				dataType:"text",
  				type: "POST", 
  				data:{
  					id:id.substring(4)
  				},
  				success:function(data){
  					$(tj).parent().parent().parent().parent().remove();
  				},
  				error:function (){
  	  			 alert('失败');
  	  		 }
		})
		}
		function setImage(avalue) {
			var xc="picc"+$('#uuid').val();
			$("#form111").ajaxSubmit({
        		type:"post",
        		url: basePath+"/bestManager/modifybest",
        		dataType:"text",
        		success:function(msg){
        		/* 	alert(msg); */
        			$('#'+xc).attr('src',msg);
        		}
        	 })	  
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
		
		function modifymes(){
			$('#chapterid').val($('#savechapter').text());
			$('#videosrc').val($('#tvideo').attr('src'));
			$('#title1').val($('#ttitle').val());

			$('#hw1').html($('#state4').val());
			$("#ajform").ajaxSubmit({
        		type:"post",
        		url: basePath+"/courseManger/modifyChapter",
        		dataType:"json",
        		success:function(msg){

        				alert(msg.videosrc);
        				$('#tvideo').attr('src',msg.videosrc);
        				$('#cp'+$('#chapterid').val()).text(msg.name);
        			toastr.success('修改成功');
        			
        		}
        	 })	  
		}
			jQuery(function($){
				
			
				 $.ajax({//加载试卷列表
						type:"post",
						url:"http://localhost:8080/checkonline/exam/getmes",
						dataType:"json",
						data:{
							username:"~"
						},
						success:function(data){
							var addHtml="";
							for(var i=0; i<data.length; i++){
								addHtml +="<option value='"+data[i].id+"'  name='"+data[i].id+"'>"+data[i].title+"["+data[i].label+"]&nbsp;&nbsp;"+data[i].time+"分钟</option>";
							}
							/* alert(addHtml); */
							$("#state4").append(addHtml);
						}	
			});
			
				
				Date.prototype.format =function(format)
				  {
				  var o = {
				  "M+" : this.getMonth()+1, //month
				  "d+" : this.getDate(), //day
				  "h+" : this.getHours(), //hour
				  "m+" : this.getMinutes(), //minute
				  "s+" : this.getSeconds(), //second
				  "q+" : Math.floor((this.getMonth()+3)/3), //quarter
				  "S" : this.getMilliseconds() //millisecond
				  }
				  if(/(y+)/.test(format)) format=format.replace(RegExp.$1,
				  (this.getFullYear()+"").substr(4- RegExp.$1.length));
				  for(var k in o)if(new RegExp("("+ k +")").test(format))
				  format = format.replace(RegExp.$1,
				  RegExp.$1.length==1? o[k] :
				  ("00"+ o[k]).substr((""+ o[k]).length));
				  return format;
				  }
				
				$('#editor2').css({'height':'200px'}).ace_wysiwyg({

					toolbar_place: function(toolbar) {

						return $(this).closest('.widget-box').find('.widget-header').prepend(toolbar).children(0).addClass('inline');

					},

					
					toolbar:

					[

						'font',

						null,

						'fontSize',

						null,

						{name:'bold', className:'btn-info'},

						{name:'italic', className:'btn-info'},

						{name:'strikethrough', className:'btn-info'},

						{name:'underline', className:'btn-info'},

						null,

						{name:'insertunorderedlist', className:'btn-success'},

						{name:'insertorderedlist', className:'btn-success'},

						{name:'outdent', className:'btn-purple'},

						{name:'indent', className:'btn-purple'},

						null,

						{name:'justifyleft', className:'btn-primary'},

						{name:'justifycenter', className:'btn-primary'},

						{name:'justifyright', className:'btn-primary'},

						{name:'justifyfull', className:'btn-inverse'},

						null,

						{name:'createLink', className:'btn-pink'},

						{name:'unlink', className:'btn-pink'},

						null,

						{name:'insertImage', className:'btn-success'},

						null,

						'foreColor',

						null,

						{name:'undo', className:'btn-grey'},

						{name:'redo', className:'btn-grey'}

					],

					speech_button:false

				});




				$('[data-rel="tooltip"]').tooltip();

				$('#id-input-file-1 , #id-input-file-2').ace_file_input({

					no_file:'修改视频',

					btn_choose:'Choose',

					btn_change:'Change',

					droppable:false,

					onchange:null,

					thumbnail:false //| true | large

					//whitelist:'gif|png|jpg|jpeg'

					//blacklist:'exe|php'

					//onchange:''

					//

				});

			});

		</script>
</body>

</html>

