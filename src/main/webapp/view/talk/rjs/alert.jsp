<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src='<c:url value="/my_js/jquery-3.6.0.js"/>'></script>
<script>
	alert("${data.msg}")
	location.href = "${data.url}"

</script>

</body>
</html>