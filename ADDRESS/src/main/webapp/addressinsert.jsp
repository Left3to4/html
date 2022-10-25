<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="margin:5px">
<div align="center">
<form name="signup" action="addressinsertprocess.jsp" method="post">
<p>성명: <input type="text" name="name">
<p>전화번호: <input type="text" name="phone">
<p>주소: <input type="text" name="address">
<p>이메일: <input type="text" name="email">
<p>관계: <input type="text" name="relationship">
<br><br>
<input type="submit" value="입력" class="btn btn-default">
</form>
</div>
</body>
</html>