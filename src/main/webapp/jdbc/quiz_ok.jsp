<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>조회한 부서정보</h3>
	<c:if test="${dto == null }">
		<p>조회한 부서는 없는 번호입니다</p>
	</c:if>
	
	<p>${dto.departmentId }</p>
	<p>${dto.departmentName }</p>
	<p>${dto.managerId }</p>
	<p>${dto.locationId }</p>

	<a href="quiz01.jsp">다시 조회하기</a>
</body>
</html>
