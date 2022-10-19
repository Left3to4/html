<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단(2단)</title>
</head>
<body>
	<h2>2단</h2>
	<%
	for (int i = 0; i < 10; i++) {
		out.println(2 + "×" + i + "=" + (2 * i));
		out.println("<br>=========<br>");
	}

	int sum = 0;
	for (int i = 1; i <= 100; i++) {
		sum = sum + i;
	}
	out.println("1+2+3+.....+99+100=" + sum);
	%>
	<!-- JAVA 코드 -->
</body>
</html>