<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String email = request.getParameter("email");
String relationship = request.getParameter("relationship");

String url_mysql = "jdbc:mysql://localhost:3306/test2?serverTimezone=Asia/Seoul&characterEncoding=utf8&&userSSL=false";
String id_mysql = "root";
String pw_mysql = "qwer1234";

PreparedStatement ps = null;

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
	Statement stmt_mysql = conn_mysql.createStatement();

	String query = "insert into addresstable (name, phone, address, email, relationship) values (?, ?, ?, ?, ?)";

	ps = conn_mysql.prepareStatement(query);
	ps.setString(1, name);
	ps.setString(2, phone);
	ps.setString(3, address);
	ps.setString(4, email);
	ps.setString(5, relationship);
	ps.executeUpdate();

	conn_mysql.close();
	
	session.setAttribute("NAME", name);
	session.setAttribute("PHONE", phone);
	session.setAttribute("ADDRESS", address);
	session.setAttribute("EMAIL", email);
	session.setAttribute("RELATIONSHIP", relationship);
} catch (Exception e) {
	e.printStackTrace();
}

response.sendRedirect("addressinsertresult.jsp");
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