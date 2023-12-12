<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko"><head>


<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>비밀번호 변경 ㅣ 잡코리아 - NEW JOB, NEW ME JOBKOREA.CO.KR</title>
<link rel="SHORTCUT ICON" href="//www.jobkorea.co.kr/favicon.ico?20230519">

<meta name="verify-v1" content="wfOOCE9Vtx+Z5etOXJnS9LU03yGpBxkK74T/yU63Xqs=">
<meta name="Robots" content="noindex,nofollow">


<style>
</style>


<link rel="stylesheet" type="text/css" href="https://www.jobkorea.co.kr/include/css/ver_2/common.css?201909051400">
				
<link rel="stylesheet" type="text/css" href="https://www.jobkorea.co.kr/include/css/ver_2/footer_sub.css">

	
<link rel="stylesheet" type="text/css" href="https://www.jobkorea.co.kr/include/css/ver_1/gnb.css?20170124001">
<link rel="stylesheet" type="text/css" href="https://www.jobkorea.co.kr/include/css/ver_1/gnb_sub.css?20170317002">

	    
<link rel="stylesheet" type="text/css" href="https://i.jobkorea.kr/content/css/ver_2/member/mbr_common.css?date=202307171400">
<link rel="stylesheet" type="text/css" href="https://i.jobkorea.kr/content/css/ver_2/member/mbr_tpl.css?date=202307171400">
	    
<link rel="stylesheet" type="text/css" href="https://i.jobkorea.kr/content/css/ver_2/member/mbr_style.css?date=202307171400">
	    

<link rel="stylesheet" type="text/css" href="https://i.jobkorea.kr/deploy/pc/dist/css/personal/layout/footer-sv-202311031048.css"> <!-- (JK-9495) PC Main Footer 변경 (2021.02.18) -->


 <!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN -->
</head>

<script type="text/javascript">
//현재 비밀번호 체크
$(function(){
	var msg = "${ msg }";
	if( msg != ""){
		alert(msg);
	}
	
	$("#resetPassBtn").click(function(){
		var pass1 = $("#M_PWD_New1").val();
		var pass2 = $("#M_PWD_New2").val();
		
		var passwordPattern = /^(?=.*[a-z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,16}/;
		
		var M_ID = "${ M_ID }"
		var searchType = "${ searchType }"
		
		//현재 비밀번호 체크
		var currentPass = $("#M_PW").val();
		if( currentPass == "" ){
			$("#CautionResult1").show();
			return;
		}//end if
		
		//비밀번호와 아이디가 같을 경우
		if( pass1 == M_ID ){
			$(".checkPass").hide();
			$("#PwdSafeForm1_02").show();
			return;
		}
		//비밀번호 패턴과 맞지 않을 경우
		if( !passwordPattern.test(pass1) ){
			$(".checkPass").hide();
			$("#PwdSafeForm1_05").show();
			return;
		}
		//비밀번호 패턴과 일치할 경우
		if( passwordPattern.test(pass1) ){
			$(".checkPass").hide();
			$("#PwdSafeForm4").show();
			
			// 비밀번호 확인이 비어있을경우
			if( pass2 == "" ){
				$("#CautionResult3").show();
				return;
			}//end if
			
			//pass1,pass2 같지 않을 경우
			if( pass1 != pass2 ){
				alert("비밀번호가 일치하지 않습니다 다시한번 확인해주세요.")
				return;
			}//end if
			
			$("#modifyPassFrm").submit();
		}//end if
		
	})//click
	
	$("#M_PWD_New1").keyup(function(){
		var pw = $(this).val();
		var M_ID = "${ sessionScope.M_ID }"
		var passwordPattern = /^(?=.*[a-z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,16}/;
		if( pw == M_ID ){
			$(".checkPass").hide();
			$("#PwdSafeForm1_02").show();
			return;
		}
		if( !passwordPattern.test(pw) ){
			$(".checkPass").hide();
			$("#PwdSafeForm1_05").show();
			return;
		}
		$(".checkPass").hide();
		$("#PwdSafeForm4").show();
		
	})//keyup
	
	$("#M_PWD_New2").keyup(function(){
		$("#CautionResult3").hide();
	})
	
	//취소
	$("#cancelBtn").click(function(){
		location.href="http://localhost/prj_tryJobCatch/member/mypageHome.do"
	})//click
	
})//ready

</script>
<body id="secMbr" class="mbrSubMng mbrSubMngGG mbrSubMngPwd" cz-shortcut-listen="true">

<div id="skipNavigation">
	<p><a href="#container">메뉴 건너뛰기</a></p>
</div>
<hr>

<!--// Header Area -->


<!--// Header area(회원정보관리) -->
<div id="header">
	<div class="gnbWrap gnbWrap_mMng">

		<div id="gnb">
	
			<!--// 개인회원 -->
			
				<h1><a class="logo" href="http://localhost/prj_tryJobCatch/main.do"><img alt="tryJobCatch" src="//i.jobkorea.kr/content/images/2023/common/gnb/h_logo.png"></a>
				<span class="bar"><span class="title"><img src="https://www.jobkorea.co.kr/img/member/h_mng_gg.gif" width="117" height="23" alt="회원정보 관리"></span></span>
				</h1>
			
			<h2 class="skip">주요링크</h2>
			<ul class="lnb">
				<li><a href="http://localhost/prj_tryJobCatch/member/mypageHome.do">개인회원 홈</a></li>
			</ul>
			<div class="secNav">
				<ol>
					<li class="mn1"><a href="http://localhost/prj_tryJobCatch/member/mbrModifyFrm.do"><span></span>개인정보 수정</a></li>
					<li class="mn2"><a href="http://localhost/prj_tryJobCatch/member/passModifyFrm.do"><span></span>비밀번호변경</a></li>
					
					<!-- <li class="mn3 end"><a href="/Customer_C/ETC/CC_leave.asp?Customer_C_Oem_No=1" target="_blank"><span></span>회원탈퇴</a></li> -->
				</ol>
			</div>
	
		</div>
	</div>
</div>
<hr>


<div id="wrap">

	<!--// Contents Area -->
	<div id="container">
		<div id="content">
			<h1 class="skip">비밀번호 변경</h1>
			<form name="form" id="modifyPassFrm" method="post" action="http://localhost/prj_tryJobCatch/member/mbrModifyPass.do">
			<fieldset>
				<legend>비밀번호 변경 정보 입력폼</legend>
				<div class="mbrSec mbrMngPWD">
					<h2 class="mbrHeading2"><img src="https://www.jobkorea.co.kr/img/member/title/mbr_h_mng_pwdchange.gif" alt="비밀번호 변경"></h2>
					<div class="mbrTplDesc">
						<p>비밀번호는 <strong>8~16자 영문, 숫자, 특수문자</strong>를 사용할 수 있습니다. </p>
						<p><em>비밀번호는 주기적(최소 6개월)으로 변경해 주시기 바랍니다.</em></p>
					</div> 

					<div class="mbrTplData2">
						<table summary="이 표는 비밀번호 변경 입력폼으로 현재 비밀번호, 새로운 비밀번호, 새로운 비밀번호 확인을 나타내고 있습니다.">
							<caption><span class="skip">비밀번호 변경 입력폼</span></caption>
							<colgroup>
								<col width="18%">
								<col width="*">
							</colgroup>
							<tbody><tr>
								<th scope="row"><label for="M_PW">현재 비밀번호</label></th>
								<td>
									<div class="mbrHelpWrap">		
										<input type="password" id="M_PW" name="M_PW" style="width:200px;" class="ipText" maxlength="20" >
										<div style="left:215px;display:none;" class="mbrTplLayer mbrTplLayer_1 mbrLayerHelp" id="CautionResult1" name="CautionResult">
											<div class="desc">
												<p>현재 사용중인 비밀번호를 입력해 주세요.</p>
											</div>
											<span class="arrow"></span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="M_PWD_New1">새로운 비밀번호</label></th>
								<td>
									<div class="mbrPwdHelpWrap">
									</div>
									<div class="mbrHelpWrap">
										<input type="password" id="M_PWD_New1" name="M_PWD_New1" style="width:200px;" class="ipText checkPwd" maxlength="16" >
										<div id="PwdSafeResult"></div>
										<div id="PwdSafeForm4" style="display:none" class="checkPass">
											<div class="mbrTplLayer mbrTplLayer_1 mbrSsafety safety_1" style="left:215px">
												<div class="desc">
													<!--안전도 <span class="txBar"> | </span> <span class="status">높음</span>-->
													<span class="addTx">사용할 수 있는 비밀번호입니다.</span>
												</div>
												<span class="arrow"></span>
											</div>
										</div>
										<div id="PwdSafeForm1_02" style="display:none" class="checkPass">
											<div class="mbrTplLayer mbrTplLayer_1 mbrSsafety safety_4" style="left:215px">
												<div class="desc">
													<!--안전도 <span class="txBar"> | </span> <span class="status">불가</span>-->
													<span class="addTx">아이디와 비밀번호가 같습니다. 보안상의 이유로 아이디와 같은 비밀번호는 허용하지 않습니다.</span>
												</div>
												<span class="arrow"></span>
											</div>
										</div>

										<div id="PwdSafeForm1_05" style="display:none" class="checkPass">
											<div class="mbrTplLayer mbrTplLayer_1 mbrSsafety safety_4" style="left:215px">
												<div class="desc">
													<!--안전도 <span class="txBar"> | </span> <span class="status">불가</span>-->
													<span class="addTx">8~16자의 영문, 숫자, 특수문자 조합으로 입력해 주세요.</span>
												</div>
												<span class="arrow"></span>
											</div>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="M_PWD_New2">새로운 비밀번호 확인</label></th>
								<td>
									<div class="mbrHelpWrap">		
										<input type="password" id="M_PWD_New2" name="newPass" style="width:200px;" class="ipText" >
										<div style="left:215px;display:none;" class="mbrTplLayer mbrTplLayer_1 mbrLayerHelp" id="CautionResult3" name="CautionResult">
											<div class="desc">
												<p>비밀번호 확인을 입력해 주세요.</p>
											</div>
											<span class="arrow"></span>
										</div>
									</div>
								</td>
							</tr>
						</tbody></table>
					</div>
				</div>
				<hr>
				<p class="mbrBtnFunc">
					<span class="mbrBtn mbrBtnModify_1"><button type="button" id="resetPassBtn"><span>수정하기</span></button></span>
					<span class="mbrBtn mbrBtnCancel_1"><button type="button" id="cancelBtn" ><span>취소</span></button></span>
				</p>
			</fieldset>
			</form>
		</div>
		<hr>
	</div>
</div>

</div>

</body></html>