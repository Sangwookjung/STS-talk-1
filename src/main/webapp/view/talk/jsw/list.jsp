<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TALK-BOARD</title>
<style>
	.table {
		width:800px;
		height: 600px;
		background: white;
		text-align: center;
		line-height: 20px;
		border: 1px solid black;
	}
	
	.head {
		border: 1px solid black;
	}
	.head > div {
		width: 120px;
		display: inline-block;
	}
	
	.line {
		border: 1px solid black;
	}
	.line > div {
		width: 120px;
		height:30px;
		background: white;
		text-align: center;
		display: inline-block;
		vertical-align: top;
	}
	
	.pagewrap {
		width:700px;
		height: 50px;
		margin:auto;
		text-align: center;
		border: 1px solid black;
	}
	
	.pagebtn {
		width: 50px;
		height: 50px;
		text-align: center;
	}
	
	.clickedbtn {
		width: 50px;
		height: 50px;
		background: red;
		text-align: center;
	}
</style>
<!-- <script>
  function insertjs(frm) { 
    frm.action='insert'; 
    frm.submit(); 
    return true; 
  } 
  </script> -->
</head>
<body>
<form action="insert">
<input type="hidden" name="id" id="jswdetail" />
	<div class="table">
		<div class="head">
			<div>번호</div>
			<div>날짜</div>
			<div>작성자</div>
			<div>제목</div>
			<div>내용</div>
			<div>조회수</div>
		</div>
			
		<c:forEach items="${jswdata.jswmap}" var="jswDTO" varStatus="no">			
			<div class="line">	
				<div>${jswdata.pdto.start+no.index+1}</div>
				<div><fmt:formatDate value="${jswDTO.jswdate}" pattern="yyyy-MM-dd"/></div>
				<div>${jswDTO.jswname }</div>
				<div><a href="detail?page=${pDTO.page}&jswno=${jswDTO.jswno}">${jswDTO.jswtitle }</a></div>
				<div>${jswDTO.jswcontent }</div>
				<div>${jswDTO.jswcnt }</div>
			</div>
		</c:forEach>
	
	<div class="pagewrap">
		<div>
			<c:if test="${jswdata.pdto.startPage > 1}">
				<input type="button" class="pagebtn" value="[뒤로]" onclick="location.href='?page=${jswdata.pdto.startPage-1}'"/>
			</c:if>
				<c:forEach begin="${jswdata.pdto.startPage}" end="${jswdata.pdto.endPage }" step="1" var="i">
					<c:choose>
						<c:when test="${i==jswdata.pdto.page }">
							<input type="button" class="clickedbtn" value="[${i }]" onclick="location.href='?page=${i}'"/>
						</c:when>
						<c:otherwise>
							<input type="button" class="pagebtn" value="${i }" onclick="location.href='?page=${i}'"/>
						</c:otherwise>
					</c:choose>
				</c:forEach> 
				<c:if test="${jswdata.pdto.endPage < jswdata.pdto.total}">
					<input type="button" class="pagebtn" value="[다음]" onclick="location.href='?page=${jswdata.pdto.endPage+1}'"/>
				</c:if>	
			</div>
		</div>
		<div>
			<input type="submit" value="글쓰기"/> 
		</div>
	</div>
</form>
</body>
</html>