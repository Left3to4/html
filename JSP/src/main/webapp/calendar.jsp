<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
	<%
	GregorianCalendar now = new GregorianCalendar(); //달력
	String date = String.format("%TF", now); //yyyy-mm-dd로 표시
	String time = String.format("%TT", now); //hh:mm:ss로 표시
	%>

	오늘 날짜:
	<%=date%>
	<br> 현재 시각:
	<%=time%>
	<br><%=String.format("%TY년 %Tm월 %Td일 ", now, now, now)%>
	<%=String.format("%TH시 %TM분 %TS초", now, now, now)%>
</body>
</html>