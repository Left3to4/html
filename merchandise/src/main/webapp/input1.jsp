<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="filewrite.jsp" method="get">
수량: <input type="text" name="quantity"><br>
크기: <input type="radio" name="size" value="large" checked="checked">대
<input type="radio" name="size" value="medium">중
<input type="radio" name="size" value="small">소<br>
색상: <select name="color">
			<option>베이지</option>
			<option>브라운</option>
			<option>카키</option>
		</select> <br>
<input type="submit" name="submitbtn" value="저장">
</form>
</body>
</html>