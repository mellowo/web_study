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
<c:set var="dan" value="${param.dan}"></c:set>
<body>
	<table border="1" width="800" align="center">
		<tr align="center" bgcolor="lightgreen">
			<td colspan="2">
				<c:out value="${dan}단출력"></c:out>
			</td>			
		</tr>
		<c:forEach var="i" begin="1" end="9">
			<tr align="center">
				<td width="400"><c:out value="${dan} * ${i}"></c:out></td>
				<td width="400"><c:out value="${dan*i}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>