<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");
List arrayList = new ArrayList();
arrayList.add("123");
arrayList.add("456");
arrayList.add(112);
%>    

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="name1" value="이건형" scope="page"></c:set>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
<c:set var="data" value="<%=arrayList %>"></c:set>

<c:redirect url="test2.jsp">
<c:param name="bb" value="345"></c:param>
</c:redirect>
<c:url var="d22" value="test2.jsp">
<c:param name="aa" value="112"></c:param>
</c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${name1} <br>
${contextPath}<br>

<c:forEach var="d1" items="${data}">
${d1} <br>
</c:forEach>
<br>
<a href="${d22}">페이지 이동 </a>
${d22}

</body>
</html>