<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String iskid=request.getParameter("isadult");
String buy=request.getParameter("alchohol");
%>
<h2><%=iskid %></h2><br>
당신의 나이는 <%=request.getParameter("age") %>세이며 주류구매가 <%=buy %>합니다.<br>
<a href="http://localhost:8080/response/response1.jsp">처음으로</a>
</body>
</html>