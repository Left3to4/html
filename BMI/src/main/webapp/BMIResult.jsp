<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 결과</title>
</head>
<body>
	<%!
	double height = 0;
	int weight = 0;
	double bmi = 0;
	String img = null;
	%>
	<%
	height = (double) Integer.parseInt(request.getParameter("height"));
	weight = Integer.parseInt(request.getParameter("weight"));
	bmi = (double) (weight) / ((height * height)/(100*100));
	%>
	키: <%=height%>cm<br>
	몸무게: <%=weight%>kg<br>
	BMI: <%=String.format("%.2f", bmi)%><br>

	<%
	if (bmi <= 18.5) {
		out.println("저체중입니다.");
		img = "lightweight";
	} else if (bmi <= 25) {
		out.println("정상입니다.");
		img = "standard";
	} else if (bmi <= 25) {
		out.println("과체중입니다.");
		img = "overweight";
	} else if (bmi <= 30) {
		out.println("비만입니다.");
		img = "obese";
	}
	%>
	<br>
	<img src="./image/<%=img %>.png" width=200>

</body>
</html>