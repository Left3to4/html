<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
a{
color:black;
}
td{
margin:20px;
}
tr{
margin:20px;
}
</style>
<meta charset="UTF-8">
<title>게시글 수정/삭제</title>
</head>
<body>
<div align="center">
<h2>게시글 수정/삭제</h2>
<form action="modify.do" method="post">
<input type="hidden" name="bid" value="${content_view.bid}"> <!-- 다른 모듈로 보내기 위한 변수 -->
<table border="0" style="margin:20px">
	<tr>
		<td>번호: </td>
		<td>${content_view.bid}</td>
	</tr>
	<tr>
		<td>이름: </td>
		<td><input type="text" name="bName" value="${content_view.bName}"></td>
	</tr>
	<tr>
		<td>제목:  </td>
		<td><input type="text" name="bTitle" value="${content_view.bTitle}"></td>
	</tr>
	<tr>
		<td>내용:  </td>
		<td><textarea name="bContent" rows="18" cols="50">${content_view.bContent}</textarea></td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="submit" value="수정">&nbsp;&nbsp;&nbsp;&nbsp;<a href="list.do">목록보기</a>
		&nbsp;&nbsp;&nbsp;&nbsp;<a href="delete.do?bid=${content_view.bid}">삭제</a>
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>