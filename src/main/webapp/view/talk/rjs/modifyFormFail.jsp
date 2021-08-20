<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src='<c:url value="/my_js/jquery-3.6.0.js"/>'></script>
<!-- <script src="/ckeditor5/ckeditor.js"></script>
<script type="text/javascript" src="/ckeditor5/UploadAdapter.js"></script> -->
<form action="modifyRegRjs" method="post" enctype="multipart/form-data">
<input type="hidden" id="rjsnumber" value="${data.rjsnumber }"> 
<input type="hidden" id="page" value="${pDTO.page }">

   
   	<div class="insertMain">
      <div class="insertSub">
	      <div>제목</div>
	      <div><input type="text" name="rjstitle" value="${data.rjstitle }"/></div>
      </div>
   
      <div class="insertSub">
	      <div>작성자</div>
	      <div><input type="text" name="rjsname" value="${data.rjsname }"/></div>
 	  </div>
 	  
      <div class="insertSub">
	      <div>암호</div>
	      <div><input type="password" name="rjspw"/></div>
 	  </div>
   	  
      <div class="insertSub">
	      <div>내용</div>
	      <div><textarea name="rjscontent" rows="5" cols="30">${data.rjscontent }</textarea></div>
      </div>
      
	    <div><input type="submit" value="수정" /></div> 
	      <div onclick="location.href='list?page=${pDTO.page}'">목록</div>
  	 </div>

</form>

</body>
<!-- <script src="//code.jquery.com/jquery.min.js"></script>
<script>
	function goSubmit(){
		let rjsnumber = $('#rjsnumber').val();
		let page = $('#page').val();
		let rjspworigin = $('#rjspworigin').val();
		let rjspw = $('#rjspw').val();
		if(rjspw != rjspworigin){
			alert("get out!" );
			return false;
		}
		//location.href="modifyReg"; 
		location.href="modifyReg?rjsnumber=" + rjsnumber + "&page=" + page; 
		//location.href="/detail?rjsnumber=" + rjsnumber + "&page=" + page; 
		//location.replace("/modifyReg");
		
	}

</script> -->
</html>