<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String id = request.getParameter("user_id");
String pw = request.getParameter("user_pw");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% if(id == null || id.length()==0) {%>
	아이디를 입력하세요 <br>
	<a href="login.jsp">돌아가기</a>
<%}else{%>
<h1>환영합니다. <%=id %> 님!</h1>
<%}%>
	<%= id %><br>
	<%= pw %>
</body>
</html>