<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="result2.jsp" method="get">
		숫자 1: <select name="num1">
			<%!
			String cboption="";
			%>
			<%
			for (int i = 1; i <= 100; i++) {
				cboption+="<option value=\"" + i + "\">" + i + "</option>";
			}
			out.println(cboption);
			%>
		</select><br>
		숫자 2: <select name="num2">
			<%
			out.println(cboption);
			%>
		</select><br>
		계산방법: <input type="checkbox" name="operator" value="덧셈">덧셈
		<input type="checkbox" name="operator" value="뺄셈">뺄셈
		<input type="checkbox" name="operator" value="곱셈">곱셈
		<input type="checkbox" name="operator" value="나눗셈">나눗셈
		<input type="submit" name="submitbtn" value="계산">
	</form>
</body>
</html>