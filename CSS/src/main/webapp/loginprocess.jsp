<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
request.setAttribute("id",request.getParameter("id"));

RequestDispatcher dispatcher=request.getRequestDispatcher("main.jsp");
dispatcher.forward(request, response);
%>
</body>
</html>