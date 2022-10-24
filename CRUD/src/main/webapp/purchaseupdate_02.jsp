<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객정보 수정</title>
</head>
<script type="text/javascript">
function checkform(){
	var regExpId = /^[a-z|A-Z]+$/
	var regExpName = /^[가-힣]*$/
	var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/
	var regExpAddress = /^[0-9|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]*$/
	
	var form=document.update;
	var id=form.id.value;
	var name=form.username.value;
	var phone=form.userphone.value;
	var address=form.useraddress.value;
	
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
	<h4>회원 정보를 수정 후 확인 버튼을 누르세요</h4>
	<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("userid");
	String name = null;
	String tel = null;
	String address = null;
	PreparedStatement ps = null;

	String url_mysql = "jdbc:mysql://localhost:3306/test2?serverTimezone=Asia/Seoul&characterEncoding=utf8&&userSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();

		String query = "select name, tel, address from purchaserinfo where userid='" + id + "';";

		ResultSet rs = stmt_mysql.executeQuery(query);

		while (rs.next()) {
			name = rs.getString(1);
			tel = rs.getString(2);
			address = rs.getString(3);
		}

		conn_mysql.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
	
	<form name="update" action="purchaseupdate_03.jsp" method="post">
		사용자 ID: <input type="text" name="id" size="10" value="<%=id %>" readonly="readonly"><br>
		성명: <input type="text" name="username" size="10" value="<%=name %>"><br>
		전화번호: <input type="text" name="userphone" size="10" value="<%=tel %>"><br>
		주소: <input type="text" name="useraddress" size="10" value="<%=address %>"><br>
		<input type="button" value="확인" onclick="checkform()">
	</form>
</body>
</html>