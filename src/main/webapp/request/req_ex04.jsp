<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String nick = request.getParameter("nick");
	// int age = Integer.parseInt(request.getParameter("age"));
	String age = request.getParameter("age");
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>넘어온 데이터</h3>
	<%=nick %><br>
	<%=age %><br>
</body>
</html>