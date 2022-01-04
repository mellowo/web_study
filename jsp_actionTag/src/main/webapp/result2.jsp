<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String msg = "아이디를 입력하지 않았습니다. 아이디를 입력해 주세요";
String userID = request.getParameter("userID");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
if(userID.length()==0){
%>
<h1>아이디를 입력하지 않았습니다. 아이디를 입력하세요</h1>
<jsp:forward page="login2.jsp">
	<jsp:param value="<%=msg %>" name="msg"/>
</jsp:forward>
<%
}
%>
<h1>환영합니다.</h1>
<h1><a href="login2.jsp">초기화면으로 돌아가기</a></h1>
</body>
</html>