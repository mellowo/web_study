<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="pro14.sec01.ex01.*, java.util.*"
	isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<%
request.setCharacterEncoding("utf-8");
%>    
<jsp:useBean id="memberHashMap" class="java.util.HashMap"/>

<%
memberHashMap.put("id", "lee");
memberHashMap.put("pwd","123123");
memberHashMap.put("name","이건형");
memberHashMap.put("email","lee@test.com");
MemberBean m1 = new MemberBean("test","123123","test","test@test.com");
memberHashMap.put("bean", m1);
%>

<c:set var="bean" value="${memberHashMap.bean}"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="#99ccff">
			<td width="20%"><b>아이디</b></td>	
			<td width="20%"><b>비밀번호</b></td>
			<td width="20%"><b>이름</b></td>
			<td width="20%"><b>이메일</b></td>
		</tr>
		<tr align="center">
			<td>${memberHashMap.id}</td>
			<td>${memberHashMap.pwd}</td>
			<td>${memberHashMap.name}</td>
			<td>${memberHashMap.email}</td>
		</tr>		
		<tr align="center">
			<td>${bean.id}</td>
			<td>${bean.pwd}</td>
			<td>${bean.name}</td>
			<td>${bean.email}</td>
		</tr>
	</table>
</body>
</html>