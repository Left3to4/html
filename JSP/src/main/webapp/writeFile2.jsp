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

	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");

	String filename = "file.txt";

	PrintWriter writer = null;

	try {
		String filePath = application.getRealPath(filename); //파일의 위치 불러오기
		writer = new PrintWriter(filePath);
		writer.println("제목: " + title);
		writer.println("글쓴이: " + name);
		writer.println(content);
		response.sendRedirect("http://localhost:8080/JSP/writeFile3.jsp?write=success");
	} catch (IOException io) {
		response.sendRedirect("http://localhost:8080/JSP/writeFile3.jsp?write=fail");
	} finally {
		try {
			writer.close(); //close를 안하면 저장이 안 됨
		} catch (Exception e) {

		}
	}
	%>
</body>
</html>