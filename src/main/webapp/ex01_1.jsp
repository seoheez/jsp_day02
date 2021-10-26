<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>ex01_1.jsp<hr>
	forEach<br>
	<c:forEach var="var" items="${ paramValues.check }"></c:forEach>
	<%
		String checkbox = request.getParameter("check");
		//values = {"사과", "딸기", "키위"}
		String[] values = request.getParameterValues("check"); //여러개 가져올 경우엔 배열에 넣어야 함
		if(values != null){
			for(int i=0; i<values.length; i++){
				out.print(values[i]);
			}
			//아래와 같은 방식
			out.print("<hr>"); 
			for(String n : values){
				out.print(n);
			}
		}
		//for each문
		out.print("<hr>");
		String[] test = {"안녕", "하세", "요"};
		for(String s : test){
			out.print(s);
		}
		int[] arr = {111, 222, 333, 444};
		for(int i : arr){	//arr이 가지고 있는 값이 순차적으로 들어감
			out.print(i);
		}
	%>
	<%= checkbox %><hr>
	<%--
		<%= values[0] %> <%= values[1] %> <%= values[2] %>
	--%>
</body>
</html>