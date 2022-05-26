<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    


<c:set var="id" value="hong" scope="page"/>
<c:set var="pwd" value="123123" scope="page"></c:set>
<%-- <c:set var="name" value="${'홍길동'}" scope="page"></c:set>--%>
<c:set var="age" value="30" scope="page"></c:set>
<c:set var="height" value="177" scope="page"></c:set>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="#99ccff">
			<td width="20%"><b>아이디</b></td>	
			<td width="20%"><b>비밀번호</b></td>
			<td width="20%"><b>이름</b></td>
			<td width="20%"><b>나이</b></td>
			<td width="20%"><b>키</b></td>
		</tr>
		<c:choose>
			<c:when test="${name==null}">
				<tr>
					<td colspan=5>이름을 입력하세요</td>
				</tr>
			</c:when>
			<c:otherwise>
				<tr>
					<td>${id}</td>
					<td>${pwd}</td>
					<td>${name}</td>
					<td>${age}</td>
					<td>${height}</td>
				</tr>			
			</c:otherwise>
		</c:choose>
		
	</table>

</body>
</html>