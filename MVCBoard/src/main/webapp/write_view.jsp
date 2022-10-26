<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
a{
color:black;
}
</style>
<meta charset="UTF-8">
<title>글 작성</title>
</head>
<body>
<div align="center">
<h2>게시글 작성</h2>
<form action="write.do" method="post">
<table border="0" style="margin:20px">
	<tr>
		<td>이름: </td>
		<td><input type="text" name="bName"></td>
	</tr>
	<tr>
		<td>제목:  </td>
		<td><input type="text" name="bTitle"></td>
	</tr>
	<tr>
		<td>내용:  </td>
		<td><textarea name="bContent" rows="18" cols="50"></textarea></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="입력">&nbsp;&nbsp;&nbsp;&nbsp;<a href="list.do">목록보기</a></td>
	</tr>
</table>
</form>
</div>
</body>
</html>