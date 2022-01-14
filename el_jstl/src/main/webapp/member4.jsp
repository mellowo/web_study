<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"
	import="java.util.*, member.*"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");
%>    

<jsp:useBean id="m1" class="member.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="m1"/>
<jsp:useBean id="memberList" class="java.util.ArrayList"></jsp:useBean>

<%
MemberBean m2 = new MemberBean("son");
memberList.add(m1);
memberList.add(m2);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${memberList[0].name }
${memberList[1].name }
</body>
</html>