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
		if (form.id.value.length<4 || form.id.value.length>12){
			alert("아이디는 4~12자 이내로 입력하세요");
			form.id.select();
			return;
		}
		if (form.pw.value.length<4){
			alert("비밀번호는 4~12자 이상으로 입력하세요");
			form.pw.select();
			return;
		}

		form.submit();
	}
</script>
<body>
	<form name="loginForm" action="validation5.jsp" method="post">
		<p>
			ID: <input type="text" name="id">
		<p>
			PW: <input type="text" name="pw">
		<p>
			<input type="button" value="OK" onclick="checkLogin()">
	</form>
</body>
</html>