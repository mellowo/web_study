<%@page import="pro14.sec01.ex01.MemberBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<%
request.setCharacterEncoding("utf-8");
ArrayList<MemberBean> al = new ArrayList<>();
al.add(new MemberBean("lee","12312","lee","lee@test.com"));
al.add(new MemberBean("lee1","12312","lee1","lee1@test.com"));
al.add(new MemberBean("lee2","12312","lee2","lee2@test.com"));
al.add(new MemberBean("lee3","12312","lee3","lee3@test.com"));
%>
<c:set var="al" value="<%=al%>"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1" align="center">
	<tr align="center" bgcolor="lightgreen">
		<td width="7%"><b>아이디</b></td>
		<td width="7%"><b>비밀번호</b></td>
		<td width="7%"><b>이름</b></td>
		<td width="7%"><b>이메일</b></td>
	</tr>
	<c:forEach var="i" items="${al}" begin="0" step="1">
		<tr align="center">
			<td width="7%">${i.id}</td>
			<td width="7%">${i.pwd}</td>
			<td width="7%">${i.name}</td>
			<td width="7%">${i.email}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>