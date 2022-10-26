<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 주소록</title>
</head>
<body>
<div align="center" style="height:50%">
<div align="center" style="background-color:#e7e7e7;width:50%">
	<h1>MVC 주소록</h1>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>이메일</th>
			<th>관계</th>
		</tr>
		<c:forEach items="${list }" var="dto">
			<tr>
				<td><a href="detail_view.do?id=${dto.id}">${dto.id}</a></td>
				<td>${dto.name}</td>
				<td>${dto.phone}</td>
				<td>${dto.address}</td>
				<td>${dto.email}</td>
				<td>${dto.relationship}</td>
			</tr>
		</c:forEach>
		<tr>
			
			<td colspan="6" align="center"><a href="write_address.do">등록</a></td>
			
		</tr>
	</table>
</div>
</div>
</body>
</html>