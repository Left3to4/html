<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
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
	String quantity = request.getParameter("quantity");
	String size = request.getParameter("size");
	String color = request.getParameter("color");
	String filename = "product.txt";
	PrintWriter writer = null;

	try {
		String filePath = application.getRealPath(filename); //파일의 위치 불러오기
		writer = new PrintWriter(filePath);
		writer.println("수량: " + quantity);
		writer.println("크기: " + size);
		writer.println("색상:" + color);
		response.sendRedirect("http://localhost:8080/merchandise/writeresult.jsp?result=success");
	} catch (IOException io) {
		response.sendRedirect("http://localhost:8080/merchandise/writeresult.jsp?result=fail");
	} finally {
		try {
			writer.close(); //close를 안하면 저장이 안 됨
		} catch (Exception e) {

		}
	}
	%>
</body>
</html>