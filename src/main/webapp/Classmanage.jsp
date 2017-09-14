<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
	<style type="text/css">
		*{padding: 0px;margin: 0px;}
		ul,li{list-style: none;}
		.container{
			width:76%;
			height: 400px;
			left:6%;
			background: #fff;
			border-radius: 4px;	
			position: absolute;
			top: 50%;
			
		}
		a{
		   
		}
		.container ul{
		   overflow:auto;
		}
		.container ul li:not(:last-child) a{  
		    display:none;
		    text-decoration:none;
		    float:right;
		}
		.container .data-list li:not(:last-child):hover  a{  
		 
		    display:inline-block;
		}
		.container ul.data-list{width: 40%;height: 100%;border: 1px solid #e5e5e5;float: left;}
		.container ul.data-list li{line-height: 32px;padding: 0px 10px;}
		.container ul.data-list li:not(:last-child):hover{ background-color: #C5EFFF; color: #252525; cursor: pointer; font-weight: bold; }
		.container ul.data-list li:not(:last-child).selected{ background-color: #0095E8; color: #fff; }
		.button-box{float: left;width: 14%;height: 50%;margin-top: 20%;}
		.button-box button{
			background: none;
			font-size: 16px;
			border: 1px solid #818181;
			color: #359bf5;height: 36px;
			line-height: 36px;width: 80%;
			margin-top: 10px;
			margin-left:25px;
			display: block;
			cursor: pointer;
		}
	</style>
	<link rel="stylesheet" href="resources/css/common.css"/>
	<head>

		<meta charset="utf-8" />

		<title>分类管理</title>

		 

		<meta name="viewport" content="width=device-width, initial-scale=1.0" />



		<!-- basic styles -->



		<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet" />

	<link rel="stylesheet" type="text/css" href="resources/font-awesome/css/font-awesome.css">



		<!--[if IE 7]>

		  <link rel="stylesheet" href="resources/assets/css/font-awesome-ie7.min.css" />

		<![endif]-->



		<!-- page specific plugin styles -->



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

								<img class="nav-user-photo" src="${message1.pic==null||message1.pic==''?'resources/images/default.png':message1.pic}"alt="Jason's Photo" />

								<span class="user-info">

									<small>欢迎，</small>

													${message1.nickname }

								</span>



								<i class="icon-caret-down"></i>

							</a>



							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">

<!-- 								<li>

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

                          <li class="active">
							<a href="Classmanage.jsp" >

								<i class="icon-folder-open"></i>

								<span class="menu-text"> 分类管理</span>

							</a>

						</li>
						
						
                   <li >

							<a href="exam.jsp" >

								<i class="icon-leaf"></i>

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





							<li class="active">分类管理</li>

						</ul><!-- .breadcrumb -->





					</div>



					<div class="page-content">

						<div class="page-header">

							<h1>

								分类管理



							</h1>

						</div><!-- /.page-header -->

      		<div id="dialogBg"></div>
		<div id="dialog2" class="animated" style="display:none">
	
			<div class="dialogTop">
			<center><span>添加一级分类</span></center>
				<a href="javascript:;" class="claseDialogBtn">关闭</a>
			</div><div style="margin-top:5px">
					<center ><input type="text" id="classn" name="Classname"  style="width:200px"/></center></div>
					<div style="margin-bottom:5px">
					<center ><input type="button"  value="添加"  class="submitBtn"  onclick="addfdir();"></center>
					</div>
		</div>

						<div class="row">

							<div class="col-xs-12">

								<!-- PAGE CONTENT BEGINS -->


								<div class="row">
						
		<div id="dialog" class="animated" style="display:none">
	
			<div class="dialogTop">
			<center><span id="secdir">添加二级分类</span></center>
				<a href="javascript:;" class="claseDialogBtn">关闭</a>
			</div><div style="margin-top:5px">
					<center ><input type="text" id="classn2" name="Classname"  style="width:200px"/></center></div>
					<div style="margin-bottom:5px">
					<center ><input type="button"  value="添加"  class="submitBtn"  onclick="addsdir();"></center>
					</div>
		</div>		
								 <div class="container">
		
		<ul class="data-list" id="lList">
			
		</ul>
		
		<div class="button-box">
			<!-- <button type="button" name="button" id="add">添 加</button>
			<button type="button" name="button" id="remove">删 除</button>
			<button type="button" name="button" id="add">添 加</button>
			<button type="button" name="button" id="remove">删 除</button> -->
		</div>
		<ul class="data-list" id="rList">

		</ul>
		
	</div>
								</div>



								<script type="text/javascript">

									var $assets = "assets";//this will be used in fuelux.tree-sampledata.js

								</script>



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



		<script src="resources/assets/js/fuelux/data/fuelux.tree-sampledata.js"></script>

		<script src="resources/assets/js/fuelux/fuelux.tree.min.js"></script>



		<!-- ace scripts -->



		<script src="resources/assets/js/ace-elements.min.js"></script>

		<script src="resources/assets/js/ace.min.js"></script>



		<!-- inline scripts related to this page -->

<script type="text/javascript" src="resources/js/jquery-3.1.1.min.js"></script>  
<script type="text/javascript" src="resources/js/toastr.min.js"></script> 
<link href="resources/css/toastr.css" rel="stylesheet">

		<script type="text/javascript">

			jQuery(function($){

				toastr.options = {  
				        positionClass: "toast-center-center",  
				        "showDuration": "1000",//显示的动画时间
				        "hideDuration": "100",//消失的动画时间
				        "timeOut": "1000", //展现时间
				}
				var xxx;
	
});

		</script>

		<script type="text/javascript">

		function addfdir(){
			if($('#classn').val()=="") {
				toastr.error('请输入值');
				return ;
			}
			var items = $("#lList li");
			for(var i = 0;i<items.length;i++){
				if(items[i].id==$('#classn').val()){
					toastr.error('已存在');
					return ;
				}
			}
			 $.ajax({
					url: "Dir/addClass1",
					dataType:"text",
					type: "POST", 
					data:{
						classn:$('#classn').val()
					},
					success:function(data){
						$('#dialogBg').fadeOut(300,function(){
				     		$('#dialog2').addClass('bounceOutUp').fadeOut();
				     	});
						toastr.success('添加成功');
						$('#classn').val("");
						loadf();
						
					}
			 })
		}
		function addsdir(){
			if($('#classn2').val()=="") {
				toastr.error('请输入值');
				return ;
			}
			var items = $("#rList li");
			for(var i = 0;i<items.length-1;i++){
				if(items[i].id==$('#classn2').val()){
					toastr.error('已存在');
					return ;
				}
			}
			var items = $(".data-list li.selected");
			var x=items[0].getAttribute('name');
			
			 $.ajax({
					url: "Dir/addClass2",
					dataType:"text",
					type: "POST", 
					 contentType:"application/json",
	        		 data:JSON.stringify({
						classname:$('#classn2').val(),
						fdirid:x
					}),
					success:function(data){
						$('#dialogBg').fadeOut(300,function(){
				     		$('#dialog').addClass('bounceOutUp').fadeOut();
				     	});
						toastr.success('添加成功');
						$('#classn2').val("");
						loadsec(x);
					}
			 })
		}

		function itemsclick(){
			var items = $("#lList li");
			for(var i = 0;i<items.length;i++){
				items[i].className = "";
			}
			var classname = this.className;
		    this.className = "selected";
		    xxx=$(this).attr('name');
		    loadsec($(this).attr('name'));
		  
		}
		function itemsMove(){
			var items = $(".data-list li.selected");
			for(var i = 0;i<items.length;i++){
				if(this.id === "add"){
					rList.append(items[i]);
				}else{
					lList.append(items[i]);
				}
			}
		}
		
		function loadsec(x){
			
		    $.ajax({
				url: "Dir/findCourseClass2",
				dataType:"json",
				type: "POST", 
				conentType:"application/json",
				data:{
					id:x
				},
				success:function(data){
					$("#rList li").remove();
					var addHtml ="";
					$.each(data, function(n, json){
						addHtml +="<li id='"+json.classname+"'  name='"+json.id+"'>"+json.classname;
						addHtml +="<a class='red' href='javascript:;'  onclick='del2("+json.id+")'>";
							addHtml +="<i class='icon-remove bigger-125'></i>";
							addHtml +="</a></li>";
					});
					addHtml+="<li style='text-align:center' >";
					addHtml+="<button class='btn btn-white btn-block'>";
					addHtml +="<a class='gray' href='javascript:;'   style='text-decoration:none;' >";
					addHtml +="<i class='icon-plus bigger-140' ></i>";
					addHtml +="</a></button></li>";
					$("#rList").append(addHtml);
					var items = $("#rList li");

					items[items.length-1].onclick = function(){
				     	$('#dialogBg').fadeIn(100);
				     	
				    	$('#dialog').removeAttr('class').addClass('bounceInDown rollIn').fadeIn();
				    	$('#classn2').val("");
					}						
				}
			})
		}
		function loadf(){
			
			 $.ajax({
					url: "Dir/findCourseClass1",
					dataType:"json",
					type: "POST", 
					conentType:"application/json",
					success:function(data){
						$("#lList li").remove();
						var addHtml ="";
						$.each(data, function(n, json){
							addHtml +="<li id='"+json.classname+"'  name='"+json.id+"'>"+json.classname;
							addHtml +="<a class='red' href='javascript:;'  onclick='del("+json.id+")'>";
								addHtml +="<i class='icon-remove bigger-125'></i>";
								addHtml +="</a></li>";
						});
						addHtml+="<li style='text-align:center' >";
						addHtml+="<button class='btn btn-white btn-block'>";
						addHtml +="<a class='gray' href='javascript:;'   style='text-decoration:none;' >";
						addHtml +="<i class='icon-plus bigger-140' ></i>";
						addHtml +="</a></button></li>";
						$("#lList").append(addHtml);
						$("#rList").html("");
						var lList = $("#lList");
						var llList = document.getElementById("lList");
						var rList = $("#rList");
						var items = $("#lList li");
						for(var i = 0;i<items.length-1;i++){
							items[i].onclick = itemsclick;
							
						}
						items[items.length-1].onclick = function(){
					     	$('#dialogBg').fadeIn(100);
					    	$('#dialog2').removeAttr('class').addClass('bounceInDown rollIn').fadeIn();
					    	$('#classn').val("");
						}
					}
				})
		}
		
		function del(x){
			 $.ajax({
					url: "Dir/delClass1",
					dataType:"text",
					type: "POST", 
	        		 data:{
						id:x
					},
					success:function(data){
						toastr.success('删除成功');
						loadf();
					}
			 })
		}
		function del2(x){
			 $.ajax({
					url: "Dir/delClass2",
					dataType:"text",
					type: "POST", 
	        		 data:{
						id:x
					},
					success:function(data){
						toastr.success('删除成功');
					
						loadsec(xxx);
					}
			 })
		}
		$(function(){
			loadf();
					     //关闭弹窗
		     $(' .claseDialogBtn').click(function(){
		     	$('#dialogBg').fadeOut(300,function(){
		     		$('#dialog2').addClass('bounceOutUp').fadeOut();
		     		$('#dialog').addClass('bounceOutUp').fadeOut();
		     	});
		     });
			 

			$("#add").on("click",itemsMove);
			$("#remove").on("click",itemsMove);
			
			
		});
		
	</script>

</body>

</html>

