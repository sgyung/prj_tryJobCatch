<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>tryJobCatch</title>
<!-- bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- bootstrap CDN-->
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN -->
<link rel="SHORTCUT ICON" href="//www.jobkorea.co.kr/favicon.ico?20230519"> 

<link rel="stylesheet" type="text/css" href="//i.jobkorea.kr/content/css/ver_1/login/login-sv-202311161459.css">
<link rel="stylesheet" type="text/css" href="//i.jobkorea.kr/deploy/pc/dist/css/personal/layout/footer-sv-202311031048.css"> <!-- (JK-9495) PC Main Footer 변경 (2021.02.18) -->

<script>
$(function(){
	var joinResultMsg = "${joinResultMsg}"
	if( joinResultMsg != ""){
		alert( joinResultMsg );
	}//end if
	
	//Capslock alertMsg
	 $("#M_PWD").keydown(function(e) {
		 var isCapsLockOn = e.originalEvent.getModifierState('CapsLock');
		 
	    if (isCapsLockOn) {
	      	$("#ipNotice").addClass("on");
	      	
	    	 // 3초 후에 클래스 제거
	        setTimeout(function() {
	          $("#ipNotice").removeClass("on");
	        }, 3000)
	    } else {
	    	$("#ipNotice").removeClass("on");
	    }
	 })//keydown
	 
	 //login tab
	 $("#devMemTab li").click(function(e){
		$(this).addClass("on");

		// 현재 클릭된 li 요소의 이외의 형제 요소들에서 on 클래스 제거
		$(this).siblings().removeClass("on");
		 
		 if( $(this).text() == "개인회원" ){
			 $("#M_ID").removeClass("corp");
		 } else {
			 $("#M_ID").addClass("corp");
		 }//else
	 })//click
	 
	 //로그인 버튼 클릭시 form submit
	 $("#loginBtn").click(function(){
		if( $("#M_ID").val() == "" ){
			alert("아이디를 입력해주세요.");
			return;
		}//end if		
		if( $("#M_PWD").val() == "" ){
			alert("비밀번호를 입력해주세요.");
			return;
		}//end if
		 
	 	$("#loginFrm").submit();
	 })//click
	 
	 //개인회원Tab 클릭시 loing_type설정
	 $("#devMemTab li[data-tab='tab1']").click(function(){
	 	$("#login_type").val("M");
	 	$("#joinLink").attr("href", "memberJoinFrm.do")
	 })//click
	 //기업회원Tab 클릭시 loing_type설정
	 $("#devMemTab li[data-tab='tab2']").click(function(){
	 	$("#login_type").val("CO");
	 	$("#joinLink").attr("href", "companyJoinFrm.do")
	 })//click
	 
	 //로그인 실패시 errMsg
	 if( $(".text-error").text() != "" ){
		 $(".input_row").addClass("error");
		 $(".text-error").show();
	 }//end if
	 
	 
		   
})//ready
</script>
<head>
<body id="login" class="login  bg-gray" cz-shortcut-listen="true">

<div id="wrap">

	<div id="container">
		<div class="logtop logtop_login">
			<p class="lnb"><a href="http://211.63.89.133/prj_tryJobCatch/main.do">tryjobcatch홈</a>
		</div>

		<div class="secLogin">
			<h1 class="hd" style="font-size:large; color:#0057FF">
				<img src="http://211.63.89.133/prj_tryJobCatch/common/images/main/main_logo.png" />
			</h1>
			<div class="logWrap" id="loginFormWrite" style="padding-right: 0;">
				<h2 class="blind">로그인</h2>
				<form name="form" id="loginFrm" method="post" action="http://211.63.89.133/prj_tryJobCatch/member/login.do" >
				<fieldset class="login_form"><legend class="blind">로그인 입력폼</legend>
					<!-- 회원선택-->
					<input type="hidden" id="login_type" name="login_type" value="M" />
					<div class="select_row">
						<ul id="devMemTab">
							<li class="on" role="tab" data-tab="tab1"><a href="#" data-m-type="M">개인회원</a></li>
							<li class="" role="tab" data-tab="tab2"><a href="#" data-m-type="Co">기업회원</a></li>
						</ul>
					</div>

					<div class="input_row ">
						<label for="M_ID" id="lb_id" class="blind">아이디</label>
						<input type="text" class="inpTxt  inpID off" placeholder="아이디" name="M_ID" id="M_ID" size="16" maxlength="20" title="아이디 입력" style="ime-mode:inactive;" value="">
						<label for="M_PWD" id="lb_pw" class="blind">비밀번호</label>
						<input type="password" class="inpTxt inpPW off devCapsLock" placeholder="비밀번호" name="M_PW" id="M_PWD" size="16" title="비밀번호 입력">
						<button type="button" class="btLoin" id="loginBtn">로그인</button>
						<div class="text-error"><c:out value="${ errMsg }" /></div>
						<div class="lyCapsLock" id="ipNotice">
							<em>Caps Lock</em>이 켜져 있습니다.<span class="mainIcn mainIcnArrUp"></span>
						</div>
					</div>
					<div class="check_row">
						
					</div>
				
					<p class="alarmMsg" style="display:none;"></p>
					

					<div class="join">
						<p class="sch">
							<a href="http://211.63.89.133/prj_tryJobCatch/member/searchIdFrm.do" target="_self">아이디 찾기</a> 
							<a href="http://211.63.89.133/prj_tryJobCatch/member/searchPassFrm.do" target="_self">비밀번호 찾기</a>
							<a id=joinLink href="http://211.63.89.133/prj_tryJobCatch/member/memberJoinFrm.do" target="_self">회원가입</a>
						</p>
					</div>
				</fieldset>
				</form>
			</div>
			
			<div class="">
				<img src="http://211.63.89.133/prj_tryJobCatch/common/images/main/main_login_logo.gif" alt="" />
			</div>
			
		</div><!-- // content -->


                    </div>
                </div>

	<div id="footer">
		<p id="copyright">ⓒ JOBKOREA LLC. All Rights Reserved.</p>
	</div><!-- footer //-->

<div style="position:absolute; left:-5000px; overflow:hidden;">

</div>
