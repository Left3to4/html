<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>Insert title here</title>
</head>
<body>
<div class= "w-50" align="center" style="width=500px">
<%
String queryname=request.getParameter("query");
String querycontent=request.getParameter("content");
int cnt=0;

if(queryname==null){
	queryname="name";
	querycontent="";
}

String conditionquery="select id, name, phone, address, email, relationship from addresstable ";
String conditionquery2="where " + queryname + " like '%" + querycontent + "%'";

String url_mysql = "jdbc:mysql://localhost:3306/test2?serverTimezone=Asia/Seoul&characterEncoding=utf8&&userSSL=false";
String id_mysql = "root";
String pw_mysql = "qwer1234";
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
	Statement stmt_mysql = conn_mysql.createStatement();


	ResultSet rs = stmt_mysql.executeQuery(conditionquery + conditionquery2);
%>
<form action="addresstable.jsp">
	검색 선택: <select name="query">
		<option value="name" selected="selected">이름</option>
		<option value="phone">전화번호</option>
		<option value="address">주소</option>
		<option value="relationship">관계</option>
	</select>&nbsp;&nbsp;&nbsp;
	<input type="text" name="content" size="30">
	<input type="submit" value="검색" class="btn btn-default">
</form>

<h3>고객명단 리스트</h3>
	<table border="1" class="table table-condensed">
		<tr>
			<th>Seq</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>전자우편</th>
			<th>관계</th>
		</tr>
	<%
		while (rs.next()){
	%>
	
	<tr>
		<td><a href="http://localhost:8080/ADDRESS/addressdetail.jsp?userid=<%=rs.getString(1) %>"><%=rs.getString(1) %></a></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getString(5) %></td>
		<td><%=rs.getString(6) %></td>
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
	<form action="addressinsert.jsp">
		<input type="submit" value="입력" class="btn btn-default">
	</form>
	<br>총 <%=cnt %>건
</div>
</body>
</html>