<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 코어 라이브러리를 c태그로 쓰겠다는 뜻 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	변수와 출력
	<c:set var="a" value="10" />
	<c:out value="${a }" />
	
	<hr>
	<c:if test="${a >= 10 }">
		<p>무조건 실행되는 문장</p>
	</c:if>
	
	<hr>
	<c:if test="&{param.age >= 20 }">
		<p>성인입니다 </p>
	</c:if>	
	
	<%-- 원래 쓰던 코드를 위에 처럼 간결하게 처리할 수 있음
	<%
		String age = request.getParameter("age");
		int x = Integer.parseInt(age);
	%>
	<% if(x >= 20) { %>
		<p>성인입니다</p>
	<% } %> 
	--%>
	
	<hr>
	<c:if test="${param.name == '홍길동' }">
		<p>홍길동님 안녕하세요? </p>
	</c:if>
</body>
</html>