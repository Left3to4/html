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
	String userid = request.getParameter("id");
	String name = request.getParameter("username");
	String phone = request.getParameter("userphone");
	String address = request.getParameter("useraddress");
	String email = request.getParameter("useremail");
	String relationship = request.getParameter("relationship");
	String strUserid = null;
	PreparedStatement ps = null;

	String url_mysql = "jdbc:mysql://localhost:3306/test2?serverTimezone=Asia/Seoul&characterEncoding=utf8&&userSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();

		String query = "update addresstable set name=?, phone=?, address=?, email=?, relationship=? where id='" + userid + "';";

		ps=conn_mysql.prepareStatement(query);
		ps.setString(1, name);
		ps.setString(2, phone);
		ps.setString(3, address);
		ps.setString(4, email);
		ps.setString(5, relationship);
		ps.executeUpdate();

		conn_mysql.close();

		session.setAttribute("ID", userid);
		session.setAttribute("NAME", name);
		session.setAttribute("PHONE", phone);
		session.setAttribute("ADDRESS", address);
		session.setAttribute("EMAIL", email);
		session.setAttribute("RELATIONSHIP", relationship);
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	RequestDispatcher dispatcher=request.getRequestDispatcher("addressupdateresult.jsp");
	dispatcher.forward(request, response);
	%>
</body>
</html>