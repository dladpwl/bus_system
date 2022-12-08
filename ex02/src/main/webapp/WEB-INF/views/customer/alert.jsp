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
	String url = "/customer/login";
	String msg = "이메일과 비밀번호를 확인해주세요";
	%>
<script type="text/javascript">
	alert("<%=msg%>");
	location.href="<%=url%>";
</script>
</body>
</html>