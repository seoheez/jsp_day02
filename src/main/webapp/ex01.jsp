<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>ex01.jsp<hr>
	<%= request.getContextPath() %> <!-- 방법 1 -->
	${pageContext.request.contextPath } <!-- 방법 2 -->
	
	<c:set var="contextPath" value="${ pageContext.request.contextPath }"/>
	<c:set var="contextPath1" value="<%= request.getContextPath() %>"/>
	<br>path : ${contextPath}<br> <!-- 위에서 만든 변수명으로 출력 -->
	path11 : ${contextPath1 }<br>
	
	
	<a href="${contextPath1 }/ex01_1.jsp">경로이동</a> <!-- 절대경로 이렇게 많이 쓰임 -->
	<a href="<%= request.getContextPath() %>/ex01_1.jsp">경로이동</a>
	<hr>
	<form action="${contextPath }/ex01_1.jsp">
		<input type="checkbox" name="check" value="사과">사과주스
		<input type="checkbox" name="check" value="딸기">딸기주스
		<input type="checkbox" name="check" value="키위">키위주스
		<br>
		<input type="submit" value="전송">
	</form>
</body>
</html>