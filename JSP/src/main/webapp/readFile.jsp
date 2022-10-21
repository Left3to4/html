<%@page import="java.io.FileReader"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 읽기</title>
</head>
<body>
	<%
	BufferedReader reader = null;
	try {
		String filePath=application.getRealPath("input.txt"); //파일의 위치 불러오기
		reader=new BufferedReader(new FileReader(filePath));
		
		while(true){
			String str=reader.readLine();
			if (str==null){ //파일을 다 읽었을 때
				break;
			}
			out.println(str + "<br>");
		}
	} catch(FileNotFoundException file){
		out.println("파일이 존재하지 않습니다");
	} catch(IOException io){
		out.println("파일을 읽을 수 없습니다");
	} finally{ //try가 정상적이든 에러가 있든 무조건 와서 처리
		try{
			reader.close(); //다른 사람이 읽을 수 있게 close
		} catch(Exception e){
			
		}
	}
	%>
</body>
</html>