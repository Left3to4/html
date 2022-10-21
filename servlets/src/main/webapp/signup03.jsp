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
String agree=request.getParameter("agree");
if (agree.equals("agree")){
	response.sendRedirect("http://localhost:8080/servlets/signup04.jsp");
} else{
	response.sendRedirect("http://localhost:8080/servlets/signup01.jsp");
}
%>
</body>
</html>