<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%--선언문 : 서블릿 클래스의 멤버 변수 멤버 메서드로 전환 --%>
<%!
	String name = "듀크";
	public String getName(){
		return name;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>안녕하세요 <%=name %>님 !!</h1>
</body>
</html>