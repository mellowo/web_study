<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${contextPath}
	<form action="${contextPath}/member/addMember.do">
		<h1 style="text-align: center">회원가입창</h1>
		<table align="center">
			<tr>
				<td width="200">
					<p align="right">아이디</p>
				</td>
				<td width="200"><input type="text" name="id"></td>
			</tr>
			<tr>
				<td width="200">
					<p align="right">비밀번호</p>
				</td>
				<td width="200"><input type="text" name="pwd"></td>
			</tr>
			<tr>
				<td width="200">
					<p align="right">이름</p>
				</td>
				<td width="200"><input type="text" name="name"></td>
			</tr>
			<tr>
				<td width="200">
					<p align="right">이메일</p>
				</td>
				<td width="200"><input type="text" name="email"></td>
			</tr>
			<tr>
			<td width="400">
				<input type="submit" value="가입하기">
				<input type="reset" value="다시입력">
			</td>
			</tr>
		</table>
	
	</form>
</body>
</html>