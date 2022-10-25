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
	form.action="addressdeleteprocess.jsp";
	form.submit();
}
function updateaction(){
	form=document.updatedelete;
	form.action="addressupdateprocess.jsp";
	form.submit();
}
</script>
<body>
<body>
<div align="center">
<%request.setCharacterEncoding("utf-8"); %>
	<form name="updatedelete" action="#" method="post">
		Seq: <input type="text" name="id" size="10" value="${ID }" readonly="readonly"><br>
		성명: <input type="text" name="username" size="10" value="${NAME }"><br>
		전화번호: <input type="text" name="userphone" size="10" value="${PHONE }"><br>
		주소: <input type="text" name="useraddress" size="10" value="${ADDRESS }"><br>
		이메일: <input type="text" name="useremail" size="10" value="${EMAIL }"><br>
		관계: <input type="text" name="relationship" size="10" value="${RELATIONSHIP }"><br>
		<input type="button" value="삭제" onclick="deleteaction()"><br>
		<input type="button" value="수정" onclick="updateaction()"><br>
	</form>
</div>
</body>
</html>