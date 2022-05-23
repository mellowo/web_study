<%@page import="pro14.sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
	import="java.util.*"
    pageEncoding="UTF-8"%>


<jsp:useBean id="mem" class="java.util.ArrayList"></jsp:useBean>

<%
request.setCharacterEncoding("utf-8");

ArrayList<MemberBean> memberList = new ArrayList<>();

MemberBean m = new MemberBean("lgh_0326","123123","이건형","lgh_0326@naver.com");
memberList.add(m);
mem.add(m);
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=memberList.get(0).getId()%> <br>
<%=memberList.get(0).getPwd()%> <br>
<%=memberList.get(0).getName()%> <br>
<%=memberList.get(0).getEmail()%> <br>

${mem[0].id} <br>
${mem[0].pwd} <br>
${mem[0].name} <br>
${mem[0].email} <br>
 
</body>
</html>