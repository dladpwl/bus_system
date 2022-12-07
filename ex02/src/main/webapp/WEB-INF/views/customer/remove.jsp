<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>사용자 탈퇴</title>
<style>
.container {
padding: 5%;
}
.login-form {
	margin: auto;
    width: 300px;
    border-radius: 5px;
    text-align: center;
    padding: 20px;
}
.input {
	width: 100%;
    padding: 10px;
    box-sizing: border-box;
    border-radius: 5px;
    border: none;
    }
.btn {
	font-family: 'Do Hyeon', sans-serif;
	position: relative;
    border: none;
    padding: 5px 20px;
    border-radius: 10px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
    color: #1e6b7b;
    text-align: center;
	height:45px; 
	width:100px; 
    background: whitesmoke;
    display: table-cell;
    margin: 20px;
}
</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Luckiest+Guy&display=swap" rel="stylesheet">
</head>

<body style="background-color:rgb(248, 238, 225);">
<div class="container"> 
   <h1 style="text-align: center; font-size : 48px; font-family: 'Luckiest Guy', cursive; ">DELETE</h1><br><br>
	<div class="container" style="width: 30%; margin-top: 100px;">
		<form name="loginFrm" method="post" action="/customer/remove">
			<h3 style="margin-bottom: 40px; text-align : center; color: #01428c;  font-weight: bold;"> 회원탈퇴 </h3>

			<div class="mb-3">
				<h5 style="margin-bottom: 40px; text-align : center; "> 정말로 탈퇴 하시겠습니까? </h5>
			</div>
			<input type="button" class="w-100 btn btn-lg text-white" style="background-color: #234C9B;" onClick="location.href='/customer/remove'" value="탈퇴"  >
		</form>
	</div>
</body>
</html>