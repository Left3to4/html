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
PreparedStatement ps = null;

String url_mysql = "jdbc:mysql://localhost:3306/test2?serverTimezone=Asia/Seoul&characterEncoding=utf8&&userSSL=false";
String id_mysql = "root";
String pw_mysql = "qwer1234";
String id=request.getParameter("id");

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
	Statement stmt_mysql = conn_mysql.createStatement();

	String query = "delete from addresstable where id='" + id + "';";

	ps=conn_mysql.prepareStatement(query);
	ps.executeUpdate();

	conn_mysql.close();

	request.setAttribute("ID", id);
	RequestDispatcher dispatcher=request.getRequestDispatcher("addressdeleteresult.jsp");
	dispatcher.forward(request, response);
} catch (Exception e) {
	e.printStackTrace();
}
%>
</body>
</html>