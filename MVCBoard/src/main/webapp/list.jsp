<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style type="text/css">
body {
	background-color: #99ccff;
}
div {
	margin : 20px;
}
a{
color:black;
}
</style>
</head>
<body>
<div align="center" style="height:50%">
<div align="center" style="background-color:#e7e7e7;width:50%">
	<h1>MVC 게시판</h1>
	<table class="table table-hover">
		<tr style="background-color:#bbbbbb">
			<th>번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>작성일</th>
		</tr>
		<c:forEach items="${list }" var="dto">
			<tr>
				<td>${dto.bid}</td>
				<td>${dto.bName}</td>
				<td><a href="content_view.do?bid=${dto.bid}">${dto.bTitle}</a></td>
				<td>${dto.bDate}</td>
			</tr>
		</c:forEach>
		<tr>
			
			<td colspan="5" align="center"><span style="background-color:#99ccff;width:60px;height:100%"><a href="write_view.do">글작성</a></span></td>
			
		</tr>
	</table>
</div>
</div>
</body>
</html>