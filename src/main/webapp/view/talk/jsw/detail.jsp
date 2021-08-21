<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TALK-BOARD</title>
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
<script>
	//function mkfunc(mode) {
		function mkfunc(mode) {
		var form = document.frmSubmit;
		
		if(mode == '01') {
			console.log('1')
			form.method="post";
			form.target="_self";
			form.action="update";
		}
		console.log('2')
		form.submit();
		console.log('3ㅋㅋ 루 삥뽕 ㅋㅋ루삥뽕')
	}
</script>
<form name="frmSubmit">
<div class="wrapper">
	<div class="first">
		<div>번호</div>
		<div>날짜</div>
		<div>작성자</div>
		<div>조회수</div>
		<div>제목</div>
		<div>내용</div>  
	</div>
  	
  	<div class="second">
  		<div>${jswdata.jswno}</div>
  		<div><fmt:formatDate value="${jswdata.jswdate}" pattern="yyyy-MM-dd"/></div>
  		<div>${jswdata.jswname}</div>
  		<div>${jswdata.jswcnt}</div>
  		<div>${jswdata.jswtitle}</div>
  		<div>${jswdata.jswcontent}</div>
  	</div>
 	<div>
 		<input type="button" value="삭제하기" />
 		<input type="button" value="수정하기" onclick="mkfunc('01')"/>
		<%-- <input type="button" value="수정하기" onclick="location.href='update?page=${pDTO.page}&jswno=${jswdata.jswno }'"/> --%>
 		<input type="button" value="뒤로가기" onclick="location.href='list?page=${pDTO.page}'"/>
 	</div>
 </div>
 </form>
</body>
</html>