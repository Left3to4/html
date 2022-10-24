<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String userid = request.getParameter("userid");
	String strUserid = null;
	PreparedStatement ps = null;

	String url_mysql = "jdbc:mysql://localhost:3306/test2?serverTimezone=Asia/Seoul&characterEncoding=utf8&&userSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();

		String query = "update test_table set userid=? where id=?";

		ps=conn_mysql.prepareStatement(query);
		ps.setString(1, userid);
		ps.setString(2, (String)session.getAttribute("ID"));
		ps.executeUpdate();

		conn_mysql.close();

		session.setAttribute("NEW", userid);
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	response.sendRedirect("updateTest4.jsp");
	%>
</body>
</html>