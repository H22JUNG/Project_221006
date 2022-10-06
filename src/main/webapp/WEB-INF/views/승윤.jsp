<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	* {
		margin: 0;
		padding : 0;
	}
	#first {
		width: 100%;
		display : flex;
		gap : 20px;
	}
	#item {
		display : flex;
		flex-direction : column;
		gap : 10px;
	}
	#item {
		width : 260px;
	}
	#item img {
		width : 260px;
		height : 150px;
		margin-bottom: 20px;
	}
	#item a {
		color : #0067b8;
		text-decoration : none;
		font-weight : bold;
	}
	#item p, a {
		font-size: 15px;
	}
	#item h4 {
		font-size: 17.55px;
	}
</style>
</head>
<body>
<div id="first">
	<c:forEach items="${list}" var="vo">
			<div id="item">
			<img alt="" src="${vo.img}">
			<h4>${vo.head}</h4>
			<p>${vo.content}</p>
			<a href="#">${vo.link}</a>
			</div>
	</c:forEach>
	</div>
</body>
</html>