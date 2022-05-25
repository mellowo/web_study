<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
request.setCharacterEncoding("utf-8");
%>    
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>아이디를 입력하지 않았습니다. 아이디를 입력해 주세요.</h1>
	<form method="post"	action="result.jsp">
		아이디: <input type="text" name="userID"><br>
		비밀번호 : <input type="password" name="userPw"><br>
		<input type="submit" value="로그인">
		<input type="reset" value="다시입력">		
	</form>
	
	<br><br>
	<a href="${contextPath}/test03/memberForm.jsp">회원가입하기</a>
</body>
</html>