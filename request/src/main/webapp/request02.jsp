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
	request.setCharacterEncoding("utf-8"); //한글 출력을 위해서 필요
	%>
	안녕하세요,
	<%=request.getParameter("yourname")%>님!
</body>
</html>