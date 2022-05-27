<%@ page language="java" contentType="text/html; charset=UTF-8"
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
	<c:if test="${empty param.userID }">
		<c:out value="아이디를 입력하세요"></c:out><br>
		<a href="login.jsp">로그인창</a>
	</c:if>
	<c:if test="${not empty param.userID }">
		<c:if test="${param.userID == 'admin'}">
			<h1> 관리자로 로그인 했습니다.</h1>
			<form>
				<input type="button" value="회원정보 조회하기"> <br>
				<input type="button" value="회원정도 수정하기">
			</form>
		</c:if>
		<c:if test="${param.userID != 'admin' }">
			<h1>환영합니다 <c:out value="${param.userID}"></c:out>님!</h1>
		</c:if>
	</c:if>

</body>
</html>