<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("utf-8");
ArrayList<String> al = new ArrayList<>();
al.add("hello");
al.add("hell02");
al.add("hell03");
%>
<c:set var="list" value="<%=al%>"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="i" items="${list}" varStatus="ooo">
${i}   ${ooo.first}<br> 
</c:forEach>

<c:forTokens var="i" items="1,2,3,4,5" delims=",">
${i} <br>
</c:forTokens>
</body>
</html>