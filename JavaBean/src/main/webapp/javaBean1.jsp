<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="com.javalec.javabean.Student" scope="page"/> <!-- 이 페이지에서만 쓰기 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:setProperty property="name" name="student" value="Carlson"/> <!-- setter -->
<jsp:setProperty property="age" name="student" value="25"/>
<jsp:setProperty property="grade" name="student" value="6"/>
<jsp:setProperty property="studentNum" name="student" value="10"/>

이름: <jsp:getProperty property="name" name="student"/><br> <!-- getter -->
나이: <jsp:getProperty property="age" name="student"/><br>
학년: <jsp:getProperty property="grade" name="student"/><br>
번호: <jsp:getProperty property="studentNum" name="student"/><br>
</body>
</html>