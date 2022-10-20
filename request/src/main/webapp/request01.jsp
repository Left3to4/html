<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름을 입력하세요
	<br><br>
	<form action="request02.jsp" method="get">
		이름: <input type="text" name="yourname">
			<input type="submit" value="확인">
	</form>
	<%!String name="James"; %>
	<a href="http://localhost:8080/request/request02.jsp?yourname=<%=name%>">Test</a>
</body>
</html>