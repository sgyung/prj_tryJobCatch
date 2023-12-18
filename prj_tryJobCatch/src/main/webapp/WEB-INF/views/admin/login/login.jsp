<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info = "" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 | 로그인</title>
<!-- bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- bootstrap CDN-->
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN -->
<style>
   
   html,
   body {
     height: 100%;
   }
   
   body {
     display: flex;
     align-items: center;
     padding-top: 40px;
     padding-bottom: 40px;
     background-color: #f5f5f5;
   }
   
   .form-signin {
     width: 100%;
     max-width: 330px;
     padding: 15px;
     margin: auto;
   }
   
   .form-signin .checkbox {
     font-weight: 400;
   }
   
   .form-signin .form-floating:focus-within {
     z-index: 2;
   }
   
   .form-signin input[type="email"] {
     margin-bottom: -1px;
     border-bottom-right-radius: 0;
     border-bottom-left-radius: 0;
   }
   
   .form-signin input[type="password"] {
     margin-bottom: 10px;
     border-top-left-radius: 0;
     border-top-right-radius: 0;
   }

</style>

<script type="text/javascript">
$(function(){
	var errMsg = "${ msg }";
	if(errMsg != ""){
		alert(errMsg);
	}//
	
    $("#id").keydown(function( evt ){
        if(evt.which == 13){
            checkNull();
        }//end if
    });//end keydown

    $("#pass").keydown(function( evt ){
        if(evt.which == 13){
            checkNull();
        }//end if
    });//end keydown

    $("#login").click(function(  ){
        checkNull();
    });//end click
});//ready

function checkNull(){

var id=$("#id").val();
var pass=$("#pass").val();

$("#id").focus();
if( id.replace(/ /g,"") == ""){
    alert("아이디를 입력해 주세요.");
    $("#id").val("");
    return;
}//end if

$("#pass").focus();
if( pass.replace(/ /g,"")  ==""){
	alert("비밀번호를 입력해 주세요.");
    $("#pass").val("");
    return;
}//end if

	$("#frm").submit();
}//chkNull
</script>
</head>

<body class="text-center">
   <main class="form-signin">
      <form action="loginCheck.do" method="post" id="frm">
         <img class="mb-4" src="${pageContext.request.contextPath}/images/bootstrap-logo.svg" alt="" width="72" height="57">
         <h1 class="h3 mb-3 fw-normal">관리자 로그인 페이지</h1>
         
         <div class="form-floating"> 
            <input type="text" class="form-control" name="ad_id" id="id" placeholder="아이디 입력...">
            <label>아이디</label>
         </div>
         <div class="form-floating" style="margin-top: 20px">
            <input type="password" class="form-control" name="ad_pw" id="pass" placeholder="Password">
            <label>비밀번호</label>
         </div>
         <input type="button" class="w-100 btn btn-lg btn-primary" id="login" value="로그인">
         
         <p class="mt-5 mb-3 text-muted">&copy; 2023–2024</p>
      </form>
   </main>
</body>
</html>
