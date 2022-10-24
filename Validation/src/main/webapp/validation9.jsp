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
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	%>

	<p>
		아이디:
		<%=request.getParameter("id")%>
	<p>
		패스워드:
		<%=request.getParameter("pw")%>
	<p>
		이름:
		<%=request.getParameter("name")%>
	<p>
		연락처:
		<%=request.getParameter("phone1")%> - <%=request.getParameter("phone2") %> - <%=request.getParameter("phone3") %>
	<p>
		이메일:
		<%=request.getParameter("email")%>
</body>
</html>