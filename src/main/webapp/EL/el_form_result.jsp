<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// String name = request.getParameter("name");
	// String age = request.getParameter("age");
	// ${param. }으로 적어서 생략할 수 있음 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>파라미터 값은 param. 객체로 받을 수 있다</h3>
	${param.name }<br>
	${param.age }
</body>
</html>
