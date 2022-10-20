<%@page import="org.apache.catalina.tribes.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String userid = request.getParameter("userID");
	String password = request.getParameter("userPW");
	String[] hobby = request.getParameterValues("hobby"); //중복체크 가능한 변수를 받는 법
	String major = request.getParameter("major");
	String protocol = request.getParameter("protocol");
	%>

	이름: <%=name%><br>
	ID: <%=userid%><br>
	PW: <%=password%><br>
	취미: <%=Arrays.toString(hobby)%><br>
	전공: <%=major%><br>
	Protocol: <%=protocol%>
</body>
</html>