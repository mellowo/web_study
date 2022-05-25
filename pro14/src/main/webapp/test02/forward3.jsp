<%@page import="pro14.sec01.ex01.MemberBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

List memberList = new ArrayList();

MemberBean m1 = new MemberBean("lee","123123","이건형","lee@test.com");
MemberBean m2 = new MemberBean("jung","123123","정민하","jung@test.com");
memberList.add(0, m1);
memberList.add(1,m2);
request.setAttribute("memberList", memberList);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="member3.jsp"></jsp:forward>
</body>
</html>