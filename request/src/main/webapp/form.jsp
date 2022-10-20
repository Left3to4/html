<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 정보 입력</title>
</head>
<body>
	<form action="requestparameter.jsp" method="get">
		이름: <input type="text" name="userName"> <br>
		아이디: <input type="text" name="userID"> <br>
		비밀번호: <input type="password" name="userPW"> <br>
		취미: 
		<input type="checkbox" name="hobby" value="독서">독서
		<input type="checkbox" name="hobby" value="체스">체스
		<input type="checkbox" name="hobby" value="게임">게임
		<input type="checkbox" name="hobby" value="여행">여행 <br>
		전공: 
		<input type="radio" name="major" value="대수학" checked="checked">대수학
		<input type="radio" name="major" value="기하학">기하학
		<input type="radio" name="major" value="해석학">해석학 <br>
		protocol: 
		<select name="protocol">
			<option value="HTTP" selected="selected">HTTP</option>
			<option value="ICMP">ICMP</option>
			<option value="TELNET">TELNET</option>
			<option value="ARP">ARP</option>
			<option value="UDP">UDP</option>
		</select> <br>
		<input type="submit" name="submitbtn" value="전송">
		<input type="reset" name="cancelbtn" value="취소">
	</form>
</body>
</html>