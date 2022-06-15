<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>반갑습니다</h1>
	<a href="${rootPath}/posting/addPostingForm">포스팅화면</a>
	<a href="${rootPath}/posting/we">상대페이지</a>
	<a href="${rootPath}/posting/detail">상세페이지</a>
	
</body>
</html>