<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<style>
 .main {
 	width: 800px;
 	height: 500px;
 	background: gray;
 }
  .titleMain {
 	width: 800px;
 	height: 50px;
 }
 .titleMain > div {
	width: 800px;
	height: 50px;
}
 .titleMainSub1{
	width: 800px;
	height: 100px;
}
 .titleMainSub1 > div{
	width: 125px;
	height: 100px;
	display: inline-block;
	text-align: center;
}
 .titleMainSub2{
	width: 800px;
	height: 450px;
}
 .titleMainSub2 > div{
	width: 125px;
	height: 400px;
	display: inline-block;
	text-align: center;
}
.last{
	width: 150px;
	height: 50px;
	display: inline-block;
	margin-top: 420px;
	margin-left: 680px;
}
.last > div{
	display: inline-block;
	cursor: pointer;
}
 </style>
<meta charset="UTF-8">
<title>TALK-BOARD</title>
</head>
<body>
<div class="main">

	<div class="titleMain">
		<div class="titleMainSub1">
		<div>번호</div>
		<div>작성자</div>
		<div>제목</div>
		<div>내용</div>
		<div>작성일</div>
		<div>조회수</div>
		</div>
		
		<div class="titleMainSub2">
		<div>${data.rjsnumber }</div>
		<div>${data.rjsname }</div>
		<div>${data.rjstitle }</div>
		<div>${data.rjscontent }</div>
		<div>${data.rjsreg_date }</div>
		<div>${data.rjscnt }</div>
		</div>
		
	</div>
	
	<div class="last">
		<div onclick="location.href='list?page=${pDTO.page}'">목록</div>
		<div onclick="location.href='modifyForm?rjsnumber=${data.rjsnumber}'">수정</div>
		<div onclick="location.href='deleteForm?rjsnumber=${data.rjsnumber}'">삭제</div>
	</div>
	
</div>

	
	
	
</body>
</html>