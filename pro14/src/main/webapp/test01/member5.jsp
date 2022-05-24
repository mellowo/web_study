<%@page import="pro14.sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="m1" class="pro14.sec01.ex01.MemberBean"></jsp:useBean>
<jsp:setProperty name="m1" property="*"/>
<jsp:useBean id="memberList" class="java.util.ArrayList"></jsp:useBean>
<jsp:useBean id="membersMap" class="java.util.HashMap"></jsp:useBean>

<%
membersMap.put("id","park2");
membersMap.put("pwd","123123");
membersMap.put("name","박지성");
membersMap.put("email","park2@test.com");
MemberBean m2 = new MemberBean("son","123123","손흥민","son@test.com");
memberList.add(m1);
memberList.add(m2);
membersMap.put("memberList",memberList);
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
			<td width="200"><b>아이디</b></td>
			<td width="200"><b>비밀번호</b></td>
			<td width="200"><b>이름</b></td>
			<td width="200"><b>이메일</b></td>
		</tr>
		<tr align="center">
			<td>${membersMap.id}</td>
			<td>${membersMap.pwd}</td>
			<td>${membersMap.name}</td>
			<td>${membersMap.email}</td>
		</tr>
		<tr align="center">
			<td>${membersMap.memberList[0].id}</td>
			<td>${membersMap.memberList[0].pwd}</td>
			<td>${membersMap.memberList[0].name}</td>
			<td>${membersMap.memberList[0].email}</td>
		</tr>
		<tr align="center">
			<td>${membersMap.memberList[1].id}</td>
			<td>${membersMap.memberList[1].pwd}</td>
			<td>${membersMap.memberList[1].name}</td>
			<td>${membersMap.memberList[1].email}</td>
		</tr>		
	</table>
</body>
</html>