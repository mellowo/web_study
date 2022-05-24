<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="m" class="pro14.sec01.ex01.MemberBean" scope="page"></jsp:useBean>
<jsp:setProperty name="m" property="name" value="이순신" />
<jsp:useBean id="m2" class="java.util.ArrayList" scope="page"></jsp:useBean>	

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${empty m} <%--false --%> <br>
${empty m2} <%-- true --%>
</body>
</html>