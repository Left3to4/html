<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객정보 수정</title>
</head>
<body>
	<h4>아이디를 수정 후 확인 버튼을 누르세요</h4>
	<%
	String id = request.getParameter("id");
	String strUserid = null;
	PreparedStatement ps = null;

	String url_mysql = "jdbc:mysql://localhost:3306/test2?serverTimezone=Asia/Seoul&characterEncoding=utf8&&userSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();

		String query = "select userid from test_table where id=" + id;

		ResultSet rs = stmt_mysql.executeQuery(query);

		while (rs.next()) {
			strUserid = rs.getString(1);
		}

		conn_mysql.close();

		session.setAttribute("ID", id);
		session.setAttribute("OLD", strUserid);
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
	
	<form action="updateTest3.jsp" method="post">
		사용자 ID: <input type="text" name="userid" size="10" value="<%=strUserid %>">
		<input type="submit" value="수정">
	</form>
</body>
</html>