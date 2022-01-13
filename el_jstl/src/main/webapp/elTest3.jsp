<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*, member.*"
	isELIgnored="false"
    pageEncoding="UTF-8"%>

<jsp:useBean id="m" class="member.MemberBean" scope="page"></jsp:useBean>

<jsp:setProperty property="name" name="m" param="name"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:getProperty property="name" name="m"/>

<h1>
\${empty m} : ${empty m}


</h1>
</body>
</html>