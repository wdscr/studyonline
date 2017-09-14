<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>Insert title here</title>

<script>
var index;
window.onload=function(){ 
	   index=1;
 		var obj = new Array();
 		var str ='{"key":"HELLO"}';
 		obj[1] = new Array();
 		obj[1][2] = str;
 		alert(obj[1][2]);
} 
	
/* 	function addsection(id){
		var fileinput=document.createElement("input");
		fileinput.setAttribute("name", "file"+id);
		fileinput.setAttribute("type", "file");
		fileinput.setAttribute("accept", "video/mp4,video/avi");
		document.getElementById(id).appendChild(fileinput);
		var sn=document.createElement("input");
		sn.setAttribute("name", "Sectionname"+id);
		sn.setAttribute("type", "input");
		document.getElementById(id).appendChild(sn);
		document.getElementById(id).appendChild(document.createElement("br"));
		return false;
	} */
	
	function addchapter(){
		document.getElementById('ggg').submit();
		var chapter=document.createElement("div");
		chapter.setAttribute("id", index);
		var cn=document.createElement("input");
		cn.setAttribute("name", "Chaptername");
		cn.setAttribute("type", "input");
		chapter.appendChild(cn);
		var addsec=document.createElement("button");
		addsec.setAttribute("type", "button");
		addsec.innerText="添加新节";
		addsec.onclick = function(){
				var id=chapter.id;
				var secdiv=document.createElement("div");
				var fileinput=document.createElement("input");
				fileinput.setAttribute("name", "file"+id);
				fileinput.setAttribute("type", "file");
				fileinput.setAttribute("accept", "video/mp4,video/avi");
				secdiv.appendChild(fileinput);
				var sn=document.createElement("input");
				sn.setAttribute("name", "Sectionname"+id);
				sn.setAttribute("type", "input");
				secdiv.appendChild(sn);
				fileinput.onchange=function(){
					alert(fileinput.value);
					var arr=fileinput.value.split('\\');//注split可以用字符或字符串分割
					var pos = arr[arr.length-1].lastIndexOf(".");
					var lastname =arr[arr.length-1].substring(0,pos);
				    sn.value = lastname ;
				}
				var delsec=document.createElement("button");
				delsec.setAttribute("type", "button");
				delsec.innerText="删除该节";
				delsec.onclick = function(){
					secdiv.remove();
				}
				secdiv.appendChild(delsec);
				secdiv.appendChild(document.createElement("br"));
				chapter.appendChild(secdiv)
		}
		chapter.appendChild(addsec);
		var hiddenid=document.createElement("input");
		hiddenid.setAttribute("name", "id");
		hiddenid.setAttribute("type", "hidden");
		hiddenid.setAttribute("value", index);
		document.getElementById("hiddenform").appendChild(hiddenid);
		var delchapter=document.createElement("button");
		delchapter.setAttribute("type", "button");
		delchapter.innerText="删除该章";
		delchapter.onclick = function(){
			chapter.remove();
			hiddenid.remove();
		}
		chapter.appendChild(delchapter);
		chapter.appendChild(document.createElement("br"));
		document.getElementById("courseform").appendChild(chapter);
		index++;
	}
</script>
</head>
<body>
<img src="upload/0.jpg"></img>
<a href="admin.jsp">111111</a>
<form action="${pageContext.request.contextPath }/upload/upload"  method="post"   enctype="multipart/form-data"  id="ggg">
   课程<input type="input" name="Coursename"   /><br/>
   <div id="courseform">
          <!--  <div id="y">
              章一<input type="input" name="Chaptername"   /><button type="button"  onclick="addsection('y')">添加新节</button><br/>
                节一<input type="file" name="file1" accept="video/mp4,video/avi"/><input type="input" name="Sectionname1"   /><br/>
                 节二<input type="file" name="file1" accept="video/mp4,video/avi"/><input type="input" name="Sectionname1"  /><br/>
            </div>
            <div id="x">
            
               章二<input type="input" name="Chaptername"   /><br/>
                节一<input type="file" name="file2" accept="video/mp4,video/avi"/><input type="input" name="Sectionname2 "/><br/>
                 节二<input type="file" name="file2" accept="video/mp4,video/avi"/><input type="input" name="Sectionname2"  /><br/>
                  </div> -->
       </div>
       <button type="button"  onclick="addchapter();" >添加新章</button>
       <div id="hiddenform">
<!--               <input  type="hidden"  name="id"  value="1"/>
               <input  type="hidden"  name="id"  value="2"/> -->
         </div>
               <button type="submit" value="上传"></button>
   </form>
</body>

</html>

