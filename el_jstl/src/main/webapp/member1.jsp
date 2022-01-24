<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("utf-8");
%>


<c:set var="id" value="hong" scope="page"></c:set>
<c:set var="pwd" value="1234" scope="page"></c:set>
<c:set var="age" value="${22}" scope="page" ></c:set>
<c:set var="height" value="${177}" scope="page"></c:set>
<c:set var="context" value="${pageContext.request.contextPath}"></c:set>
<c:set var="name" value='${param.name} '></c:set>
<c:set var="name1" value='${requestScope.name1}'></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>
${id} <br>
${pwd} <br>
${pageContext.request.contextPath} <br>
${name}<br>
${name1}
<br>
<a href="${context}/login.html" >이동하기 </a>
</h1>
</body>
</html>