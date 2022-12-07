<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Response.Write("<script>alert('아이디와 비밀번호를 다시 확인해주세요');</script>");
Response.Write("<script>location.href='/customer/login';</script>");
</body>
</html>