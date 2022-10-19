<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Declaration2</title>
</head>
<body>

	<%!int a = 1;

	public int pow() {
		a = a * 2;
		return a;
	}%>

	2
	<sup>1</sup>=<%=pow()%><br> 2
	<sup>2</sup>=<%=pow()%><br> 2
	<sup>3</sup>=<%=pow()%><br> 2
	<sup>4</sup>=<%=pow()%><br>
</body>
</html>