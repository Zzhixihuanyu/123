<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/demo/js/layui/layui.js"></script>
 <script type="text/javascript" src="/demo/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
layui.use(["form", "jquery"], function(){
	var form = layui.form;
	var $ = layui.jquery;
	form.on("submit(login)", function(data){
		$.ajax({
			type : "post",
	         url : "/demo/user/login3",
	         dataType : true,
	         success : function(result){
	        	 console.log(result);
	        	 alert(resultcode)
	        	 location.href = "/demo/test/result.jsp"
	         }
		});
	return false
	});
});
</script>
</head>
<body>
<form action = "submit()"class="layui-form" onsubmit="return false;">
姓名：<input type="text" name="name"><br>
密码: <input type="password" name="password"><br>
验证码：<input type="text" name = "test">
<img src="/demo/common/authCode" onclick="'/demo/common/authCode?'+Math.random();"><br>
<button name="submit">登陆</button>
</form>
</body>
</html>