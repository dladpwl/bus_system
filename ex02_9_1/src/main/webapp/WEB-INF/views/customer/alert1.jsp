<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String url = "/customer/register";
	String msg = "이미 존재하는 이메일입니다.";
	%>
<script type="text/javascript">
	alert("<%=msg%>");
	location.href="<%=url%>";
</script>
</body>
</html>