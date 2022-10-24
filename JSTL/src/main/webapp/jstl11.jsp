<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>숫자 포맷</h1>
	첫번째 수: <fmt:formatNumber value="149597870700" groupingUsed="true"/><br>
	두번째 수: <fmt:formatNumber value="3.14159265358979323846264338" pattern="#.##"/><br>
	세번째 수: <fmt:formatNumber value="10.5" pattern="#.00"/>
</body>
</html>