<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
request.setCharacterEncoding("utf-8");
String userid = request.getParameter("userid");
String name = request.getParameter("name");
String phone = request.getParameter("phone");
String address = request.getParameter("address");

session.setAttribute("USERID", userid);
session.setAttribute("NAME", name);
session.setAttribute("PHONE", phone);
session.setAttribute("ADDRESS", address);

String url_mysql = "jdbc:mysql://localhost:3306/test2?serverTimezone=Asia/Seoul&characterEncoding=utf8&&userSSL=false";
String id_mysql = "root";
String pw_mysql = "qwer1234";

PreparedStatement ps = null;

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
	Statement stmt_mysql = conn_mysql.createStatement();

	String query = "insert into purchaserinfo (userid, name, tel, address, insertdate) values (?, ?, ?, ?, curdate())";

	ps = conn_mysql.prepareStatement(query);
	ps.setString(1, userid);
	ps.setString(2, name);
	ps.setString(3, phone);
	ps.setString(4, address);
	ps.executeUpdate();

	conn_mysql.close();
} catch (Exception e) {
	e.printStackTrace();
}

response.sendRedirect("purchaseinsert_03.jsp");
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