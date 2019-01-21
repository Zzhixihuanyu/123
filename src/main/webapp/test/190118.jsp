<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type = "text" name = "email" size = "20" maxlength = "10" value = '123'> 
<input type = "password" name = "pwd">   
<input type = "checkbox" name = "shuiguo" value = "1">苹果&nbsp;果(html转义字符)
<input type = "checkbox" name = "shuiguo" value = "1">香&gt;蕉  
<input type = "radio"    name = "sex" id = "sex1" checked value = "1">                          
<label for = 'sex1'>男</label>
<input type = "radio" name = "sex" value = "2" >女
<input type = "submit" value = "send"><input typee = "reset"> 
<input type = "button" value = "aaa">

<input type = "hiden" name = "aaa" value = "bbb">
<select name = "sel">
<option value = "pingguo">苹果</option>
<option value = "2">香蕉</option>
<option select value = "3">樱桃</option>
<option value = "4">樱桃1</option>
</select>
<textarea name="comment" rows = "5" cols = "20" ></textarea>
<a href = "http://www.baidu.com/">连接文本
<img src="D:\java\sts-4.1.0.RELEASE\work\demo\src\main\webapp\test/123.png" />
</a>
图像链接：
<a href = "http://www.baidu.com"  >
</a>
<a href = "mailto:ST123456789@163.com">发送e-mail</a>
书签：
<a href = "#tips">跳到提示部分</a>锚点
</body>
</html>