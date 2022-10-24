<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="com.javalec.javabean.Student" scope="session"/> <!-- bean for session -->
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

<h2>JAVA Bean에 저장되었습니다.</h2>
</body>
</html>