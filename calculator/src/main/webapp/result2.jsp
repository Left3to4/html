<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!int num1 = 0;
	int num2 = 0;
	String[] operator = new String[4];

	public double operation(int a, int b, String operator) {
		if (operator.equals("덧셈")) {
			return num1 + num2;
		} else if (operator.equals("뺄셈")) {
			return num1 - num2;
		} else if (operator.equals("곱셈")) {
			return num1 * num2;
		} else {
			return (double) num1 / num2;
		}
	}%>
	<%
	num1 = Integer.parseInt(request.getParameter("num1"));
	num2 = Integer.parseInt(request.getParameter("num2"));
	operator = request.getParameterValues("operator");
	
	for (int i = 0; i < operator.length; i++) {
		out.println(operator[i] + " 결과는 " + operation(num1, num2, operator[i]) + "입니다.<br>");
	}
	%>
</body>
</html>