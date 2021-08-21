<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TALK-INSERT</title>
</head>
<style>
	.wrapper {
		width: 190px;
		margin:auto;
		text-align: center;
	}
	
	.first {
		width:80px;
		height:60px;
		display:inline-block;
		text-align:center;
	}
	.first > div {
		width: 80px;
		height:auto;
		margin: 10px;	
	}
	
</style>
<body>
<form action="updateGo" method="post" enctype="multipart/form-data">
<input type="hidden" method="post" name="jswno" value="${jswdata.jswno }"/>
<div class="wrapper">
	<div class="first">
		<div>작성자</div>
		<div><input type="text" value="${jswdata.jswname }" name="jswname"></div>
		<div>암호</div><div><input type="password" name="jswpw"/></div>
		<div>제목</div><div><input type="text" value="${jswdata.jswtitle }" name="jswtitle"/></div>
		<div>내용</div><div><textarea name="jswcontent" rows="5" cols="30"/>${jswdata.jswcontent }</textarea></div>
	</div>

 	<div>
 		<input type="submit" value="수정하기"/>
 		<input type="button" value="뒤로가기" onclick="location.href='list?page=${pDTO.page}'"/>
 	</div>
 </div>
 </form>
</body>
</html>