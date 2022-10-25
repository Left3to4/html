<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="update" action="purchaserDelete_04.jsp" method="post">
		사용자 ID: <input type="text" name="id" size="10" value="${ID }" readonly="readonly"><br>
		성명: <input type="text" name="username" size="10" value="${NAME }" readonly="readonly"><br>
		전화번호: <input type="text" name="userphone" size="10" value="${TEL }" readonly="readonly"><br>
		주소: <input type="text" name="useraddress" size="10" value="${ADDRESS }" readonly="readonly"><br>
		<input type="submit" value="확인">
	</form>
</body>
</html>