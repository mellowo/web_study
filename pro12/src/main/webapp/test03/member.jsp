<%@page import="sec01.ex01.MemberDAO"%>
<%@page import="sec02.ex01.MemberVO"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	h1{
		text-align: "center";
	}
</style>
</head>
<body>
<h1>회원 정보 출력</h1>


<%
	request.setCharacterEncoding("utf-8");
	String _name = request.getParameter("name");
	MemberVO memberVO = new MemberVO();
	memberVO.setName(_name);
	MemberDAO dao = new MemberDAO();
	List memberList = dao.listMembers(memberVO);
%>

<table border=1 width=800 align=center>
	<tr align="center" bgcolor="#FFFF66">
		<td>아이디</td>
		<td>비밀번호</td>
		<td>이름</td>
		<td>이메일</td>	
	</tr>

<%
for(int i = 0 ; i < memberList.size() ; i++){
	MemberVO vo = (MemberVO) memberList.get(i);
	String id = vo.getId();
	String name = vo.getName();
	String pw = vo.getPasswd();
	String email = vo.getEmail();
%>
	<tr>
		<td><%=id%></td>
		<td><%=pw%></td>
		<td><%=name%></td>
		<td><%=email%></td>	
	</tr>
<%
}
%>
</table>
</body>
</html>