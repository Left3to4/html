<%@page import="java.net.URLDecoder"%>
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
String num1=request.getParameter("num1");
String num2=request.getParameter("num2");
String url=null;
	if (URLDecoder.decode(request.getParameter("btn"), "UTF-8").equals("입력")){
		url="http://localhost:8080/calc/result2.jsp?num1=" + num1 + "&num2=" + num2 + "&btn=" + URLEncoder.encode("뺄셈", "UTF-8");
		response.sendRedirect(url);
	}
	else if (URLDecoder.decode(request.getParameter("btn"), "UTF-8").equals("뺄셈")){
		url="http://localhost:8080/calc/result2.jsp?num1=" + num1 + "&num2=" + num2 + "&btn=" + URLEncoder.encode("곱셈", "UTF-8");
		response.sendRedirect(url);
	}
	else if (URLDecoder.decode(request.getParameter("btn"), "UTF-8").equals("곱셈")){
		url="http://localhost:8080/calc/result2.jsp?num1=" + num1 + "&num2=" + num2 + "&btn=" + URLEncoder.encode("나눗셈", "UTF-8");
		response.sendRedirect(url);
	}
	else if (URLDecoder.decode(request.getParameter("btn"), "UTF-8").equals("나눗셈")){
		url="http://localhost:8080/calc/result2.jsp?num1=" + num1 + "&num2=" + num2 + "&btn=" + URLEncoder.encode("초기화면", "UTF-8");
		response.sendRedirect(url);
	}
	else{
		response.sendRedirect("http://localhost:8080/calc/init.jsp");
	}
%>

</body>
</html>