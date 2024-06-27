<%@page import="java.sql.Date"%>
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
	<h3>1부터 100까지 홀수합</h3>
	<%
		int sum = 0;
		for(int i = 1; i <= 100; i+=2) {
			sum = sum + i;
		}
	%>
	결과: <%=sum %>
	
	<br>
	스탭은 생략하면 자동으로 1이 된다
	<br>
	
	<!-- 위의 반목문이랑 똑같음 -->
	<c:set var="sum" value="0" />
	<c:forEach var="i" begin="1" end="100" step="2">
		<c:set var="sum" value="${sum + i }" />
	</c:forEach>
	결과: ${sum }
	
	<h3>구구단 3단</h3>
	<c:forEach var="i" begin="1" end="9">
		3 X ${i } = ${3 * i } <br>
	</c:forEach>
	
	<h3>구구단 2~9단</h3>
	<c:forEach var="i" begin="2" end="9">
		<c:forEach var="j" begin="1" end="9">
			${i } X ${j } = ${i*j }<br>
		</c:forEach>
	</c:forEach>
	
	<br>
	<%
		int[] arr = {1,2,3,4,5};
		for(int a : arr) {
			out.println(a);
		}
	%>
	
	<br>
	<!-- 위의 향상된 for문과 같음 -->
	<c:set var="arr" value="<%= new int[] {1,2,3,4,5} %>" />
	<!-- varStatus : for문의 상태를 알 수 있는 변수 -->
	<c:forEach var="a" items="${arr }" varStatus="s" >
		${s.count }번 ${s.index }인덱스 값 ${a } <br>
	</c:forEach>
</body>
</html>