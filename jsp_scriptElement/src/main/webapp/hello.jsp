<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	String name = "듀크";
	public String getName(){ return name;}
%>
<% String age = request.getParameter("age"); %>
<% 
String name = "듀크";
String age1 = request.getParameter("age"); 
String age2 = request.getParameter("age");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>안녕하세요 <%=name %>님!!</h1>
	<h1>나이는 <%=age %>입니다.</h1><br>
	<h1>나이는 <%=age1 %>입니다.</h1><br>
	<h1>나이는 <%=age2 %>입니다.</h1><br>
</body>
</html>