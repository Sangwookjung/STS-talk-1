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
<h1>수정이여</h1>

<form action="modifyRegRjs" method="post" enctype="muleipart/form-data">
<input type="hidden" name="rjsnumber" value="${data.rjsnumber }"> 
<input type="hidden" name="page" value="${pDTO.page }">
<table border="">
	<tr>
		<td>제목</td><td><input type="text" name="rjstitle" value="${data.rjstitle }"/></td>
	</tr><tr>
		<td>작성자</td><td><input type="text" name="rjsname" value="${data.rjsname }" /></td>
	</tr><tr>
		<td>암호</td><td><input type="text" name="rjspw" /></td>
	</tr><tr>
		<td>내용</td><td><textarea  name="rjscontent" rows="5" cols="30">${data.rjscontent }</textarea></td>
	</tr><tr>
		<td colspan="2" align="right">
			<input type="submit" value="수정" />
			<a href="detail?id=${data.rjsnumber }&page=${pDTO.page}">뒤로</a>
		</td>
	</tr>
	

</table>
</form>
</body>
</html>