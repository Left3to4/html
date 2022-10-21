<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>성격 테스트</h1><br>
성격 테스트를 위해 데이터 입력 후 확인 버튼을 누르세요<br>
<form action="test" method="get">
이름: <input type="text" name="name"><br>
좋아하는 색: <input type="radio" name="color" value="빨강">빨강
<input type="radio" name="color" value="초록">초록
<input type="radio" name="color" value="파랑">파랑<br>
좋아하는 동물: <select name="animal">
<option>사자</option>
<option>호랑이</option>
<option>강아지</option>
</select><br>
좋아하는 음식(다중 선택 가능): <input type="checkbox" name="food" value="라면">라면
<input type="checkbox" name="food" value="탕수육">탕수육
<input type="checkbox" name="food" value="우동">우동<br>
<input type="submit" value="확인">
</form>
</body>
</html>