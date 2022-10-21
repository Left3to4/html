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
	String success = request.getParameter("write");
	String text;
	if (success.equals("success")) {
		text = "저장에 성공했습니다";
	} else {
		text = "파일을 저장할 수 없습니다";
	}
	%>
	<%=text%>
</body>
</html>