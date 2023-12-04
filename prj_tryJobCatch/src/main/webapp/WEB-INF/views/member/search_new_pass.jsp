<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko"><head>


<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>비밀번호 찾기 ㅣ 잡코리아 - NEW JOB, NEW ME JOBKOREA.CO.KR</title>
<link rel="SHORTCUT ICON" href="//www.jobkorea.co.kr/favicon.ico?20230519">

<script type="text/javascript" src="https://www.jobkorea.co.kr/include/JS/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="https://www.jobkorea.co.kr/include/js/RegNo_Check.js"></script>


<!--End Braze-->
					<link rel="stylesheet" type="text/css" href="https://www.jobkorea.co.kr/include/css/ver_2/common.css?201909051400">
				
			<link rel="stylesheet" type="text/css" href="https://www.jobkorea.co.kr/include/css/ver_2/footer_sub.css">

	
        <link rel="stylesheet" type="text/css" href="https://www.jobkorea.co.kr/include/css/ver_1/gnb.css?20170124001">
	    <link rel="stylesheet" type="text/css" href="https://www.jobkorea.co.kr/include/css/ver_1/gnb_sub.css?20170317002">

	    
	    <link rel="stylesheet" type="text/css" href="https://i.jobkorea.kr/content/css/ver_2/member/mbr_common.css?date=202307171400">
	    <link rel="stylesheet" type="text/css" href="https://i.jobkorea.kr/content/css/ver_2/member/mbr_tpl.css?date=202307171400">
	    
	     <link rel="stylesheet" type="text/css" href="https://i.jobkorea.kr/content/css/ver_2/member/mbr_style.css?date=202307171400">
	    

    <link rel="stylesheet" type="text/css" href="https://i.jobkorea.kr/deploy/pc/dist/css/personal/layout/footer-sv-202311031048.css"> <!-- (JK-9495) PC Main Footer 변경 (2021.02.18) -->

<style type="text/css">
	.mbrTplData1 li {clear:both; padding:5px 0 5px 24px;  overflow:inherit;}
	.mbrTplData1 li:after { content:''; display:block; clear: both;}
	.mbrTplData1 li .tipHover { display:inline-block; position:relative; margin-left:5px; margin-top:-2px; vertical-align: middle;}
	.mbrTplData1 li .tipHover button {}
	.mbrTplData1 li .tipHover .tip { display:none; position:absolute; top:15px; left:0; width:208px; padding:15px 20px; border:1px solid #565d79; box-sizing:border-box; color:#666; font-weight:normal; line-height:1.5; background:#fff url('/img/member/popLoginClose.gif') no-repeat 190px 8px; }
	.mbrTplData1 li .tipHover .tip .tipClose { overflow:hidden; position:absolute; top:5px; right:5px; width:10px; height:9px; text-indent:-999px; background:url('/img/member/popLoginClose.gif') no-repeat }
</style>
	

<body id="secMbr" class="mbrSubCC mbrSubSchPwd" cz-shortcut-listen="true">

<div id="skipNavigation">
	<p><a href="#container">메뉴 건너뛰기</a></p>
</div>
<hr>


<script type="text/javascript">
$(function(){
	$("#resetPassBtn").click(function(){
		var pass1 = $("#M_PWD_New1").val();
		var pass2 = $("#M_PWD_New2").val();
		
		var passwordPattern = /^(?=.*[a-z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,16}/;
		
		var M_ID = "${ M_ID }"
		var searchType = "${ searchType }"
		
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
			
			$("#M_ID").val(M_ID);
			$("#searchType").val(searchType);
			$("#newPassFrm").submit();
		}//end if
		
	})//click
	
	$("#M_PWD_New1").keyup(function(){
		var pw = $(this).val();
		var M_ID = "${ M_ID }"
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
	
	
})//ready

</script>

<div id="header">
	<div class="gnbWrap gnbWrap_mSearch">
		<div id="gnb">
			
				<h1><a class="logo" href="https://www.jobkorea.co.kr"><img alt="잡코리아" src="//i.jobkorea.kr/content/images/2023/common/gnb/h_logo.png"></a>
					<span class="bar">
						<span class="title">
							<img src="	https://www.jobkorea.co.kr/img/member/h_cc_schpwd.gif" alt="비밀번호 찾기">
						</span>
					</span>
				</h1>
				
			<div class="secNav">
				<ol>
					<li class="mn1"><a href="searchIdFrm.do"><span></span>아이디 찾기</a></li>
					<li class="mn2"><a href="searchPassFrm.do"><span></span>비밀번호 찾기</a></li>
					<!-- <li class="mn3"><a href="/Customer_C/ETC/CC_Inquiry.asp?OEM_No=1"><span></span>고객상담</a></li>
					<li class="mn4 end"><a href="https://talk.naver.com/ct/wcb8l5" target="_blank" title="새창"><span></span>톡톡상담</a></li> -->
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
			<form id="newPassFrm" method="post" action="resetPass.do">
				<input type="hidden" name="searchType" id="searchType">
				<input type="hidden" name="M_ID" id="M_ID" >
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
							<tbody>
							<tr>
								<th scope="row"><label for="M_PWD_New1">새로운 비밀번호</label></th>
								<td>
									
									<div class="mbrHelpWrap">
										<input type="password" id="M_PWD_New1" name="M_PASS" style="width:200px;" class="ipText checkPwd" maxlength="16" autocomplete="new-password">
										<input type="hidden" name="idcheck" id="idcheck" value="">
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
										<input type="password" id="M_PWD_New2" name="M_PWD_New2" style="width:200px;" class="ipText" autocomplete="new-password">
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
					<span class="mbrBtn mbrBtnCancel_1"><button type="button" id="cancelBtn"><span>취소</span></button></span>
				</p>
			</fieldset>
			</form>
		</div>
		<hr>
	</div>
</div>


<div id="criteo-tags-div" style="display: none;"></div></body></html>