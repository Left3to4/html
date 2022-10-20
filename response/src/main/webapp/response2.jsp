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
	int age = Integer.parseInt(request.getParameter("age"));
	if (age > 18) { //성인
		response.sendRedirect("http://localhost:8080/response/response3.jsp?age=" + age);
	} else { //미성년자
		response.sendRedirect("http://localhost:8080/response/response4.jsp?age=" + age);
	}
	%>
</body>
</html>