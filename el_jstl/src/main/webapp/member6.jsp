<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
ArrayList dataList = new ArrayList();
dataList.add("hello");
dataList.add("world");
%>
<c:set var="list" value="<%=dataList %>"></c:set>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="i" begin="1" end="10" step="1" varStatus="first">
	i= ${i} &nbsp;&nbsp;&nbsp; 반복횟수: ${first} <br>
</c:forEach>

<c:forEach var="i" items="${list}">
	${i} <br>
</c:forEach>

<c:forEach var="i" begin="1" end="10">
${i} <br>
</c:forEach>

</body>
</html>