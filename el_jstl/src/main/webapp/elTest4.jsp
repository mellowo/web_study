<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
	import="java.util.*, member.*"
    pageEncoding="UTF-8"%>
   
   
<%
request.setCharacterEncoding("utf-8");
%>   

<jsp:useBean id="m" class="member.MemberBean" scope="page"></jsp:useBean>

<jsp:setProperty property="*" name="m"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${param.name}

</body>
</html>