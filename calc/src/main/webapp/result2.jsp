<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
int num1=Integer.parseInt(request.getParameter("num1"));
int num2=Integer.parseInt(request.getParameter("num2"));
double result=0;
String operation=request.getParameter("btn");
String operator=null;
switch (request.getParameter("btn")){
case ("����"):
	result=num1+num2;
	operator="+";
	break;
case("����"):
	result=num1-num2;
	operator="-";
	break;
case("������"):
	result=num1*num2;
	operator="*";
	break;
case("�ʱ�ȭ��"):
	result=(double)num1/num2;
	operator="/";
	break;
default:
	break;
}
%>
ù��° ��: <%=num1 %><br>
�� ��° ��: <%=num2 %><br>
<%=num1 %> <%=operator %> <%=num2 %> = <%=result %>
<form action="result.jsp" method="get">
<input type="submit" name="btn" value=<%=operation %>>
</form>
</body>
</html>