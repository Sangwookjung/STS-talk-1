<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="insertRegRjs" method="post" enctype="multipart/form-data">

   
   	<div class="insertMain">
      <div class="insertSub">
	      <div>제목</div>
	      <div><input type="text" name="rjstitle"/></div>
      </div>
   
      <div class="insertSub">
	      <div>작성자</div>
	      <div><input type="text" name="rjsname"/></div>
 	  </div>
 	  
      <div class="insertSub">
	      <div>암호</div>
	      <div><input type="password" name="rjspw"/></div>
   	  </div>
   	  
      <div class="insertSub">
	      <div>내용</div>
	      <div><textarea name="rjscontent" rows="5" cols="30"></textarea></div>
      </div>
      
      <div class="insertSub">
	      <div><input type="submit" value="작성" /></div>
	      <div onclick="location.href='list?page=${pDTO.page}'">목록</div>
      </div>
  	 </div>

</form>

</body>
</html>