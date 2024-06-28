<%@page import="java.util.ArrayList"%>
<%@page import="com.model.DepartmentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	// select_result 페이지에서 조회한 결과를 얻는다
	ArrayList<DepartmentDTO> list = (ArrayList<DepartmentDTO>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--활성화된 부서수: <%=list.size() %> --%> <!-- jdbc때문에 주석처리 -->
	null이 아닌 부서의 수 : ${fn:length(list) }
	<h3>부서 데이터</h3>
	<table>
		<tr>
			<th>부서번호</th>
			<th>부서명</th>
			<th>매니저번호</th>
			<th>부서위치번호</th>
		</tr>
		<% for(DepartmentDTO dto : list) { %>
		<tr>
			<td><%=dto.getDepartmentId() %></td>
			<td><%=dto.getDepartmentName() %></td>
			<td><%=dto.getManagerId() %></td>
			<td><%=dto.getLocationId() %></td>
		</tr>
		<% } %>
	</table>
</body>
</html>