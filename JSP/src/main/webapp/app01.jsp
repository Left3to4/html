<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 내장 변수</title>
</head>
<body>
<%
	String appPath=application.getContextPath();
	String filePath=application.getRealPath("file.txt");
%>
appPath: <%=appPath %><br>
filePath: <%=filePath %>
</body>
</html>