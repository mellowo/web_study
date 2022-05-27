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
<table border="1" align="center">
	<tr align="center" bgcolor="lightgreen">
		<td width="7%"><b>아이디</b></td>
		<td width="7%"><b>비밀번호</b></td>
		<td width="7%"><b>이름</b></td>
		<td width="7%"><b>이메일</b></td>
	</tr>
	<c:choose>
		<c:when test="${empty param.id}">
			<tr align="center">
				<td colspan="5"> 아이디를 입력하세요 !</td>
			</tr>
		</c:when>
		<c:otherwise>
			<tr align="center">
				<td><c:out value="${param.id}"></c:out></td>
				<td><c:out value="${param.pwd}"></c:out></td>
				<td><c:out value="${param.name}"></c:out></td>
				<td><c:out value="${param.email}"></c:out></td>
			</tr>
		 </c:otherwise>
	</c:choose>
</table>
</body>
</html>