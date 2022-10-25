<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function deleteaction(){
	form=document.updatedelete;
	form.action="purchaserDelete_04.jsp";
	form.submit();
}
function updateaction(){
	form=document.updatedelete;
	form.action="purchaseupdate_03.jsp";
	form.submit();
}
</script>
<body>
<%request.setCharacterEncoding("utf-8"); %>
	<form name="updatedelete" action="#" method="post">
		사용자 ID: <input type="text" name="id" size="10" value="${ID }" readonly="readonly"><br>
		성명: <input type="text" name="username" size="10" value="${NAME }"><br>
		전화번호: <input type="text" name="userphone" size="10" value="${TEL }"><br>
		주소: <input type="text" name="useraddress" size="10" value="${ADDRESS }"><br>
		<input type="button" value="삭제" onclick="deleteaction()"><br>
		<input type="button" value="수정" onclick="updateaction()"><br>
	</form>
</body>
</html>