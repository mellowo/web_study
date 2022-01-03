<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
int score = Integer.parseInt(request.getParameter("score"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
점수는 <%=score %>입니다
<%
if(score <= 100 && score > 90){
%>
<h1>학점은A 입니다.</h1>
<%
}else if(score <= 90 && score > 80){
%>
<h1>학점은B 입니다.</h1>
<%
}else if(score <= 80 && score > 70){
%>
<h1>학점은C 입니다.</h1>
<%
}else if(score <= 70 && score > 60){
%>
<h1>학점은D 입니다.</h1>
<%
}else{
%>
<h1>학점은F 입니다.</h1>
<%
}
%>
<a href="scoreTest.html">점수 입력하기</a>
</body>
</html>