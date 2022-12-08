<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 정보 수정</title>
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
    color: #1E90FF;
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
<body style="background-color:#baddf9;">
<div class="container"> 
   <h1 style="text-align: center; font-size : 48px; color:white; font-family: 'Luckiest Guy', cursive; ">MODIFY</h1><br><br>
<form method='post' action='/customer/modify'>
		<td align="center">이메일</td>
        <input type="text" class="input" placeholder="이메일" name="email" value="${customer.email}" readonly><br><br>
        <td align="center">전화번호</td>
        <input type="text" class="input" placeholder="전화번호" name="phone" value="${customer.phone}"><br><br>
        <td align="center">이름</td>
		<input type="text" class="input" placeholder="이름" name="name" value="${customer.name}" ><br><br>
		<td align="center">비밀번호</td>
        <input type="password" class="input" placeholder="암호" name="passwd" value="${customer.passwd}"><br><br>
<br><input type='reset' class="btn" value='취소'>
<input type='submit' class="btn" value='전송'>
<input type='button' class="btn" value='회원가입' onclick="location.href='/customer/register'">
<input type='button' class="btn" value='탈퇴' onclick="location.href='/customer/remove'">
<input type='button' class="btn" value='로그아웃' onclick="location.href='/customer/logout'">
</form>

</body>
</html>