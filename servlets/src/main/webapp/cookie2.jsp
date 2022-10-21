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
String food=request.getParameter("food");
session.setAttribute("FOOD", food); //서버의 static 변수
%>

<form action="cookie3.jsp" method="get">
좋아하는 동물: <input type="text" name="animal">
<input type="submit" value="OK">
</form>
</body>
</html>