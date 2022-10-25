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
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("userid");
	String name = null;
	String phone = null;
	String address = null;
	String email = null;
	String relationship = null;
	PreparedStatement ps = null;

	String url_mysql = "jdbc:mysql://localhost:3306/test2?serverTimezone=Asia/Seoul&characterEncoding=utf8&&userSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();

		String query = "select name, phone, address, email, relationship from addresstable where id='" + id + "';";

		ResultSet rs = stmt_mysql.executeQuery(query);

		while (rs.next()) {
			name = rs.getString(1);
			phone = rs.getString(2);
			address = rs.getString(3);
			email = rs.getString(4);
			relationship = rs.getString(5);
		}

		conn_mysql.close();
		request.setAttribute("ID", id);
		request.setAttribute("NAME", name);
		request.setAttribute("PHONE", phone);
		request.setAttribute("ADDRESS", address);
		request.setAttribute("EMAIL", email);
		request.setAttribute("RELATIONSHIP", relationship);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("addressupdate.jsp");
		dispatcher.forward(request, response);
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
</body>
</html>