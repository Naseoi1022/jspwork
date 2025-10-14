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
	Cookie[] cookies = request.getCookies();
	if(cookies!= null) {
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("Name"))
				out.print("이름 : "+ cookies[i].getValue());
			else if(cookies[i].getName().equals("Age"))
				out.print("나이 : "+ cookies[i].getValue());
			else if(cookies[i].getName().equals("Gender"))
				out.print("성별 : "+ cookies[i].getValue());
			out.print("Cookie Name : "+ cookies[i].getName() +"<p/>");
			out.print("Cookie Value : "+ cookies[i].getValue() +"<hr>");
		}
	}
%>
<!-- 메소드 이용해서, 위의 쿠키 얻어오는 출력문에 넣어서 출력 -->

<%!
	String getCookieValue(Cookie[] cookies, String name){
	if(cookies!= null) {
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals(name))
				return cookies[i].getValue();
		}
		
	}
	return null;
	
}

%>
이름 : <%= getCookieValue(cookies,"Name") %><p/>
나이 : <%= getCookieValue(cookies,"Age") %><p/>
성별 : <%= getCookieValue(cookies,"Gender") %><p/>

</body>
</html>