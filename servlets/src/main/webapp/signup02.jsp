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
String id=request.getParameter("id");
String pw=request.getParameter("password");
String name=request.getParameter("name");

session.setAttribute("ID", id);
session.setAttribute("PW", pw);
session.setAttribute("NAME", name);
%>
<h2>약관</h2><br>
------------------------------------------<br>
1. 회원 정보는 웹사이트 운영을 위해서만 사용됩니다.<br>
2. 웹사이트의 정상적인 운영을 방해하는 회원은 강퇴될 수 있습니다.<br>
위의 약관에 동의하십니까?<br>
------------------------------------------<br>
<form action="signup03.jsp" method="get">
<input type="radio" name="agree" value="agree" checked="checked">동의
<input type="radio" name="agree" value="disagree">동의하지 않음<br>
<input type="submit" value="확인">
</form>
</body>
</html>