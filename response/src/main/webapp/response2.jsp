<%@page import="java.net.URLEncoder"%>
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
	String url;
	if (age > 18) { //성인
		url="http://localhost:8080/response/response3.jsp?age=" + age + "&isadult=" + URLEncoder.encode("성인", "UTF-8") + "&alchohol=" + URLEncoder.encode("가능", "UTF-8");
		response.sendRedirect(url);
	} else { //미성년자
		url="http://localhost:8080/response/response3.jsp?age=" + age + "&isadult=" + URLEncoder.encode("미성년자", "UTF-8") + "&alchohol=" + URLEncoder.encode("불가능", "UTF-8");
		response.sendRedirect(url);
	}
	%>
</body>
</html>