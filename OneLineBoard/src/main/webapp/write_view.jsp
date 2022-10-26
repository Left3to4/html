<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h3>글 작성</h3>
<form action="write.do" style="margin:20px">
이름: <input type="text" name="name" style="margin:10px"><br>
제목: <input type="text" name="title" style="margin:10px"><br>
<input type="submit" value="입력">&nbsp;&nbsp;&nbsp;&nbsp;<a href="list.do">목록보기</a>
</form>
</div>
</body>
</html>