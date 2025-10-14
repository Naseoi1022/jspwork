<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* Cookie cookie1 = new Cookie("Name", "김지원");
	response.addCookie(cookie1); */
	
	response.addCookie(new Cookie("Name", "김지원!!"));
	response.addCookie(new Cookie("Age", "23"));
	response.addCookie(new Cookie("Gender", "Male"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookies</title>
</head>
<body>
	쿠키생성</p>
	쿠키 내용은 <a href="02.2.testcookies.jsp">클릭하세요</a>

</body>
</html>