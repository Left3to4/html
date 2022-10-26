<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
background:#eeeeee;
}
span{
margin:10px 10px 10px 10px;
}
table{
text-align:center;
margin:20px;
}
a{
color: black;
}
a:hover{
color: blue;
}
</style>
</head>
<body>
<div align="center" style="height:100%">
<div align="center" style="background:#ffffff;width:50%;height:100%">
	<h1>One Line 게시판</h1>
	<table border="1">
		<tr>
			<th><span>번호</span></th>
			<th><span>이름</span></th>
			<th><span>제목</span></th>
			<th><span>날짜</span></th>
			<th><span>삭제</span></th>
		</tr>
		<c:forEach items="${list}" var="dto">
			<tr>
				<td><span>${dto.id}</span></td>
				<td><span>${dto.name}</span></td>
				<td><span>${dto.title}</span></td>
				<td><span>${dto.date}</span></td>
				<td><a href="delete.do?id=${dto.id}">X</a></td>
			</tr>
		</c:forEach>
		<tr>
			
			<td colspan="6"><a href="write_view.do">글작성</a></td>
			
		</tr>
	</table>
</div>
</div>
</body>
</html>