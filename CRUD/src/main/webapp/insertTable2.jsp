<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
String userid = request.getParameter("userid");

String url_mysql = "jdbc:mysql://localhost:3306/test2?serverTimezone=Asia/Seoul&characterEncoding=utf8&&userSSL=false";
String id_mysql = "root";
String pw_mysql = "qwer1234";

PreparedStatement ps = null;

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
	Statement stmt_mysql = conn_mysql.createStatement();

	String query = "insert into test_table (userid) values (?)";

	ps = conn_mysql.prepareStatement(query);
	ps.setString(1, userid);
	ps.executeUpdate();

	conn_mysql.close();
} catch (Exception e) {
	e.printStackTrace();
}

response.sendRedirect("insertTable3.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>