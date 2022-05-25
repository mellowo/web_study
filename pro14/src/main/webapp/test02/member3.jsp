<%@page import="pro14.sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
    pageEncoding="UTF-8"%>
<jsp:useBean id="arrayList" class="java.util.ArrayList"> </jsp:useBean>
<%
request.setCharacterEncoding("utf-8");

arrayList.add(new MemberBean("tee","123123" ,"tee","tee@test.com"));
%>    
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
			<td>${memberList[0].id}</td>
			<td>${memberList[0].pwd}</td>
			<td>${memberList[0].name}</td>
			<td>${memberList[0].email}</td>
		</tr>
		<tr align="center">
			<td>${arrayList[0].id}</td>
			<td>${arrayList[0].pwd}</td>
			<td>${arrayList[0].name}</td>
			<td>${arrayList[0].email}</td>
		</tr>			
		
	</table>		
</body>
</html>