<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script type="text/javascript" src="/demo/js/jquery-3.3.1.min.js"></script>

</head>
<body>
	<form action= "/demo/user/login">
<!-- 	/demo/user/login?code=111&pass=abc -->
<% request.getParameter("code"); %>
		账号：<input type="text" name="code" value='111' /><br> 
		密码：<input type="password" name="pass" /><br> 
		验证码：<input type="text" id="authCode" name="authCode" placeholder="验证码">
		<img  src="/demo/common/authCode" 
		onclick="this.src='/demo/common/authCode?'+Math.random();"><br>
		<input type="submit" value="提交" /><br>
	</form>
	
  
<button onclick="aa()">AA</button>
	<div id ="time"></div>
	<script type="text/javascript">
function aa(){
	$.ajax({
	   type : "get",
	   url   : "/demo/user/login3",
	   dataType : "json", //返回的数据类型
	   data: {
	  code : $("[name='code']").val(),
	  pass: $("[name='pass']").val()
	},
	success : function(data){
	alert(data)
	console.log(typeof data);
	console.log(data)
	$("#bb").html(data.code)
	}
	})
	
}
console.log('/demo/common/authCode?'+Math.random());
setInterval("time.innerHTML= new Date().toLocaleDateString()",1000);
function t(){
	var myDate = new Date();
	var s =  myData.toLocaleDateString();
	document.getElementById("a").innerHTML=s;
}
var x=setInterval(t(),1000);
function stop1(){
	clearInterval(x);
}
</script>
</body>
</html>