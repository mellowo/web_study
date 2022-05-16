<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	String name = "이순신";
	public String getName(){
		return name;
	}
%> 

<%--jsp의 스크립트 요소는 브라우저로 전송되지 않고 브라우저로 전송되기 전에 컨테이너에서 자바 코드로 변환됨 --%>
<% String age = request.getParameter("age"); %>

<!DOCTYPE html>
<!-- 주석문 -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>안녕하세요 <%=name %> 님!!</h1>
	<h1>나이는 <%=age %> 입니다.</h1>
</body>
</html>