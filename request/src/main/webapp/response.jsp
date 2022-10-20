<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트명 입력</title>
</head>
<body>
	사이트 명을 입력하고 확인 버튼을 누르세요.
	<br>
	<br>
	<form action="response2.jsp" method="post">
		사이트명: <input type="text" name="sitename">
		<input type="submit" value="확인">
		ex)naver, daum, google
	</form>
</body>
</html>