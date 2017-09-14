<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<style>

.tree-folder-header span{
   background:white;
   border: none; 
}

.tree-folder-header span:hover{ 
   border: none; 
}

.tree-folder-name input{
   width:60%;
}


</style>
	<head>

		<meta charset="utf-8" />

		<title>课程上传</title>

		 

		<meta name="viewport" content="width=device-width, initial-scale=1.0" />



		<!-- basic styles -->


        <link rel="stylesheet" href="resources/css/common.css"/>
		<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet" />

		<link rel="stylesheet" type="text/css" href="resources/font-awesome/css/font-awesome.css">



		<!--[if IE 7]>

		  <link rel="stylesheet" href="resources/assets/css/font-awesome-ie7.min.css" />

		<![endif]-->



		<!-- page specific plugin styles -->



		<link rel="stylesheet" href="resources/assets/css/select2.css" />



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

<script type="text/javascript" src="resources/js/jquery-3.1.1.min.js"></script>  

<script type="text/javascript" src="resources/js/toastr.min.js"></script> 
<link href="resources/css/toastr.css" rel="stylesheet">
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
<div class="navbar navbar-default" id="navbar">

			<script type="text/javascript">

				try{ace.settings.check('navbar' , 'fixed')}catch(e){}

			</script>



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
						<li >

							<a href="Coursemanage.jsp">

								<i class="icon-credit-card"></i>

								<span class="menu-text"> 课程管理 </span>

							</a>

						</li>



						<li class="active">

							<a href="Courseupload.jsp">

								<i class="icon-cloud-upload"></i>

								<span class="menu-text"> 课程上传 </span>

							</a>

						</li>

                           <li>
							<a href="Classmanage.jsp" >

								<i class="icon-folder-open"></i>

								<span class="menu-text"> 分类管理</span>

							</a>
                  
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



						<ul class="breadcrumb">

							<li>

								<i class="icon-home home-icon"></i>

								<a href="#">Home</a>

							</li>



	

							<li class="active">课程上传</li>

						</ul><!-- .breadcrumb -->





					</div>



					



					<div class="page-content">

						<div class="page-header">

							<h1>

							课程上传



							</h1>

						</div><!-- /.page-header -->



						<div class="row">
									
							<div class="col-xs-12">
		<div id="dialog" class="animated" style="width:40%;" >
			
			<div class="dialogTop">
					<center><span>作业</span></center>
				<a href="javascript:;" class="claseDialogBtn">关闭</a>
			</div>
	                  


						<!-- 					<div class="widget-header widget-header-small  header-color-green">

												<div class="widget-toolbar">

													<a href="#" data-action="collapse">

														<i class="icon-chevron-up"></i>

													</a>

												</div>

											</div> -->
											
			
																<div class="form-group">

																	




																	<div class="col-xs-9" >

																		<select id="state4" name="state4" class="select2" data-placeholder="Click to Choose..." style="min-width:100%;margin-top:10px;">

																			<option value="null">&nbsp;</option>

																		</select>
																	</div>
							<div class="col-xs-3" >													
	<button class="btn btn-sm  btn-white"  type="button" onclick="sethomework();" style="margin-top:10px;">确定</button>
	</div>
																</div>

							<!-- 				<div class="widget-body">

												<div class="widget-main no-padding">

													<div class="wysiwyg-editor" id="editor2" ></div>

												</div> -->


<!-- 
												<div class="widget-toolbox padding-4 clearfix">

													<div class="btn-group pull-left">

														<button class="btn btn-sm btn-grey  cancel">

															<i class="icon-remove bigger-125"></i>

															取消

														</button>

													</div>



													<div class="btn-group pull-right">





														<button class="btn btn-sm btn-success"   onclick="sethomework();">

															<i class="icon-globe bigger-125"></i>



															确定

															<i class="icon-arrow-right icon-on-right bigger-125"></i>

														</button>

													</div>

												</div> -->

								

										</div>

		</div>
								<!-- PAGE CONTENT BEGINS -->



<!-- 								<h4 class="lighter">

									<i class="icon-hand-right icon-animated-hand-pointer blue"></i>

									<a href="#modal-wizard" data-toggle="modal" class="pink"> Wizard Inside a Modal Box </a>

								</h4>



								<div class="hr hr-18 hr-double dotted"></div> -->
<div id="dialogBg"></div>


								<div class="row-fluid">

									<div class="span12">

										<div class="widget-box">

											<div class="widget-header widget-header-blue widget-header-flat">

												<h4 class="lighter">上传课程</h4>



												<div class="widget-toolbar">

													<!-- <label>

														<small class="green">

															<b>Validation</b>

														</small>



														<input id="skip-validation" type="checkbox" class="ace ace-switch ace-switch-4" />

														<span class="lbl"></span>

													</label> -->

												</div>

											</div>



											<div class="widget-body">

												<div class="widget-main">

													<div id="fuelux-wizard" class="row-fluid" data-target="#step-container">

														<ul class="wizard-steps">

															<li data-target="#step1" class="active">

																<span class="step">1</span>

																<span class="title">课程信息</span>

															</li>



															<li data-target="#step2">

																<span class="step">2</span>

																<span class="title">课程内容</span>

															</li>
															
														 <li data-target="#step3" >

																<span class="step">3</span>

																<span class="title">课件</span>

															</li>



															<li data-target="#step4">

																<span class="step">4</span>

																<span class="title">完成</span>

															</li>

														</ul>

													</div>



													<hr />
<form action="${pageContext.request.contextPath }/upload/upload"  method="post"  enctype="multipart/form-data"  class="form-horizontal validation-form"    id="upload-form">
													<div class="step-content row-fluid position-relative" id="step-container">

														<div class="step-pane active" id="step1">
<h4 class="lighter block green">请填写以下信息</h4>
	
	<div class="hr hr-dotted"></div>
	<input type="hidden" name="teacherid"  value="${message1.teaname }">
	                                                           	<div class="form-group">

																	<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="coverfile"">课程封面</label>



																	<div class="col-xs-12 col-sm-9">
																	
																		<div class="clearfix" style="width:43%;height:160px;border:1px solid blue ">

																			 
																			   <a href="javascript:;"  onclick="changecover();"><img  id="ncover" style="height:100%;width:100%" src="resources/images/slide2.jpg"  title="课程封面"/></a>
				                                                             <input type="file"  id="cover"  name="cover"  onchange="javascript:setImagePreview();" accept="image/jpg,image/icon,image/png,image/jpeg," style="filter:alpha(opacity=0);opacity:0;width: 0;height: 0;"/> 
																			 <input type="text"  id="havecover"  name="coverfile"  style="filter:alpha(opacity=0);opacity:0;width: 0px;height:0px;"/> 

																		</div>

																	</div>

																</div>

																<div class="form-group">

																	<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="Coursename">课程名称</label>



																	<div class="col-xs-12 col-sm-9">

																		<div class="clearfix">

																			<input type="text" id="name2" name="Coursename" class="col-xs-12 col-sm-5" />

																		</div>

																	</div>

																</div>




																<div class="form-group">

																	<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="state">课程类别</label>



																	<div class="col-xs-6 col-sm-3"  >

																		<select id="state1" name="state1" class="select2" data-placeholder="Click to Choose..."  onchange="getsec();">

																			<option value="">&nbsp;</option>

																		</select>

																	</div>
																	<div class="col-xs-6 col-sm-1" style="margin-left:-50px;width:200px">

																		<select id="state" name="state" class="select2" data-placeholder="Click to Choose...">

																			<option value="">&nbsp;</option>

																		</select>

																	</div>

																</div>
																
																							<div class="form-group">

																	<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="Coursedif">课程难度</label>



																	<div class="col-xs-12 col-sm-9">

																		<div class="clearfix">

																			<select id="Coursedif" name="Coursedif" class="select2" data-placeholder="Click to Choose..."  >

																			<option value="初级">初级</option>
																			<option value="中级">中级</option>
																			<option value="高级">高级</option>

																		</select>

																		</div>

																	</div>

																</div>

																<div class="form-group">

																	<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="describe">课程介绍</label>



																	<div class="col-xs-12 col-sm-9">

																		<div class="clearfix">

																			<textarea class="autosize-transition form-control" name="describe" id="comment" style="overflow: hidden; word-wrap: break-word; resize: horizontal; height: 200px;width:70%"></textarea>

																		</div>

																	</div>

																</div>


									

														</div>
					



														<div class="step-pane" id="step2">

																					
<div id="courseform" class="tree tree-selectable">



</div>
<div id="hiddenform">

</div>

   <input  type="hidden"  id="edithomework"  value=""/> 
<button class="btn btn-sm btn-warning no-border" type="button" onclick="addnewchapter();">

<i class="icon-plus"></i>

<span class="bigger-110 no-text-shadow" >添加新章</span>

</button>


									

														</div>



												 <div class="step-pane" id="step3">

															<div class="center">
 <input multiple="" type="file" id="id-input-file-3"  name="refs"/> 
																<h3 class="green"></h3>

																

															</div>

														</div>
										

														<div class="step-pane" id="step4">

															<div class="center">

																<h3 class="green">完成</h3>

																请点击提交按钮进行课程上传

															</div>

														</div>
														

													</div>
</form>
													<div class="row-fluid wizard-actions">

														<button class="btn btn-prev"   type="button">

															<i class="icon-arrow-left"></i>

															上一步

														</button>



														<button class="btn btn-success btn-next"   data-last="提交 "  >

															下一步

															<i class="icon-arrow-right icon-on-right"></i>

														</button>

													</div>

												</div><!-- /widget-main -->

											</div><!-- /widget-body -->

										</div>

									</div>

								</div>




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



		<script src="resources/assets/js/fuelux/fuelux.wizard.min.js"></script>

		<script src="resources/assets/js/jquery.validate.js"></script>

		<script src="resources/assets/js/additional-methods.min.js"></script>

		<script src="resources/assets/js/bootbox.min.js"></script>

		<script src="resources/assets/js/jquery.maskedinput.min.js"></script>

		<script src="resources/assets/js/select2.min.js"></script>

         <script src="resources/assets/js/jquery.nestable1.min.js"></script>

		<!-- ace scripts -->



		<script src="resources/assets/js/ace-elements.min.js"></script>

		<script src="resources/assets/js/ace.min.js"></script>

		<script src="resources/assets/js/jquery.hotkeys.min.js"></script>

		<script src="resources/assets/js/bootstrap-wysiwyg.min.js"></script>

		<script src="resources/assets/js/bootbox.min.js"></script>

		<!-- inline scripts related to this page -->



		<script type="text/javascript">
		$(function(){
			toastr.options = {  
			        positionClass: "toast-center-center",  
			        "showDuration": "1900",//显示的动画时间
			        "hideDuration": "1500",//消失的动画时间
			        "timeOut": "1500", //展现时间
			}
			
			var wrongMsg = GetQueryString("Msg");
			if(wrongMsg!=null){
				toastr.success("上传成功");
			}
			
			function GetQueryString(name)
			{
			     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
			     var r = window.location.search.substr(1).match(reg);
			     if(r!=null)return  unescape(r[2]); return null;
			}
		});
		
		
		var index=0;
		var edithomework=0;
		    function addnewchapter(){

		     var folder=$('<div/>',{id:index,style:"display: block;","class":"tree-folder"});
		     var folderheader=$('<div/>',{"class":"tree-folder-header input-group"});
		     var foldername=$('<div/>',{"class":"tree-folder-name;"});
			 var foldernameinput=$('<input/>',{"class":"form-control",type:"text",placeholder:"章名称",name:"Chaptername",id:"ctn"+index});
			 var foldercontent=$('<div/>',{id:'ftc'+index,style:"display: block;","class":"tree-folder-content"});
			 var hiddenid=$('<input/>',{type:"hidden",name:"id",value:index});
             var div11=$('<div/>',{"class":"col-xs-8"}); 
             var div22=$('<div/>',{"class":"col-xs-4"}); 
			 			 var icon=$('<i/>',{"class":"icon-minus",name:'tfc'+index,click:function(){
			      var state=icon.attr('class');
				  if(state=='icon-minus'){
				      icon.attr('class','icon-plus');
				      foldercontent.css('display','none');
				  }else{
				      icon.attr('class','icon-minus');
				      foldercontent.css('display','block');
				  }
			  }});
		     var tspan=$('<span/>',{"class":"input-group-addon"});
                     var button1=$('<button/>',{"class":"icon-plus-sign purple  btn btn-white",type:"button",style:"border:0px;padding:2px;margin-left:-15px;margin-top:6px","data-rel":"tooltip",title:"","data-original-title":"添加节","data-placement":"left",click:function(){
                                //alert('addsec');
			 icon.attr('class','icon-minus');
			 foldercontent.css('display','block');
			 var itemnameinput=$('<input/>',{"class":"form-control",type:"text",placeholder:"小节名称",name:"Sectionname"+folder.attr('id'),style:"width:100%;height:100%"});
		
			 var item=$('<div/>',{style:"display: block;","class":"tree-item"});
                     var itemname=$('<div/>',{"class":"tree-item-name row"}); 
                     var div1=$('<div/>',{"class":"col-xs-4"}); 
                     var div2=$('<div/>',{"class":"col-xs-4"}); 
                     var div3=$('<div/>',{"class":"col-xs-4"}); 
                     var file=$('<input/>',{type:"file",accept:"video/mp4,video/avi",name:'file'+folder.attr('id'),change:function(){
					       		  var arr=file.val().split('\\');//注split可以用字符或字符串分割
					              var pos = arr[arr.length-1].lastIndexOf(".");
					              var lastname =arr[arr.length-1].substring(0,pos);
				                  itemnameinput.val(lastname);       
					 }     
					 }); 

           var homework=$('<input/>',{type:"text",name:"homework"+folder.attr('id'),value:'null',style:"display:none"});     
           homework.appendTo("#hiddenform");
           var button3=$('<button>',{"class":"icon-remove  btn btn-white tooltip-error",type:"button",style:"border:0px;padding:2px;margin-left:-15px;margin-top:7px","data-rel":"tooltip",title:"","data-original-title":"删除该节","data-placement":"left",click:function(){
                                item.remove();
                                homework.remove();
            }});
           var button4=$('<button>',{"class":"icon-book btn btn-white",type:"button",style:"border:0px;padding:2px;margin-left:7px;margin-top:8px","data-rel":"tooltip",title:"","data-original-title":"作业","data-placement":"right",click:function(){
                          $('#edithomework').val("homework"+folder.attr('id'));
                          edithomework=homework;
                          $('#dialogBg').fadeIn(300);
          		     	  $('#dialog').removeAttr('class').addClass('animated rollIn').fadeIn();
          		     	  $('#state4').val(homework.val());
          		     	 $('#s2id_state4 .select2-chosen').text($("#state4 option[value="+homework.val()+"]").text());
           }});
			foldercontent.append(item);
			item.append(itemname);
			itemname.append(div1);
			itemname.append(div2);
            itemname.append(div3);	
            div1.append(file);	
            div2.append(itemnameinput);
            div3.append(button3);
            div3.append(button4);
                     file.ace_file_input({

					no_file:'No File ...',

					btn_choose:'选择',

					btn_change:'修改',

					droppable:false,

					onchange:null,

					thumbnail:false //| true | large

					//whitelist:'mp4',

					//blacklist:'avi|php',

					//onchange:''

					//

		   });	
                     $('[data-rel=tooltip]').tooltip();
          }});
                     var button2=$('<button/>',{"class":"icon-remove btn btn-white tooltip-error",type:"button","data-rel":"tooltip",title:"","data-original-title":"删除该章","data-placement":"right",style:"margin-left:7px;border:0px;margin-top:6px;padding:2px;",click:function(){
								folder.remove();
								hiddenid.remove();
                     }});

			 tspan.append(icon);
                     
                     div11.append(foldernameinput);
                     div22.append(button1);
                     div22.append(button2);
                     foldername.append(div11);
                     foldername.append(div22);
                     folderheader.append(tspan);
                     folderheader.append(foldername);
                     folder.append(folderheader);
                     
                     folder.append(foldercontent);
                     folder.appendTo("#courseform");
					 hiddenid.appendTo("#hiddenform");
				/* 	 $('#'+"Sectionname"+folder.attr('id')).rules("add",{required:true}); */
				     index++;
				 	$('[data-rel="tooltip"]').tooltip();
			}
			jQuery(function($) {

			
			  index=1;
			  $('.tree-folder-header i').click(function(){
			      var state=$(this).attr('class');
				  var id=$(this).attr('name');
				  if(state=='icon-minus'){
				      $(this).attr('class','icon-plus');
					  
				      $('#'+id).css('display','none');
				  }else{
				      $(this).attr('class','icon-minus');
				       $('#'+id).css('display','block');
				  }
			  }
			  );
				$('[data-rel=tooltip]').tooltip();

			

				$(".select2").css('width','200px').select2({allowClear:true})

				.on('change', function(){

					$(this).closest('form').validate().element($(this));

				}); 

			

			

				var $validation = true;

				$('#fuelux-wizard').ace_wizard().on('change' , function(e, info){

					if(info.step == 1 && $validation) {

						if(!$('.validation-form').valid()) return false;

					}
					else if(info.step == 2 && $validation) {

						if(!$('.validation-form').valid()) return false;

					}

				}).on('finished', function(e) {
/* 					$('#upload-form').submit(); 这个没效果*/
					document.getElementById('upload-form').submit();
					bootbox.dialog({

						message: "Thank you! Your information was successfully saved!", 

						buttons: {

							"success" : {

								"label" : "OK",

								"className" : "btn-sm btn-primary"

							}

						}

					});

				}).on('stepclick', function(e){

					//return false;//prevent clicking on steps

				});
				//documentation : http://docs.jquery.com/Plugins/Validation/validate
				
				
				$('.validation-form').validate({

					errorElement: 'div',

					errorClass: 'help-block',

					focusInvalid: false,

					rules: {

						
						Coursename: {

							required: true

						},
						describe: {

							required: true

						},
						coverfile:{
							required: true
						},
						state: {

							required: true

						},

						platform: {

							required: true

						},

						subscription: {

							required: true

						},
						Chaptername:{
							required: true
						},

						gender: 'required',

						agree: 'required'

					},

			

					messages: {

						Coursename: {

							required: "请填写课程名称"

						},
						coverfile:{
							required: "请设置课程封面"
						},
						describe: {

							required: "请填写课程介绍"

						},
						state: {

							required: "请选择课程类别"

						},
						
						Chaptername:{
							required:"请填写该章名称"
						},
						subscription: "Please choose at least one option",

						gender: "Please choose gender",

						agree: "Please accept our policy"

					},

			

					invalidHandler: function (event, validator) { //display error alert on form submit   

						$('.alert-danger', $('.login-form')).show();

					},

			

					highlight: function (e) {

						$(e).closest('.form-group').removeClass('has-info').addClass('has-error');

					},

			

					success: function (e) {

						$(e).closest('.form-group').removeClass('has-error').addClass('has-info');

						$(e).remove();

					},

			

					errorPlacement: function (error, element) {

						if(element.is(':checkbox') || element.is(':radio')) {

							var controls = element.closest('div[class*="col-"]');

							if(controls.find(':checkbox,:radio').length > 1) controls.append(error);

							else error.insertAfter(element.nextAll('.lbl:eq(0)').eq(0));

						}

						else if(element.is('.select2')) {

							error.insertAfter(element.siblings('[class*="select2-container"]:eq(0)'));

						}

						else if(element.is('.chosen-select')) {

							error.insertAfter(element.siblings('[class*="chosen-container"]:eq(0)'));

						}

						else error.insertAfter(element.parent());

					},

			

					submitHandler: function (form) {

					},

					invalidHandler: function (form) {

					}

				});
				
				$('#modal-wizard .modal-header').ace_wizard();

				$('#modal-wizard .wizard-actions .btn[data-dismiss=modal]').removeAttr('disabled');

			})
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
	$.ajax({
		url: basePath+"/Dir/findCourseClass1",
		dataType:"json",
		type: "POST", 
		conentType:"application/json",
		success:function(data){
			$("#state1 option").remove();
			var addHtml ="<option value=''>&nbsp;</option>";
			$.each(data, function(n, json){
				addHtml +="<option value='"+json.classname+"'  name='"+json.id+"'>"+json.classname+"</option>";
			});
			$("#state1").append(addHtml);
		}
	})
	
	
	
		</script>

		<script type="text/javascript">
		function getsec(){
			$.ajax({
				url: basePath+"/Dir/findCourseClass2",
				dataType:"json",
				type: "POST", 
				conentType:"application/json",
				data:{
					id:$('#state1').find("option:checked").attr('name')
				},
				success:function(data){
					$("#state option").remove();
					var addHtml ="<option value=''>&nbsp;</option>";
					$.each(data, function(n, json){
						addHtml +="<option value='"+json.classname+"'  name='"+json.id+"'>"+json.classname+"</option>";
					});
					$("#state").append(addHtml);
					$("#state").val('');
				}
			})
		}
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
			else{
			//IE下，使用滤镜
					docObj.select();
					var imgSrc = document.selection.createRange().text;
				
					//图片异常的捕捉，防止用户修改后缀来伪造图片
					try{
					localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
					localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
					}
					catch(e){
					alert("您上传的图片格式不正确，请重新选择!");
					return false;
					}
					imgObjPreview.style.display = 'none';
					document.selection.empty();
			}
			$('#havecover').val('1');
			return true;
	  }
			jQuery(function($){
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


			
			});
			

			function sethomework(){
				 edithomework.val($('#state4').val());

				 $('#dialogBg').fadeOut(300,function(){
		     		$('#dialog').addClass('bounceOutUp').fadeOut(100);
		     	});
			}
		     $(' .claseDialogBtn,.cancel').click(function(){
			     	$('#dialogBg').fadeOut(300,function(){
			     		$('#dialog').addClass('bounceOutUp').fadeOut(100);
			     	});
			     });
			

		</script>

		<script type="text/javascript">

			jQuery(function($) {

			
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
			

			
				

				$( "#eq > span" ).css({width:'90%', 'float':'left', margin:'15px'}).each(function() {

					// read initial values from markup and remove that

					var value = parseInt( $( this ).text(), 10 );

					$( this ).empty().slider({

						value: value,

						range: "min",

						animate: true

						

					});

				});

			

				

		

				

				$('#id-input-file-3').ace_file_input({

					style:'well',

					btn_choose:'如有课件可拖拉至此或点击上传',

					btn_change:null,

					no_icon:'icon-cloud-upload',

					droppable:true,

					thumbnail:'small'//large | fit

					//,icon_remove:null//set null, to hide remove/reset button

					/**,before_change:function(files, dropped) {

						//Check an example below

						//or examples/file-upload.html

						return true;

					}*/

					/**,before_remove : function() {

						return true;

					}*/

					,

					preview_error : function(filename, error_code) {

						//name of the file that failed

						//error_code values

						//1 = 'FILE_LOAD_FAILED',

						//2 = 'IMAGE_LOAD_FAILED',

						//3 = 'THUMBNAIL_FAILED'

						//alert(error_code);

					}

			

				}).on('change', function(){

					//console.log($(this).data('ace_input_files'));

					//console.log($(this).data('ace_input_method'));

				});

				

			

				//dynamically change allowed formats by changing before_change callback function

				$('#id-file-format').removeAttr('checked').on('change', function() {

					var before_change

					var btn_choose

					var no_icon

					if(this.checked) {

						btn_choose = "Drop images here or click to choose";

						no_icon = "icon-picture";

						before_change = function(files, dropped) {

							var allowed_files = [];

							for(var i = 0 ; i < files.length; i++) {

								var file = files[i];

								if(typeof file === "string") {

									//IE8 and browsers that don't support File Object

									if(! (/\.(jpe?g|png|gif|bmp)$/i).test(file) ) return false;

								}

								else {

									var type = $.trim(file.type);

									if( ( type.length > 0 && ! (/^image\/(jpe?g|png|gif|bmp)$/i).test(type) )

											|| ( type.length == 0 && ! (/\.(jpe?g|png|gif|bmp)$/i).test(file.name) )//for android's default browser which gives an empty string for file.type

										) continue;//not an image so don't keep this file

								}

								

								allowed_files.push(file);

							}

							if(allowed_files.length == 0) return false;

			

							return allowed_files;

						}

					}

					else {

						btn_choose = "Drop files here or click to choose";

						no_icon = "icon-cloud-upload";

						before_change = function(files, dropped) {

							return files;

						}

					}

					var file_input = $('#id-input-file-3');

					file_input.ace_file_input('update_settings', {'before_change':before_change, 'btn_choose': btn_choose, 'no_icon':no_icon})

					file_input.ace_file_input('reset_input');

				});

			

			

			

			

				$('#spinner1').ace_spinner({value:0,min:0,max:200,step:10, btn_up_class:'btn-info' , btn_down_class:'btn-info'})

				.on('change', function(){

					//alert(this.value)

				});

				$('#spinner2').ace_spinner({value:0,min:0,max:10000,step:100, touch_spinner: true, icon_up:'icon-caret-up', icon_down:'icon-caret-down'});

				$('#spinner3').ace_spinner({value:0,min:-100,max:100,step:10, on_sides: true, icon_up:'icon-plus smaller-75', icon_down:'icon-minus smaller-75', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});

			

			

				



		

				


				

				$('#colorpicker1').colorpicker();

				$('#simple-colorpicker-1').ace_colorpicker();

			

				

				$(".knob").knob();

				

				

				//we could just set the data-provide="tag" of the element inside HTML, but IE8 fails!

				var tag_input = $('#form-field-tags');

				if(! ( /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase())) ) 

				{

					tag_input.tag(

					  {

						placeholder:tag_input.attr('placeholder'),

						//enable typeahead by specifying the source array

						source: ace.variable_US_STATES,//defined in ace.js >> ace.enable_search_ahead

					  }

					);

				}

				else {

					//display a textarea for old IE, because it doesn't support this plugin or another one I tried!

					tag_input.after('<textarea id="'+tag_input.attr('id')+'" name="'+tag_input.attr('name')+'" rows="3">'+tag_input.val()+'</textarea>').remove();

					//$('#form-field-tags').autosize({append: "\n"});

				}

				

				

				

			

				/////////

				$('#modal-form input[type=file]').ace_file_input({

					style:'well',

					btn_choose:'Drop files here or click to choose',

					btn_change:null,

					no_icon:'icon-cloud-upload',

					droppable:true,

					thumbnail:'large'

				})

				

				//chosen plugin inside a modal will have a zero width because the select element is originally hidden

				//and its width cannot be determined.

				//so we set the width after modal is show

				$('#modal-form').on('shown.bs.modal', function () {

					$(this).find('.chosen-container').each(function(){

						$(this).find('a:first-child').css('width' , '210px');

						$(this).find('.chosen-drop').css('width' , '210px');

						$(this).find('.chosen-search input').css('width' , '200px');

					});

				})

				/**

				//or you can activate the chosen plugin after modal is shown

				//this way select element becomes visible with dimensions and chosen works as expected

				$('#modal-form').on('shown', function () {

					$(this).find('.modal-chosen').chosen();

				})

				*/

			

			});
			
			
		</script>			
<script type="text/javascript">

</script>
</body>

</html>

