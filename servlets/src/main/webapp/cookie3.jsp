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
String animal=request.getParameter("animal");
session.setAttribute("ANIMAL", animal); //서버의 static 변수
%>

당신은 <%=session.getAttribute("FOOD") %>와(과) <%=session.getAttribute("ANIMAL") %>을(를) 좋아합니다.
<%
session.invalidate(); //데이터가 쌓이는 것을 방지하기 위해 필요 없는 정보 삭제
%>
</body>
</html>