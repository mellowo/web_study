<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
	
    pageEncoding="UTF-8"%>
    
<%-- jstl 사용하기위해 삽입 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="name" value="이건형"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:if test="${true}"> 
<h1> 항상 참</h1>
</c:if>

<c:if test="${10!=12}">
<h1>구라입니다 </h1>

<c:if test="${name=='이건형'}">
<h1>이름은 이건형 입니다.</h1>
</c:if>
</c:if>
</body>
</html>