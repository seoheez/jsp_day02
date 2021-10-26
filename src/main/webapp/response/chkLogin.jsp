<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>chkLogin.jsp<hr>
<c:set var='dbId' value="1"/>
<c:set var='dbPwd' value="1"/>
<c:set var='inputId' value="${param.id }"/>
<c:set var='inputPwd' value="${param.pwd }"/>
<c:choose>
	<c:when test="${dbId eq inputId }">
		<c:choose>
			<c:when test="${dbPwd eq inputPwd }">
				로그인 성공!
			</c:when>
			<c:otherwise>
				비밀번호 틀림
			</c:otherwise>
		
		</c:choose>
	</c:when>
	<c:otherwise>
		<b style="color: red">존재하지 않는 아이디입니다.</b>
	</c:otherwise>
</c:choose>


<%--  
<c:choose> <!-- choose로 감싸져 있으면 이 중 하나만 실행됨. else if와 비슷 -->
	<c:when test="${dbId == inputId && dbPwd eq inputPwd }">
	<c:redirect uri="main.jsp"/>
	</c:when>
	<c:otherwise> <!-- else와 비슷 -->
	<c:redirect uri="loginForm.jsp"/>
	</c:otherwise>
</c:choose>
-->

<%-- 
<c:if test="${dbId == inputId && dbPwd eq inputPwd }">
	인증성공
	<c:redirect uri="main.jsp"/>
</c:if>
<c:if test="${dbId != inputId || dbPwd ne inputPwd }">
	인증실패
	<c:redirect uri="loginForm.jsp"/>
</c:if>
--%>
	<%--
		String dbId = "1";
		String dbPwd = "1";
		String inputId = request.getParameter("id");
		String inputPwd = request.getParameter("pwd");
		if(dbId.equals(inputId) && dbPwd.equals(inputPwd)){
			out.print("인증통과");
			response.sendRedirect("main.jsp?id="+inputId);
			/*
			RequestDispatcher dispatcher = request.getRequestDispatcher("main.jsp");
			dispatcher.forward(request, response);
			*/
		}else{
			out.print("인증실패!!!");
			response.sendRedirect("loginForm.jsp"); //인증이 실패되면 다시 로그인되도록 설정
		}
	--%>
</body>
</html>