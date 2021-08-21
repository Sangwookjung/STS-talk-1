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

<script>
	function pwcheck() {
		var pw = getparam.id;
		$().pwcheck.val()
		if(pw == ${jswdata.jswpw}) {
			redirect
		}else 
			alert
		}
</script>
<body>
<form action="updateGo" method="post" enctype="multipart/form-data">
<input type="hidden" method="post" name="jswno" value="${jswdata.jswno }"/>
<div class="wrapper">
	<div class="first">
		<div>암호 확인</div>
		<input type="password" id="pwcheck"/>
	</div>

 	<div>
 		<input type="submit" value="수정하기" onclick="pwcheck()"/>
 		<input type="button" value="뒤로가기" onclick="location.href='list?page=${pDTO.page}'"/>
 	</div>
 </div>
 </form>
</body>
</html>