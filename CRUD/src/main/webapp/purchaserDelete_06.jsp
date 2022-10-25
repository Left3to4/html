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
PreparedStatement ps = null;
String id = request.getParameter("userid");
int count=0;

String url_mysql = "jdbc:mysql://localhost:3306/test2?serverTimezone=Asia/Seoul&characterEncoding=utf8&&userSSL=false";
String id_mysql = "root";
String pw_mysql = "qwer1234";

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
	Statement stmt_mysql = conn_mysql.createStatement();

	String query = "select count(*) from purchaserinfo where userid='" + id + "';";

	ResultSet rs = stmt_mysql.executeQuery(query);

	while (rs.next()) {
		count=rs.getInt(1);
	}

	conn_mysql.close();
	request.setAttribute("ID", id);
	
	if (count==0){
		RequestDispatcher dispatcher=request.getRequestDispatcher("purchaserDelete_07.jsp");
		dispatcher.forward(request, response);
	} else{
		RequestDispatcher dispatcher=request.getRequestDispatcher("purchaserDelete_02.jsp");
		dispatcher.forward(request, response);
	}
} catch (Exception e) {
	e.printStackTrace();
}
%>
</body>
</html>