<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("utf-8");
%>    
<c:set var="id" value="hong" scope="page"/>
<c:set var="pwd" value="123123" scope="page"></c:set>
<c:set var="name" value="${'홍길동'}" scope="page"></c:set>
<c:set var="age" value="30" scope="page"></c:set>
<c:set var="height" value="177" scope="page"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${true}">
		<h1>항상 참입니다.</h1>
	</c:if>
	
	<c:if test="${11==11}">
		<h1>두 값은 같습니다</h1>
	</c:if>
	
	<c:if test="${11!=13}">
		<h1>두값은 같지 않습니다.</h1>
	</c:if>
	
	<!--  var는 조건식의 결과값이 담기는 변수를 지정--> 
	<c:if test="${(id=='hong') && (name=='홍길동')}" var="bol">   
		<h1>아이디는 ${id} 이고, 이름은 ${name}입니다</h1>
	</c:if>
	${bol}
	
</body>
</html>