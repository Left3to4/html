<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
</head>
<body>
	계산을 위한 숫자를 입력하세요<br>
	<form action="result.jsp" method="get">
		숫자 1: <input type="text" name="num1"> <br>
		숫자 2: <input type="text" name="num2"> <br>
		계산방법: <br>
		<input type="radio" name="operator" value="덧셈">덧셈<br>
		<input type="radio" name="operator" value="뺄셈">뺄셈<br>
		<input type="radio" name="operator" value="곱셈">곱셈<br>
		<input type="radio" name="operator" value="나눗셈">나눗셈<br>
		<input type="submit" name="submitbtn" value="확인">
	</form>
</body>
</html>