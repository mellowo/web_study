<%@page import="pro14.sec02.ex01.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*"
	isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="m" class="pro14.sec02.ex01.MemberBean"></jsp:useBean>
<jsp:setProperty name="m" property="*"/>
<%
	MemberDAO memDAO = new MemberDAO();
	memDAO.addMember(m);
	List memberList = memDAO.listMembers(m);
	request.setAttribute("memberList", memberList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:forward page="memberList.jsp"></jsp:forward>

</body>
</html>