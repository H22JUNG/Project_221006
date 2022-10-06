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
	<c:forEach items="${list}" var="vo">
		<div>
			<img alt="" src="${vo.img}">
			<h4>${vo.head}</h4>
			<p>${vo.content}</p>
			<a href="#">${vo.link}</a>
		</div>
	</c:forEach>
</body>
</html>