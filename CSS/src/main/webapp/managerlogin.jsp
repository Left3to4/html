<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.104.2">
<title>관리자 로그인</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">

<script type="text/javascript">
function backtomain(){
	var form=document.login;
	form.action="main.jsp";
	form.submit();
}
</script>



<!-- Favicons -->
<meta name="theme-color" content="#712cf9">


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.b-example-divider {
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}
</style>


<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">

</head>
<body class="text-center">

	<main class="form-signin w-100 m-auto">
		<form action="loginprocess.jsp" name="login" method="post">
			<h1 class="h3 mb-3 fw-normal">관리자 로그인</h1>

			<div class="form-floating">
				<input type="text" class="form-control" id="id" name="id"
					placeholder="name@example.com"> <label for="floatingInput">ID</label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" id="floatingPassword"
					placeholder="Password"> <label for="floatingPassword">Password</label>
			</div>
			<input class="w-100 btn btn-lg btn-dark" type="submit" value="로그인">
			<button type="button" class="btn btn-link" style="color:black">ID 찾기</button>
			<button type="button" class="btn btn-link" style="color:black">비밀번호 찾기</button><br>
			<button type="button" class="btn btn-link" style="color:black">계정 생성</button><br>
			<button type="button" class="btn btn-link" style="color:black" onclick="backtomain()">메인으로</button><br>
			
		</form>
	</main>
	
	


	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>