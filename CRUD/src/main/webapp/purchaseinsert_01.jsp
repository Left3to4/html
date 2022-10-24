<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function checkform(){
	var regExpId = /^[a-z|A-Z]+$/
	var regExpName = /^[가-힣]*$/
	var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/
	var regExpAddress = /^[0-9|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]*$/
	
	var form=document.signup;
	var id=form.userid.value;
	var name=form.name.value;
	var phone=form.phone.value;
	var address=form.address.value;
	
	if(!regExpId.test(id)){
		alert("아이디는 영문만 입력이 가능합니다.");
		form.id.select();
		return;
	}
	if(!regExpName.test(name)){
		alert("이름은 한글만 입력이 가능합니다.");
		form.name.select();
		return;
	}
	if(!regExpPhone.test(phone)){
		alert("전화번호 양식을 확인해 주세요.");
		form.phone.select();
		return;
	}
	if(!regExpAddress.test(address)){
		alert("주소 양식을 확인해 주세요.");
		form.address.select();
		return;
	}
	form.submit();
}
</script>
<body>
<form name="signup" action="purchaseinsert_02.jsp" method="post">
<p>사용자 ID: <input type="text" name="userid">
<p>성명: <input type="text" name="name">
<p>전화번호: <input type="text" name="phone">
<p>주소: <input type="text" name="address">
<br><br>
<input type="button" value="확인" onclick="checkform()">
</form>
</body>
</html>