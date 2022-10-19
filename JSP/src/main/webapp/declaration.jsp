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
	int i = 10;
	String str = "1. e4 is best by test";

	out.println("i=" + i + "<br>");
	out.println("str=" + str + "<br>");
	out.println("sum=" + sum(12, 15) + "<br>");
	%>

	<%!public int sum(int a, int b) {
		return a + b;
	}%><!-- 메소드 선언부 -->
	
2 + 1 = <%=sum(2,1) %><br>
3 + 1 = <%=sum(3,1) %><br>
4 + 1 = <%=sum(4,1) %><br>
5 + 1 = <%=sum(5,1) %>
</body>
</html>