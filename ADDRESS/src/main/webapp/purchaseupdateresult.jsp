<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
<h3>수정결과</h3>
Seq: ${ID }<br>
이름: ${NAME }<br>
전화번호: ${PHONE }<br>
주소: ${ADDRESS }<br>
이메일: ${EMAIL }<br>
관계: ${RELATIONSHIP }<br>
<br>
<a href="http://localhost:8080/ADDRESS/addresstable.jsp">처음으로</a>
</body>
</html>