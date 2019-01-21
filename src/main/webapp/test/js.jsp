<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
function s1(){
	var a = 0;
	//a是共用的变量
	function s2(){
		a++;
		alert(a);
	}
	return s2;
}
function tt(){
	var ss = s1();
	alert(typeof ss);
	var w = ss();
	alert(ss);
	alert(ss())
}
function testdom(){
	var a1 = document.getElementById("aa"); //通过Id找到标签
	var a2 = document.getElementsByName("aa"); //名字
	var a3 = document.getElementsBsyTagName("aa"); //标签名
    var a4 = document.getElementsByClassName("cc");//样式名
    alert(a1.innerHTML);  //获得整个标签
    alert(a1.innerText);  //获得标签的text
    a1.innerHTML = "QWRR"; //如果带有标签用这个
    a1.innerText = "QW"; //只对文本有效
    a1.style.backgroundColor = "red";
 
}
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript" src="../j1.js"></script>
<button onclick="alert(123)"></button>
<button onclick="javascript:alert(123)">b2</button>
<!-- 可以省略 -->
<a href="javascript:alert('c3')">c3</a>
<!-- 请求路径，javascript:不能丢 -->

<button onclick="tt()">111</button>
</body>
</html>