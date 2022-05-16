<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,sec01.ex01.*"
	isELIgnored="false"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="list" value="${memberList}" ></c:set> <br>
${list[0].id}
${list[0].name}
${list[0].pwd}
${list[0].email}

</body>
</html>