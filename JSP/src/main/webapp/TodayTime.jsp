<%@page import="java.util.GregorianCalendar"%>
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
	GregorianCalendar now = new GregorianCalendar(); //달력
	%>
	
	오늘 날짜: <%=String.format("%TY년 %Tm월 %Td일 ", now, now, now)%><br>
	현재 시각: <%=String.format("%TH시 %TM분 %TS초", now, now, now)%>
</body>
</html>