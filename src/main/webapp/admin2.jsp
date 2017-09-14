<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta charset="utf-8" />

<title>管理员模块</title>
<meta name="viewport" content="width=device-width, iniial-scale=1.0" />


		<link href="/studyonline/resources/assets/css/bootstrap.min.css" rel="stylesheet" />

		<link rel="stylesheet" type="text/css" href="/studyonline/resources/font-awesome/css/font-awesome.css">
		
		<link rel="stylesheet" href="/studyonline/resources/assets/css/jquery-ui-1.10.3.custom.min.css" />
		
		<link rel="stylesheet" href="/studyonline/resources/assets/css/chosen.css" />

		<link rel="stylesheet" href="/studyonline/resources/assets/css/datepicker.css" />

		<link rel="stylesheet" href="/studyonline/resources/assets/css/ace.min.css" />

		<link rel="stylesheet" href="/studyonline/resources/assets/css/ace-rtl.min.css" />

		<link rel="stylesheet" href="/studyonline/resources/assets/css/ace-skins.min.css" />
		
		<link rel="stylesheet" href="/studyonline/resources/css/popup.css" />

		<script src="/studyonline/resources/assets/js/ace-extra.min.js"></script>

</head>



<body>

	<div class="navbar navbar-default" id="navbar">


		<div class="navbar-container" id="navbar-container">
			<script type="text/javascript">

				try{ace.settings.check('navbar' , 'fixed')}catch(e){}

			</script>

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

				try{ace.settings.check('main-container' , 'fixed')}catch(e){}

			</script>



		<div class="main-container-inner">

			<a class="menu-toggler" id="menu-toggler" href="#"> <span
				class="menu-text"></span>

			</a>



			<div class="sidebar" id="sidebar">

				<script type="text/javascript">

						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}

					</script>






				<ul id="nav" class="nav nav-list">

					<li><a href="admin.jsp"> <i class="icon-group"></i>

							<span class="menu-text"> 学生账户管理 </span>

					</a></li>
					<li class="active"><a href="admin2.jsp"> <i class="icon-user"></i> <span
							class="menu-text"> 教师账户管理 </span>

					</a></li>
					<li><a href="admin3.jsp"> <i class="icon-film"></i> <span
							class="menu-text"> 视频资源管理 </span>

					</a></li>
					<li><a href="admin4.jsp"> <i class="icon-comments"></i> <span
							class="menu-text"> 留言信息管理 </span>

					</a></li>

				</ul>
				<!-- /.nav-list -->



				<div class="sidebar-collapse" id="sidebar-collapse">

					<i class="icon-double-angle-left"
						data-icon1="icon-double-angle-left"
						data-icon2="icon-double-angle-right"></i>

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



					<ul class="breadcrumb" style="margin-top: 8px;">
						<li>学生账户列表</li>
					</ul>

				</div>



				<div class="page-content">

					<div class="row box" style="display: block;">
						<div class="col-xs-12" style="margin-top: 10px;">
							
							<div class="table-responsive">

								<table id="sample-table-2"
									class="table table-striped table-bordered table-hover">

									<thead>

										<tr>

											<th class="center"><label> <input
													type="checkbox" class="ace" /> <span class="lbl"></span>

											</label></th>

											<th>用户名</th>

											<th>密码</th>
											<th>昵称</th>
											<th>个人简介</th>
											<th>头像图片</th>
											<th>职称</th>
											<th>身份证</th>
											<th>性别</th>
											<th>电话</th>
											<th>生日</th>
											<th></th>

										</tr>

									</thead>



									<tbody id="userList">
									</tbody>

								</table>

							</div>
							<div class="row" style="margin: 0px; margin-top: 10px;">
								<button class="btn addUser">新增账户</button>
								<button class="btn btn-primary" id="delSelect">删除选中</button>
								<button class="btn btn-info addUserByFile">从文件导入</button>
								<a href="http://localhost:8080/studyonline/DownLoad/downloadDataModel/teacher"><button class="btn btn-success">下载数据模板</button></a>
							</div>
						</div>

					

					</div>

					<div class="row box" style="display: none;">B</div>

					<div class="row box" style="display: none;">C</div>

					<div class="row box" style="display: none;">D</div>
	
				</div>
				<!-- /.page-content -->
				<div id="popup" class="popup">
					<div class="title">
						<span class="icon-remove"></span>
					</div>
					<div class="cont">
						<form id="form-modifyTea">
						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2">
								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-username">用户名 </label>
									<div class="col-sm-9">
										<input readonly="" type="text" class="col-xs-10 col-sm-11"
										  name="username1" id="form-username" value="username">
									</div>

								</div>

							</div>


						</div>

						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2">
								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-password">密码</label>



									<div class="col-sm-9">

										<input type="text" name="password1" id="form-password" placeholder=""
											class="col-xs-10 col-sm-11">

									</div>

								</div>

							</div>

						</div>

						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2">
								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-userinfo">个人简介</label>



									<div class="col-sm-9">

										<div class="col-xs-10 col-sm-11" style="padding: 0px;">
											<textarea class="form-control" name="userinfo1" id="form-userinfo"
												placeholder=""col="5"></textarea>
										</div>
									</div>

								</div>

							</div>

						</div>

						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2">
								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-nickname"> 昵称 </label>



									<div class="col-sm-9">

										<input type="text" name="nickname1" id="form-nickname" placeholder=""
											class="col-xs-10 col-sm-11">

									</div>

								</div>

							</div>

						</div>
						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2">
								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-dept"> 部门 </label>



									<div class="col-sm-9">

										<input type="text" name="title1"  id="form-dept" placeholder=""
											class="col-xs-10 col-sm-11">

									</div>

								</div>

							</div>

						</div>
						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2">
								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-cardnum"> 身份证 </label>



									<div class="col-sm-9">

										<input type="text" name="cardnum1"  id="form-cardnum" placeholder=""
											class="col-xs-10 col-sm-11">

									</div>

								</div>

							</div>

						</div>

						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2">
								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-sex"> 性别 </label>



									<div class="col-sm-9">

												<div class="radio" style="float:left; padding:0px; margin:0px;">

													<label>

														<input name="sex1" type="radio" class="ace" checked="checked"  value="男"/>

														<span class="lbl"> 男</span>

													</label>

												</div>



												<div class="radio" style="float:left; padding:0px; margin:0px 5px;;">

													<label>

														<input name="sex1" type="radio" class="ace" value="女" />

														<span class="lbl"> 女</span>

													</label>

												</div>

									</div>

								</div>

							</div>

						</div>

						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2">
								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-phone"> 电话 </label>



									<div class="col-sm-9">

										<input type="text" name="phone1" id="form-phone" placeholder=""
											class="col-xs-10 col-sm-11">

									</div>

								</div>

							</div>

						</div>

						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2">
								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-pic"> 头像资源 </label>



									<div class="col-sm-9">
										<div class="col-xs-10 col-sm-11" style="padding: 0px;">
											<input type="file" name="file1"  id="form-file-input1"  class="file-input"/>
										</div>
									</div>

								</div>

							</div>

						</div>



						<div class="row" style="padding-top: 15px;">

							<div class="col-sm-12 col-md-8 col-md-offset-2">

								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-pic"> 生日日期 </label>

									<div class="col-sm-9">
										<div class="col-xs-10 col-sm-11" style="padding: 0px;">
											<div class="input-group">

												<input class="form-control date-picker"
													name="date1"  id="id-date-picker-1" type="text"
													data-date-format="yyyy-mm-dd" /> <span
													class="input-group-addon"> <i
													class="icon-calendar bigger-110"></i>

												</span>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						</form>
						<div class="center" style="padding-top: 35px;">
							<button id="submit1" class="btn btn-primary" style="margin-right: 80px;">Submit</button>
							<button id="reset1" class="btn btn-grey">Reset</button>
						</div>
					</div>
				</div>
				<div id="popup2" class="popup">
					<div class="title">
						<span class="icon-remove"></span>
					</div>
					<div class="cont">
					<form id="form-addTea">
						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2">
								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-username2">用户名</label>



									<div class="col-sm-9">

										<input type="text" name="username2" id="form-username2" placeholder=""
											class="col-xs-10 col-sm-11">

									</div>

								</div>

							</div>

						</div>

						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2">
								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-password2">密码</label>



									<div class="col-sm-9">

										<input type="text" name="password2"  id="form-password2" placeholder=""
											class="col-xs-10 col-sm-11">

									</div>

								</div>

							</div>

						</div>

						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2">
								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-userinfo2">个人简介</label>



									<div class="col-sm-9">

										<div class="col-xs-10 col-sm-11" style="padding: 0px;">
											<textarea class="form-control" name="userinfo2"  id="form-userinfo2"
												placeholder=""></textarea>
										</div>
									</div>

								</div>

							</div>

						</div>

						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2">
								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-nickname2"> 昵称 </label>



									<div class="col-sm-9">

										<input type="text" name="nickname2"  id="form-nickname2" placeholder=""
											class="col-xs-10 col-sm-11">

									</div>

								</div>

							</div>

						</div>
						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2">
								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-dept2"> 部门 </label>



									<div class="col-sm-9">

										<input type="text" name="title2"  id="form-dept2" placeholder=""
											class="col-xs-10 col-sm-11">

									</div>

								</div>

							</div>

						</div>
						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2">
								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-cardnum2"> 身份证 </label>



									<div class="col-sm-9">

										<input type="text"  name="cardnum2" id="form-cardnum2" placeholder=""
											class="col-xs-10 col-sm-11">

									</div>

								</div>

							</div>

						</div>

						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2">
								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-sex2"> 性别 </label>



									<div class="col-sm-9">

												<div class="radio" style="float:left; padding:0px; margin:0px;">

													<label>

														<input name="sex2" type="radio" class="ace" checked="checked"  value="男"/>

														<span class="lbl"> 男</span>

													</label>

												</div>



												<div class="radio" style="float:left; padding:0px; margin:0px 5px;;">

													<label>

														<input name="sex2" type="radio" class="ace" value="女" />

														<span class="lbl"> 女</span>

													</label>

												</div>

									</div>

								</div>

							</div>

						</div>

						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2">
								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-phone2"> 电话 </label>



									<div class="col-sm-9">

										<input type="text"  name="phone2" id="form-phone2" placeholder=""
											class="col-xs-10 col-sm-11">

									</div>

								</div>

							</div>

						</div>

						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2">
								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-pic2"> 头像资源 </label>



									<div class="col-sm-9">
										<div class="col-xs-10 col-sm-11" style="padding: 0px;">
											<input type="file" name="file2"  id="form-file-input2" class="file-input" />
										</div>
									</div>

								</div>

							</div>

						</div>



						<div class="row" style="padding-top: 15px;">

							<div class="col-sm-12 col-md-8 col-md-offset-2">

								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"
										for="form-pic"> 生日日期 </label>

									<div class="col-sm-9">
										<div class="col-xs-10 col-sm-11" style="padding: 0px;">
											<div class="input-group">

												<input class="form-control date-picker"
													 name="date2" id="id-date-picker-2" type="text"
													data-date-format="yyyy-mm-dd" /> <span
													class="input-group-addon"> <i
													class="icon-calendar bigger-110"></i>

												</span>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						</form>
						<div class="center" style="padding-top: 35px;">
							<button id="submit2" class="btn btn-primary" style="margin-right: 80px;">Submit</button>
							<button id="reset2" class="btn btn-grey">Reset</button>
						</div>
					</div>
				</div>
				<div id="popup3" class="popup">
					<div class="title">
						<span class="icon-remove"></span>
					</div>
					<div class="cont" style="height:200px">
						<div class="row" style="padding-top: 15px;">
							<div class="col-sm-12 col-md-8 col-md-offset-2">
								<div class="form-group">

									<label class="col-sm-3 control-label no-padding-right"> 资料位置 </label>



									<div class="col-sm-9">
										<div class="col-xs-10 col-sm-11" style="padding: 0px;">
											<form id="file-input3" >
											<input type="file" name="file3"  id="form-file-input3"  class="file-input" />
											</form>
										</div>
									</div>

								</div>

							</div>

						</div>
						
						<div class="center" style="padding-top: 35px;">
							<button id="submit3" class="btn btn-primary" style="margin-right: 80px;">Submit</button>
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

<script src='/studyonline/resources/assets/js/jquery-2.0.3.min.js'></script>
<script src='/studyonline/resources/assets/js/jquery.mobile.custom.min.js'></script>
<script src="/studyonline/resources/js/bootstrap.min.js"></script>
<script src="/studyonline/resources/assets/js/typeahead-bs2.min.js"></script>
<script src="/studyonline/resources/assets/js/jquery.dataTables.min.js"></script>
<script src="/studyonline/resources/assets/js/jquery.dataTables.bootstrap.js"></script>
<script src="/studyonline/resources/assets/js/date-time/bootstrap-datepicker.min.js"></script>
<script src="/studyonline/resources/assets/js/ace-elements.min.js"></script>
<script src="/studyonline/resources/assets/js/ace.min.js"></script>
<script src="/studyonline/resources/js/jquery-form.js"></script>
<script type="text/javascript" src="/studyonline/resources/js/toastr.min.js"></script> 
<link href="/studyonline/resources/css/toastr.css" rel="stylesheet">

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



	<script type="text/javascript">
		jQuery(function($) {
			
			
			$('.file-input').ace_file_input({

				no_file:'No File ...',

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
			
			$('.date-picker').datepicker({
				autoclose : true
			}).next().on(ace.click_event, function() {

				$(this).prev().focus();

			});
			


		});
	</script>


	<script>
		$(function() {
			$("[data-toggle='tooltip']").tooltip();
		});
	</script>

	<script>
			$(function() {
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

				
				
				function getDateTime(date) {
				    var year = date.getFullYear();
				    var month = date.getMonth() + 1;
				    var day = date.getDate();
				    var hh = date.getHours();
				    var mm = date.getMinutes();
				    return year + "-" + month + "-" + day;
				}
				//调用的是这个方法
				function ConvertJSONDateToJSDate(jsondate) {
				    var date = new Date(parseInt(jsondate, 10));
				    return date;
				}
				//alert(getDateTime(ConvertJSONDateToJSDate(1491283150000)));
				
				
				
				//加载学生账户数据
				$.ajax({
					type:"get",
					url: basePath+"/userManger/findAllTeacher",
					dataType:"json",
					contentType:"application/json",
					success:function(data){
						var addHtml ="";
						$.each(data, function(n, json){
							addHtml +='<tr><td class="center"><label><input type="checkbox" class="ace" /><span class="lbl"></span></label></td>'
							+'<td>'+json.teaname+'</td><td>'+json.password+'</td><td>'+json.nickname+'</td><td>'+json.userinfo+'</td><td>'+json.pic+'</td>'
							+'<td>'+json.title+'</td><td>'+json.cardnum+'</td><td>'+json.sex+'</td><td>'+json.phone+'</td><td ">'
							+getDateTime(ConvertJSONDateToJSDate(json.birthday))+'</td><td><div class="visible-md visible-lg hidden-sm hidden-xs btn-group">'
							+'<button class="btn btn-xs btn-info popupBtn">'
							+'<i class="icon-edit bigger-120"></i></button><button class="btn btn-xs btn-danger delUser"><i class="icon-trash bigger-120"></i>'
							+'</button></div></td></tr>'
						});

						$("#userList").html(addHtml);
						
						var modifyBtnList = $(".popupBtn");
						var delBtnList = $(".delUser");
			
						modifyBtnList.each(function(){
							$(this).on('click', function(){
								var index =modifyBtnList.index($(this));
								//alert(index);
								modifyMsgTran(data[index]);
							})
						})
						
						delBtnList.each(function(){
							$(this).on("click",function(){
								var index = delBtnList.index($(this));
								delUser(data[index].teaname);
  								$(this).parent().parent().parent().remove();
							})
						})

						$('#popup').popup({
							classname:".popupBtn",
							submit:"#submit1"
						});
						
						$('#popup2').popup({
							classname:".addUser",
							submit:"#submit2"
						});
						
						$("#popup3").popup({
							classname:".addUserByFile",
							submit:"#submit3"
						})
						
						tableWidget();
						
					}
				})
				
				function tableWidget(){
					var oTable1 = $('#sample-table-2').dataTable( {

						"aoColumns": [

					      { "bSortable": false },

					   		null,null,null,null,null,null,null,null,null,null,

						  { "bSortable": false }

						] } );

						

						

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
					
				}
				
			    //导航栏事件
/* 			    
                var navList = $("#nav").find("li");
                var boxList = $(".page-content").find(".box");
                navList.each(function () {
                    $(this).click(function () {
                        $(this).addClass("active").siblings().removeClass("active");
                        var index = navList.index($(this));

                        boxList.eq(index).css("display", "block").siblings().css("display", "none");
                        var str = $(this).text().trim();
         
                        $(".breadcrumb").find("li").text(str.substring(0,4)+"列表");
                    })
                })
 */
         //删除用户
		function delUser(username){

				$.ajax({
					type : "post",
					url : localhostPath + "/checkonline/manger/deluser",
					async : false,
					data : {
						id : username,
						identity : "teacher"
					},
					success : function(msg) {
					}
				});

				$.ajax({
					type : "post",
					url : basePath + "/userManger/delTeacher",
					dateType : "text",
					data : {
						teaname : username
					},
					success : function(msg) {
						if (msg == "success") {
							toastr.success("删除成功");
						} else {
							toastr.success("删除失败");
						}
					}
				})
			}

			//批量删除学生用户
			function delSelectUser() {
				var selectList = $("#userList	").find(
						"input[type='checkbox']:checked");
				var usernameArray = new Array();
				selectList
						.each(function() {
							var index = selectList.index($(this));
							var username = $(this).parent().parent()
									.siblings(1).html();
							usernameArray[index] = username;
						});

				$.ajax({
					type : "post",
					url : basePath + "/userManger/delSelectTeacher",
					dataType : "text",
					data : {

						userList : usernameArray
					},
					success : function(msg) {
						selectList.each(function() {
							$(this).parent().parent().parent().remove();
						})
						toa.success("成功删除已选项");
					}
				})

			}

			//增加学生用户
			function addUser() {
				
				var Username = $("#form-username2").val();
				var Password = $("#form-password2").val();
				var Userinfo = $("#form-userinfo2").val();
				var Nickname = $("#form-nickname2").val();
				var Dept = $("#form-dept2").val();
				var Cardnum = $("#form-cardnum2").val();
				var Sex = $("input[name='sex2']:checked").val();
				var Phone = $("#form-phone2").val();
				$.ajax({
					type : "post",
					url : localhostPath + "/checkonline/manger/addtea",
					contentType : "application/json",
					data : JSON.stringify({
						id : Username,
						pwd : Password,
						sex : Sex,
						cardnum : Cardnum,
						name : Nickname,
						title : Dept,
						phone : Phone,
						url : "teacher"
					}),
					succsee : function(msg) {
						toastr.success(msg);
					}
				})
				
				$("#form-addTea").ajaxSubmit({
					type : "post",
					url : basePath + "/userManger/addTeacher",
					dataType : "text",
					success : function(msg) {
						//toastr.success("新增成功");
						window.location.reload();
					}
				})

			}

			//通过文件导入用户

			function addUserByFile() {
				// var form = new FormData($("#file-input3")[0]);

				$("#file-input3").ajaxSubmit({
					type : "post",
					url : basePath + "/userManger/addTeacherByFile",
					dataType : "text",
					success : function(msg) {
						window.location.reload();
					}
				})

			}

			//学生账户修改ajax

			function modifyTea() {
				
				var Username = $("#form-username").val();
				var Password = $("#form-password").val();
				var Userinfo = $("#form-userinfo").val();
				var Nickname = $("#form-nickname").val();
				var Dept = $("#form-dept").val();
				var Cardnum = $("#form-cardnum").val();
				var Sex = $("input[name='sex1']:checked").val();
				var Phone = $("#form-phone").val();
				$.ajax({
					type : "post",
					url : localhostPath + "/checkonline/manger/setuser",
					contentType : "application/json",
					data : JSON.stringify({
						id : Username,
						pwd : Password,
						sex : Sex,
						cardnum : Cardnum,
						name : Nickname,
						title : Dept,
						phone : Phone,
						url : "teacher"
					}),
					succsee : function(msg) {
						toastr.success(msg);
					}
				});
				
				$("#form-modifyTea").ajaxSubmit({
					type : "post",
					url : basePath + "/userManger/modifyTeacher",
					dataType : "text",
					success : function(msg) {
						window.location.reload();
					}
				})

			}

			//修改模块信息传递

			function modifyMsgTran(data) {
				$("#form-username").val(data.teaname);
				$("#form-password").val(data.password);
				$("#form-userinfo").val(data.userinfo);
				$("#form-nickname").val(data.nickname);
				$("#form-dept").val(data.title);
				$("#form-cardnum").val(data.cardnum);
				$("#form-sex").val(data.sex);
				$("#form-phone").val(data.phone);
				//$("#form-file-input1").val("111");
				$("#id-date-picker-1").val(
						getDateTime(ConvertJSONDateToJSDate(data.birthday)));

			}
			//修改提交事件
			$("#submit1").on('click', function() {
				modifyTea();
			})
			$("#submit2").on('click', function() {
				addUser();
			})

			$("#delSelect").on('click', function() {
				delSelectUser();
			})
			$("#submit3").on('click', function() {
				addUserByFile();
			})
		})
	</script>
	
	<script src="/studyonline/resources/js/popup.js"></script>

</body>

</html>
