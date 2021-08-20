<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TALK-BOARD</title>
</head>
<body>
<form action="" method="post">
	<div>
		<div>번호</div>
		<div>작성자</div>
		<div>제목</div>
		<div>조회수</div>
	</div>
	<div>	
	11
		<c:forEach items="${list.jswlist}" var="listDTO" varStatus="no">
			<tr id="${listDTO.jswno }">
				<td>123</td>
				<td>${listDTO.jswname }</td>
				<td>${listDTO.jswtitle }</td>
			</tr>
		</c:forEach>
	</div>
</form>
</body>
</html>