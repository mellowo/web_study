<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
    pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
request.setCharacterEncoding("utf-8");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	/* .class #id */
	.cls1 {
		font-size: 40px;
		text-align: center;
	}
	.cls2 {
		font-size: 20px;
		text-align: center;
	}

</style>
</head>
<body>
<p class="cls1">회원정보</p>
<table border="1" align="center">
	<tr align="center" bgcolor="lightgreen">
		<td width="7%"><b>아이디</b></td>
		<td width="7%"><b>비밀번호</b></td>
		<td width="7%"><b>이름</b></td>
		<td width="7%"><b>이메일</b></td>
	</tr>
	<c:choose>
		<c:when test="${empty memberList}">
			<tr>
				<td colspan=5>
					<b>등록된 회원이 없습니다.</b>
				</td>	
			</tr>
		</c:when>
		<c:when test="${!empty memberList}">
			<c:forEach var="mem" items="${memberList}">
				<tr align="center">
					<td>${mem.id}</td>
					<td>${mem.pwd}</td>
					<td>${mem.name}</td>
					<td>${mem.email}</td>
				</tr>
			</c:forEach>
		</c:when>
	</c:choose>

</table>


</body>
</html>