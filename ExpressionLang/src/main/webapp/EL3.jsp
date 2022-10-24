<%@page import="com.jsplec.base.Bean1"%>
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
	Bean1 product = new Bean1();

	product.setName("바나나");
	product.setValue(2000);

	request.setAttribute("PRODUCT", product);
	RequestDispatcher dispatcher = request.getRequestDispatcher("EL4.jsp");
	dispatcher.forward(request, response);
	%>
</body>
</html>