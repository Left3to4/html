<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>수정결과</h3>
ID: <%=session.getAttribute("ID") %><br>
이름: <%=session.getAttribute("NAME") %><br>
전화번호: <%=session.getAttribute("PHONE") %><br>
주소: <%=session.getAttribute("ADDRESS") %>
<%session.invalidate(); %>
</body>
</html>