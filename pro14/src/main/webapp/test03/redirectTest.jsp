<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:redirect url="/test01/member1.jsp">
		<c:param name="id" value="이건형"></c:param>
		<c:param name="pwd" value="123123"></c:param>
		<c:param name="name" value="이건형"></c:param>
		<c:param name="email" value="test@test.com"></c:param>
	</c:redirect>
</body>
</html>