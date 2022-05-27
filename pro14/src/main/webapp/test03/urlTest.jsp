<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
<c:url var="url1" value="/test01/member1.jsp">
	<c:param name="id" value="이건형"></c:param>
	<c:param name="pwd" value="123123"></c:param>
	<c:param name="name" value="이건형"></c:param>
	<c:param name="email" value="lee@test.com"></c:param>
</c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="${url1}">회원정보 출력</a>
</body>
</html>