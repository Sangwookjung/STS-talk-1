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
 .titleMain > div{
 	width: 150px;
 	height: 50px;
 	display: inline-block;
 	text-align: center;
 }
 .conMain {
 	width: 800px;
 	height: 400px;
 }
.conMain > div {
	width: 150px;
	height: 40px;
	display: inline-block;
		text-align: center;
}
.pagewra{
	width: 800px;
	height: 40px;
	margin: auto;
}
.page {
	text-align: center;
	
}
.page > div{
	display: inline-block;
	cursor: pointer;
	
}
.titleCon{
	cursor: pointer;
}
 </style>
<meta charset="UTF-8">
<title>TALK-BOARD</title>
</head>
<body>
<div class="main">

	<div class="titleMain">
		<div>번호</div>
		<div>작성자</div>
		<div>제목</div>
		<div>작성일</div>
		<div>조회수</div>
	</div>
	
	<div class="conMain"> 
<c:forEach items="${data.rjsmap}" var="rjsDTO" varStatus="no">
		<div>${rjsDTO.rjsnumber }</div>
		<div>${rjsDTO.rjsname }</div>
		<div class="titleCon" onclick="location.href='detail?rjsnumber=${rjsDTO.rjsnumber}&page=${pDTO.page}'" >${rjsDTO.rjstitle }</div>
		<div>${rjsDTO.rjsreg_date }</div>
		<div>${rjsDTO.rjscnt }</div>
</c:forEach>
	</div>
	<div class="pagewra">
		<div class="page">

					<c:if test="${data.pdto.startPage > 1 }">
						<div onclick="location.href='?page=${data.pdto.startPage-1 }'"> < </div>
					</c:if>

					<c:forEach begin="${data.pdto.startPage }" 
							   end="${data.pdto.endPage }" step="1" var="i">
					
						<c:choose>
						
							<c:when test="${i==data.pdto.page }">
								[${i }]
							</c:when>
							
							<c:otherwise>
								<div onclick="location.href='?page=${i }'">${i }</div>
							</c:otherwise>
							
						</c:choose>
						
					</c:forEach>

					<c:if test="${data.pdto.endPage < data.pdto.total }">
						<div onclick="location.href='?page=${data.pdto.endPage+1 }'"> > </div>
					</c:if>

			</div>
			
			<div>
				<div colspan="5" align="right" onclick="location.href='insertForm'">글쓰기</div>
			</div>
		</div>
</div>

	
	
	
</body>
</html>