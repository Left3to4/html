<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkLogin() {
		var form = document.loginForm;
		if (form.id.value == "") {
			alert("아이디를 입력하세요");
			form.id.focus();
			return false;
		}
		if (form.pw.value == "") {
			alert("비밀번호를 입력하세요");
			form.pw.focus();
			return false;
		}

		form.submit();
	}
</script>
<body>
	<form name="loginForm" action="validation3.jsp" method="post">
		<p>
			ID: <input type="text" name="id">
		<p>
			PW: <input type="text" name="pw">
		<p>
			<input type="button" value="OK" onclick="checkLogin()">
	</form>
</body>
</html>