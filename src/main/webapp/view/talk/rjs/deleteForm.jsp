<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
<form action="deleteRegRjs">
<input type="hidden" name="rjsnumber" value="${data.rjsnumber }"> 
<input type="hidden" name="page" value="${pDTO.page }">
<table border="">

	<tr>
		<td>암호</td><td><input type="text" name="rjspw"></td>
 	</tr>
 	
 	<tr>
		<td colspan="2" align="right">
			<input type="submit" value="삭제">
			<a href="detail?rjsnumber=${data.rjsnumber }&page=${pDTO.page}">목록</a>
		</td>
	</tr>

</table>
</form>
</body>
</html>