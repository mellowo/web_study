<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<% 
request.setCharacterEncoding("utf-8");

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
안녕하세요. 쇼핑몰 중심 JSP 시작입니다.!!

<br>
<%--이미 있는 JSP를 포워딩 --%>
<jsp:include page="duke_image.jsp" flush="true">
	<jsp:param value="듀크" name="name"/>
	<jsp:param value="duke.png" name="imgName"/>
</jsp:include>
</body>
</html>