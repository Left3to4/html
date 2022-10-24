<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="com.javalec.javabean.Student" scope="request"/> <!-- bean for request -->
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

<jsp:forward page="javaBean3.jsp"/>
</body>
</html>