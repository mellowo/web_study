<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%
session.setAttribute("name", "이건형");
application.setAttribute("address", "서울시 금천구");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>이름과 주소를 저장합니다.</h1>
<a href="appTest2.jsp">두번째 웹 페이지로 이동</a>
</body>
</html>