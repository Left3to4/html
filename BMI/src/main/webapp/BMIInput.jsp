<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 계산</title>
</head>
<body>
	<form action="BMIResult.jsp" method="get">
		<table border="0">
			<tr>
				<td>키(cm):</td>
				<td><input type="text" name="height" size=5></td>
			</tr>
			<tr>
				<td>몸무게(kg):</td>
				<td><input type="text" name="weight" size=5></td>
			</tr>
		</table>
		<input type="submit" name="submitbtn" value="확인">
	</form>
</body>
</html>