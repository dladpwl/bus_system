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
   <h1 style="text-align: center; font-size : 48px; font-family: 'Luckiest Guy', cursive; ">MODIFY</h1><br><br>
<div class="container" style="width:70%; margin-top: 70px;">
		<form name="memberFrm" method="post" action="/customer/modify">
			<h3 style="margin-bottom: 40px; text-align : center; color: #01428c;  font-weight: bold;"> 회원정보 수정 </h3>

			<div class="Aligner" align="center">
				<div class="Aligner-item"></div>
				<table class="table" align="center" cellspacing="0">
					<tr>
						<td colspan="5" height="30" align="center" bgcolor=#234C9B " span style="color: white;">회원기본정보</td>
					</tr>
					<tr>
						<td align="center">이메일</td>
						<td colspan="4"><input type="text" name="email" maxlength="20" value="${customer.email }" disabled></td>
					</tr>
					
					<tr>
						<td align="center">비밀번호</td>
						<td colspan="4"><input type="password" name="userPassword" maxlength="20"> 4~20자리의 영문 대소문자와 숫자로만 입력</td>
					</tr>
					 
					<tr>
						<td align="center">비밀번호 확인</td>
						<td colspan="5"><input type="password" id="pwdcheck" maxlength="12"></td>
					</tr>
					
					<tr>
						<td align="center">이름</td>
						<td colspan="3"><input type="text" name="userName" maxlength="20" value="${customer.name }"></td>
					</tr>
					<tr>
						<td colspan="5" height="30" align="center" bgcolor=#234C9B " span style="color: white;">개인정보</td>
					</tr>
					<tr>
						<td align="center">생년월일</td>
						<td colspan="4"><input type="text" name="userBirthday" size="6" maxlength="6" value="${customer.birth }"> 예)801212</td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>

			</div>
			</nav>
			<p align="center">
				<input class="btn text-white mr-1" style="background-color: #234C9B;"type="reset" value="취소">
				<input class="btn text-white mr-1" style="background-color: #234C9B;"type="button" value="수정" onClick="inputCheck()">
				<input class="btn text-white mr-1" style="background-color: #234C9B;"type="button" value="탈퇴" onClick="location.href='memberDelete.jsp'">

</body>
</html>