<%@page import = "com.example.model.UserModel" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% UserModel u = new UserModel("aa","bb","cc");  %>

<%! String s1 = "aaaa"; %>
<%="abcde" %>
<%=s1 %><br>
<% if(s1 != null) 
	out.println("hhhhh");  
else
out.println("heiihei");

%>
<jsp:expression>"abcd"</jsp:expression>
</body>
</html>