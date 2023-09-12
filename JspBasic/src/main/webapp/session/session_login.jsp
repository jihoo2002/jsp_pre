<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<c:choose>
<c:when test="${user_id ==null}">
	<%-- if(session.getAttribute("user_id") == null){ --%>
	<form action="/JspBasic/session/login" method="post">
		 <input type = "text" name ="id" size = "10" placeholder="ID"><br>
		 <input type = "password" name = "pw" size = "10" placeholder="PW"><br>
		<input type = "submit" value = "로그인">
		
	</form>
	</c:when>
	<%--} else{--%>
	<c:otherwise>
		<p> <!-- id가 null이 아니라면 -->
		${user_id}님이 현재 로그인중입니다! <br>
		<a href ="session_welcome.jsp">웰컴 페이지로</a>
		</p>
	<%--} --%>
	</c:otherwise>
	
	</c:choose>
</body>
</html>