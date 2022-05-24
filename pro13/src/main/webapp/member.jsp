
<%@page import="sec01.ex01.MemberDAO"%>
<%@page import="sec01.ex01.MemberBean"%>
<%@page import="java.lang.reflect.Member"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");
%>    
<%
String name = request.getParameter("name");
String pwd = request.getParameter("pwd");
String id = request.getParameter("id");
String email = request.getParameter("email");

MemberBean m = new MemberBean(id,pwd,name,email);
MemberDAO dao = new MemberDAO();
dao.addMember(m);
List memberList = dao.listMembers(m);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원 목록창</h1>

</body>

</html>