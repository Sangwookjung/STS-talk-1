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
		border: 1px solid black;
	}
	
	.second {
			width:300px;
		height:60px;
		display:inline-block;
		text-align:center;
	}
	
	.second > div {
		border:1px solid black;
	}
</style>
<body>
<div class="wrapper">
	<div class="first">
		<div>작성자</div>
		<div>암호</div>
		<div>제목</div>
		<div>내용</div>  
	</div>
  	
  	<div class="second">
  		<div><input type="text" name="jswname"></div>
  		<div><input type="password" name="jswpw"/></div>
  		<div><input type="text" name="jswtitle"/></div>
  		<div><textarea name="jswcontent" rows="5" cols="30"/></textarea></div>
  	</div>
 	<div>
 		<input type="button" value="등록하기" onclick="location.href='detail?page=${pDTO.page}&jswno=${jswdata.jswno}'"/>
 		<input type="button" value="뒤로가기" onclick="location.href='list?page=${pDTO.page}'"/>
 	</div>
 </div>
</body>
</html>