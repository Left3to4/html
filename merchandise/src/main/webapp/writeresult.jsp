<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상품 선택 저장 결과</h1>
	<%
	String result = request.getParameter("result");
	String text;
	if (result.equals("success")) {
		text = "저장되었습니다";
	} else {
		text = "저장에 실패했습니다";
	}
	%>
	<%=text %><br>
	<form action="fileread.jsp" method="get">
	<input type="submit" value="저장 결과 불러오기">
	</form>
</body>
</html>