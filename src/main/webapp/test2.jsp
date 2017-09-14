<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://www.jq22.com/jquery/jquery-2.1.1.js"></script>
</head>
<body>
<script type="text/javascript">
	$(function(){
		$.ajax({
			url:"http://localhost:8080/studyonline/userManger/testCharset",
			dataType:"text",
			success:function(msg){
				alert(msg)
			}
		})
	})
</script>
</body>
										<div class="tabbable tabs-left">

											<ul class="nav nav-tabs" id="myTab3">

												<li class="active">

													<a data-toggle="tab" href="#home3">

														<i class="pink icon-dashboard bigger-110"></i>

														Home

													</a>

												</li>



												<li>

													<a data-toggle="tab" href="#profile3">

														<i class="blue icon-user bigger-110"></i>

														Profile

													</a>

												</li>



												<li>

													<a data-toggle="tab" href="#dropdown13">

														<i class="icon-rocket"></i>

														More

													</a>

												</li>

											</ul>



											<div class="tab-content">

												<div id="home3" class="tab-pane in active">

													<p>Raw denim you probably haven't heard of them jean shorts Austin.</p>

													<p>Raw denim you probably haven't heard of them jean shorts Austin.</p>

												</div>



												<div id="profile3" class="tab-pane">

													<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid.</p>

													<p>Raw denim you probably haven't heard of them jean shorts Austin.</p>

												</div>



												<div id="dropdown13" class="tab-pane">

													<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade.</p>

													<p>Raw denim you probably haven't heard of them jean shorts Austin.</p>

												</div>

											</div>

										</div>
</html>