<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산 결과</title>
</head>
<body>
	<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	String operator = request.getParameter("operator");
	double result = 0;
	
	if (operator.equals("덧셈")){
		result=num1+num2;
	}
	else if (operator.equals("뺄셈")){
		result=num1-num2;
	}
	else if (operator.equals("곱셈")){
		result=num1*num2;
	}
	else if (operator.equals("나눗셈")){
		result=(double)num1/num2;
	}
	%>
	
	두 수의 <%=operator%>은 <%=String.format("%.3f",result) %> 입니다.
</body>
</html>