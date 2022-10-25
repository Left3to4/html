<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터베이스에서 불러오기</title>
</head>
<body>
<h3>고객명단 리스트</h3>
	<%
	String strUserid = null;
	PreparedStatement ps = null;
	int cnt=0;

	String url_mysql = "jdbc:mysql://localhost:3306/test2?serverTimezone=Asia/Seoul&characterEncoding=utf8&&userSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	String query = "select id, userid from test_table;";
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();


		ResultSet rs = stmt_mysql.executeQuery(query);
	%>
	<table border="1">
		<tr>
			<th>번호</th><th>userid</th>
		</tr>
	<%
		while (rs.next()){
	%>
	
	<tr>
		<td><%=rs.getInt(1) %></td><td><%=rs.getString(2) %></td>
	</tr>
	
	<%
	cnt++;
	}
	%>
	</table>
	<%
		conn_mysql.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
	<br>총 <%=cnt %>건
</body>
</html>