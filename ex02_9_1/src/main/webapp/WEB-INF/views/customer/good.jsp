<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="reset" class="btn" value="취소" >
	        <input type="button" class="btn" value="탈퇴" onclick="location.href='/customer/remove'" ><br>
	        <input type="submit" class="btn" value="로그인" onclick="location.href='/customer/login'">
	        <input type="button" class="btn" value='회원가입' onclick="location.href='/customer/register'" >
	        <input type="button" class="btn" value='회원수정' onclick="location.href='/customer/modify'" >
</body>
</html>