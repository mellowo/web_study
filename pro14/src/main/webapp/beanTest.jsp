<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<jsp:useBean id="al1" class="java.util.ArrayList"></jsp:useBean>

<%
request.setCharacterEncoding("utf-8");

ArrayList<String> al = new ArrayList<>();
al.add("1");
al1.add("111");
%>    
<c:set var="al" value="<%=al%>"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${al[0]} <br>
${al1[0]}
</body>
</html>