<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String userID = request.getParameter("userID");
if(userID.length() == 0){
%>    
	<jsp:forward page="login.jsp"></jsp:forward>
<%}%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>환영합니다 <%=userID %>님!!! </h1>
</body>
</html>