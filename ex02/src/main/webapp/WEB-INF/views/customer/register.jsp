<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>사용자 회원가입</title>
</head>
<body>
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
   <h1 style="text-align: center; font-size : 48px; font-family: 'Luckiest Guy', cursive; ">SIGN UP</h1><br><br>
   	 <form class="login-form" method='post' action='/customer/register' >
        <input type="text" class="input" placeholder="name" name="name"><br><br>
        <input type="text" class="input" placeholder="email" name="email"><br><br>
        <input type="number" class="input" placeholder="phone" name="phone"><br><br>
        <input type="date" class="input" placeholder="birth" name="birth"><br><br>
        <input type="password" class="input" placeholder="password" name="passwd"><br><br>
        <br><br>
        <input type="reset" class="btn" value="취소" >
        <input type="button" class="btn" value="탈퇴" onclick="location.href='/customer/remove''"><br>
        <input type="submit" class="btn" value="등록" >
        <input type="button" class="btn" value='로그인' onclick="location.href='/customer/login'" >
     </form>
</div>
</body>
</html>