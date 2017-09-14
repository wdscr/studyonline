<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta charset="utf-8" />

<title>管理员模块</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />


		<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet" />

		<link rel="stylesheet" type="text/css" href="resources/font-awesome/css/font-awesome.css">
		
		
		
		<link rel="stylesheet" href="resources/assets/css/jquery-ui-1.10.3.custom.min.css" />
		
		<link rel="stylesheet" href="resources/assets/css/chosen.css" />

		<link rel="stylesheet" href="resources/assets/css/datepicker.css" />

		<link rel="stylesheet" href="resources/assets/css/ace.min.css" />

		<link rel="stylesheet" href="resources/assets/css/ace-rtl.min.css" />

		<link rel="stylesheet" href="resources/assets/css/ace-skins.min.css" />

		<script src="resources/assets/js/ace-extra.min.js"></script>
		<script src="resources/js/demo.js"></script>

    <style type="text/css">
       /*  body { font-size: 12px; line-height: 120%; text-align: center; } */
        #list-reply a { color: #333; text-decoration: none;}
        #list-reply a:hover { text-decoration: underline;}
        
        #list-reply .clearfix:after { content:"."; display:block; height:0; clear:both; visibility:hidden}
        #list-reply .clearfix { *height:1%;position: relative;}
        #list-reply{ margin: 10px auto; text-align: left; width: 800px;}
        #list-reply .box { border-top: 1px solid #eee; position: relative;  width: 800px; padding: 20px 0}
        #list-reply .box:hover .close { display: block;}
        #list-reply .close { display: none; top:0px; right: 0px; width: 28px; height: 28px; border: 1px solid #eee; position: absolute; background: #f2f4f7; line-height: 27px; text-align: center;}
        #list-reply .close:hover { background: #c8d2e2; text-decoration: none;}
        #list-reply .head { float: left; width: 60px; height: 60px; margin-right: 10px;}
        #list-reply .content { float: left; width: 730px;}
        #list-reply .main { margin-bottom: 10px; }
        #list-reply .txt { margin-bottom: 10px;}
        #list-reply .user { color: #003a6c; }
        #list-reply .pic { margin-right: 5px; width: 200px; border: 1px solid #eee;}
        #list-reply .info { height: 20px; line-height: 19px; font-size: 12px; margin: 0 0 10px 0;}
        #list-reply .info .time { color: #ccc; float: left; height: 20px; padding-left: 20px; float:right;  background: url("images/bg1.jpg") no-repeat left top;}
        #list-reply .info .praise { color: #369; float: right; height: 20px; padding-left: 18px; background: url("images/bg2.jpg") no-repeat left top;}
        #list-reply .info .praise:hover { text-decoration: underline; background: url("images/bg3.jpg") no-repeat left top;}
        #list-reply .praises-total { margin: 0 0 10px 0; height: 20px; background: url("images/praise.png") no-repeat 5px 5px rgb(247, 247, 247); padding: 5px 0 5px 25px; line-height: 19px;}
        #list-reply .comment-box { padding: 10px 0; border-top: 1px solid #eee;}
        #list-reply .comment-box:hover { background: rgb(247, 247, 247);}
        #list-reply .comment-box .myhead { float: left; width: 30px; height: 30px; margin-right: 10px;}
        #list-reply .comment-box .comment-content { float: left; width: 690px; }
        #list-reply .comment-box .comment-content .comment-time { color: #ccc; margin-top: 3px; line-height: 16px; position: relative; float:right;}
        #list-reply .comment-box .comment-content .comment-praise { display: none; color: #369; padding-left: 17px; height: 20px; background: url("images/praise.png") no-repeat;  position: absolute; bottom: 0px; right: 44px;}
        #list-reply .comment-box .comment-content .comment-operate { display: none; color: #369; height: 20px;  position: absolute; bottom: 0px; right: 10px;}
        #list-reply .comment-box .comment-content:hover .comment-praise { display: inline-block;}
        #list-reply .comment-box .comment-content:hover .comment-operate { display: inline-block;}
        #list-reply .text-box .comment { border: 1px solid #eee; display: block; height: 30px; width: 718px; padding: 5px; resize: none; color: #ccc; overflow:hidden}
        #list-reply .text-box .btn { font-size: 12px; font-weight: bold; display: none; float: right; width: 65px; height: 25px; border: 1px solid #0C528D; color: #fff; background: #4679AC;}
        #list-reply .text-box .btn-off { border: 1px solid #ccc; color: #ccc; background: #F7F7F7; margin-top:5px; padding:0px;}
        #list-reply .text-box .word{ display: none; float: right; margin: 7px 10px 0 0; color: #666;}
        #list-reply .text-box-on .comment{ height: 50px; color: #333;}
        #list-reply .text-box-on .btn{ display: inline; margin-top:5px; padding:0px;}
        #list-reply .text-box-on .word{ display: inline;}
		#list-reply p{word-wrap:break-word;}/*解决数字不换行问题*/
		
		
    </style>
<style>
	.back:hover{
		font-size:120%;
		color:#4e72b8;
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
					<li><a href="admin2.jsp"> <i class="icon-user"></i> <span
							class="menu-text"> 教师账户管理 </span>

					</a></li>
					<li><a href="admin3.jsp"> <i class="icon-film"></i> <span
							class="menu-text"> 视频资源管理 </span>

					</a></li>
					<li class="active"><a href="admin4.jsp"> <i class="icon-comments"></i> <span
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
						<li id="postTitle">帖子列表</li>
					</ul>
						

				</div>



				<div class="page-content">

					<div class="row" id="box1">
						<div class="col-xs-12" style="margin-top: 10px;">
							
							<div class="table-responsive">

								<table id="sample-table-2"
									class="table table-striped table-bordered table-hover">

									<thead>

										<tr>

											<th class="center"><label> <input
													type="checkbox" class="ace" /> <span class="lbl"></span>

											</label></th>

											<th> 主题</th>
											<th>作者</th>
											<th>发布日期</th>
											<th></th>

										</tr>

									</thead>



									<tbody id="postList">
									</tbody>

								</table>

							</div>

						</div>

					

					</div>

					<div class="row" id="box2" style="display:none;">
					
					</div>

				</div>
				<!-- /.page-content -->

			</div>
			<!-- /.main-content -->





		</div>
		<!-- /.main-container-inner -->



		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="icon-double-angle-up icon-only bigger-110"></i>

		</a>

	</div>
			
		<script src='resources/assets/js/jquery-2.0.3.min.js'></script>
		<script src='resources/assets/js/jquery.mobile.custom.min.js'></script>
		<script src="resources/js/bootstrap.min.js"></script>
		<script src="resources/assets/js/bootstrap.min.js"></script>
		<script src="resources/assets/js/typeahead-bs2.min.js"></script>
		<script src="resources/assets/js/jquery.dataTables.min.js"></script>
		<script src="resources/assets/js/jquery.dataTables.bootstrap.js"></script>
		<script src="resources/assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="resources/assets/js/ace-elements.min.js"></script>
		<script src="resources/assets/js/ace.min.js"></script>
		<script src="resources/js/jquery-form.js"></script>
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
				
				$("[data-toggle='tooltip']").tooltip(); 
				
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
				    return year + "-" + month + "-" + day + " "+hh+":"+mm;
				}
				//调用的是这个方法
				function ConvertJSONDateToJSDate(jsondate) {
				    var date = new Date(parseInt(jsondate, 10));
				    return date;
				}
				
				//加载帖子数据
				$.ajax({
					type:"get",
					url: basePath+"/postManager/findAllPost",
					dataType:"json",
					contentType:"application/json",
					async:false,
					success:function(data){
						var addHtml ="";
						$.each(data, function(n, json){
							addHtml +='<tr><td class="center"><label><input type="checkbox" class="ace" /><span class="lbl"></span></label></td>'
							+'<td>'+json.name+'</td><td>'+json.createduid+'</td><td>'+getDateTime(ConvertJSONDateToJSDate(json.createdtime))+'</td>'
							+'<td><div class="visible-md visible-lg hidden-sm hidden-xs btn-group">'
							+'<button class="btn btn-xs btn-info manageBtn">'
							+'<i class="icon-edit bigger-120"></i></button><button class="btn btn-xs btn-danger delReply"><input type="hidden" value="'+json.postid+'" /><i class="icon-trash bigger-120"></i>'
							+'</button></div></td></tr>'
						});
						
						
						$("#postList").html(addHtml);
						
						$(".delReply").click(function(){
							var thisBtn = $(this);
							var postid = thisBtn.find("input").val();
							$.ajax({
								type:"post",
								url:basePath+"/postManager/delPost",
								dataType:"text",
								data:{
									postid:postid
								},
								success:function(msg){
										thisBtn.parent().parent().parent().remove();
										toastr.success(msg);
								}
							})
						})
						
						tableWidget();
						
						var manageBtn = $("#postList").find(".manageBtn");
						manageBtn.each(function(){
							var index = manageBtn.index($(this));
							var thisRow = $(this).parent().parent().parent().parent();
							//alert(thisRow.html());
							$(this).click(function(){
								$.ajax({
									type:"post",
									url:basePath+"/postManager/getPostCont",
									dataType:"json",
									async:false,
									data:{
										postid:data[index].postid
									},
									success:function(data2){
										var obj = data2['post'];
										var pic = data2['pic'];
										$("#box2").html("");
										$("#box2").append('<div id="list-reply">'
												+'<div class="box clearfix">'
												+'<a class="close del-post" data-toggle="tooltip" title="删除该主题及所有评论">×<input type="hidden" value="'+obj.postid+'" /></a>'
												+'<img class="head" src="'+pic+'" alt=""/>'
												+'<div class="content">'
												+'<div class="main">'
												+'<p class="txt">'
												+'<span class="user">'+obj.nickname+' : </span>'+obj.content
												+'</p>'
												+'</div>'
												+'<div class="info clearfix">'
												+'<span class="time">'+getDateTime(ConvertJSONDateToJSDate(obj.createdtime))+'</span>'
												+'</div>'
												+'<div class="comment-list">'
												+'</div>'
												+'</div>'
												+'</div></div>');
										
									/* 	jQuery.getScript("resources/js/demo.js", function(data, status, jqxhr) {
											
											}) */
											
										
											
									}
								})
								
								$.ajax({
									type:"post",
									url: basePath+"/replyManager/getReplyFloor1",
									dataType:"json",
									async:false,
									data:{
										postid:data[index].postid
									},
									success:function(data3){
										var replyList = data3['replyList'];
										$.each(replyList, function(n, obj){
											$("#list-reply").append('<div class="box clearfix">'
													+'<a class="close del-floor">×<input type="hidden" value="'+obj.replyid+'" /></a>'
													+'<img class="head" src="'+data3['pic-'+obj.uid]+'" alt=""/>'
													+'<div class="content">'
													+'<div class="main">'
													+'<p class="txt">'
													+'<span class="user">'+obj.replyname+' : '+'</span>'+obj.content
													+'</p>'
													+'</div>'
													+'<div class="info clearfix">'
													+'<span class="time">'+getDateTime(ConvertJSONDateToJSDate(obj.replytime))+'</span>'
													+'</div>'
													+'<div class="comment-list replyid'+obj.replyid+'">'
													+'</div>'
													+'</div>'
													+'</div>');
										})
										
										$.ajax({
											type:"post",
											url:basePath+"/replyManager/getReplyFloor2",
											dataType:"json",
											async:false,
											data:{
												postid:data[index].postid
											},
											success:function(data4){
												var replyList = data4['replyList'];
												$.each(replyList, function(n, obj){
													var box = $(".replyid"+obj.replytoreplyid);
													box.append('<div class="comment-box clearfix" user="other">'
															+'<a class="close del-floor">×<input type="hidden" value="'+obj.replyid+'" /></a>'
															+'<img class="myhead" src="'+data4['pic-'+obj.uid]+'" alt=""/>'
															+'<div class="comment-content">'
															+'<p class="comment-text"><span class="user">'+obj.replyname+'：</span>'+obj.content+'</p>'
															+'<p class="comment-time">'+getDateTime(ConvertJSONDateToJSDate(obj.replytime))
															+'</p></div></div>')
												})
											}
										})
			
									}
									
								})
								
								$(".close").click(function(){
									$(this).parent().remove();
								})
								
								$(".del-post").click(function(){
									$("#box1").toggle(500);
									$("#box2").toggle(500);
									$("#back").remove();
// 									alert("hello");
									var postid = $(this).find("input").val();	
									$.ajax({
										type:"post",
										url:basePath+"/postManager/delPost",
										dataType:"text",
										data:{
											postid:postid
										},
										success:function(msg){
												window.location.reload();
												toastr.success(msg);
										}
									})
								})
								
								var delFloor1 = $(".del-floor");
								delFloor1.each(function(){
									var replyid = $(this).find("input").val();
									$(this).click(function(){
// 										alert(replyid);
										$.ajax({
											type:"post",
											url:basePath+"/replyManager/delReply",
											dataType:"text",
											data:{
												replyid:replyid
											},
											success:function(msg){
												toastr.success(msg);
											}
										})
									})
								})
							
								
								
								$("#box1").toggle(500);
								
								var title = $("#postTitle");
								var preTitle = title.html();
								var titlebox = title.parent().parent();
								
								title.html('主题：'+$(this).parent().parent().siblings().eq(1).html());
								titlebox.append('<i id="back" class="icon-chevron-left back" style="margin-right:5px; float:right; line-height:40px;">返回</i>');
								$("#back").click(function(){
									title.html(preTitle);
									$("#box1").toggle(500);
									$("#box2").toggle(500);
									$(this).remove();
								})
								$("#box2").toggle(500);
							
							})
						})
						
					}
				})
				
				function tableWidget(){
					var oTable1 = $('#sample-table-2').dataTable( {

						"aoColumns": [

					      { "bSortable": false },

					   		null,null,null,

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
	
		})

	</script>

</body>

</html>
