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
		request.setAttribute("ID", id);
		request.setAttribute("NAME", name);
		request.setAttribute("TEL", tel);
		request.setAttribute("ADDRESS", address);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("purchaserSelect_03.jsp");
		dispatcher.forward(request, response);
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
</body>
</html>