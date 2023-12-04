<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info = "" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- bootstrap CDN-->
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN -->
<style type="text/css">

</style>
<script type="text/javascript">

	//location.href = "home.do";
</script>


</head>
<body>
<c:choose>
	<c:when test="${ not empty sessionScope.M_ID }">
	<a href="#" >${ sessionScope.M_NAME }</a><br/>
	<a href="logout.do" >로그아웃</a>
	</c:when>
	<c:otherwise>
		<a href="loginFrm.do"> 로그인 </a>
		<a href="searchIdFrm.do"> 아이디 찾기 </a>
	</c:otherwise>
</c:choose>
</body>
</html>