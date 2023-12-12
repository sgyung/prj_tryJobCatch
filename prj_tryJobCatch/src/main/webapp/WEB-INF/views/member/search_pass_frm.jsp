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
<script type="text/javascript" src="https://www.jobkorea.co.kr/include/JS/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="https://www.jobkorea.co.kr/include/js/RegNo_Check.js"></script>
<script>
$(function(){
	var errMsg = "${ errMsg }";
	if( errMsg != ""){
		alert(errMsg);
	}//end if
	
	//search방법 선택
	$("#mbrSearchBox").click(function(){
		$("#mbrSearchBox").css("border", "solid 2px #002AFF");
		$("#coSearchBox").css("border", "");
		
		//company폼 clear
		$("#coSearchBox").find("input").prop("value", "");		
		//선택되면 disabled해제
		$("#mbrSearchBox").find("input").prop("disabled", false);
		$("#mbrSearchBox").find("select").prop("disabled", false);
		//맴버 폼 disabled
		$("#coSearchBox").find("input").prop("disabled", true);
		//searchType 설정
		$("#searchType").val("M");
	})//click
	
	$("#coSearchBox").click(function(){
		$("#coSearchBox").css("border", "solid 2px #002AFF");
		$("#mbrSearchBox").css("border","");
		
		//company폼 clear
		$("#mbrSearchBox").find("input").prop("value", "");
		//선택되면 disabled해제
		$("#coSearchBox").find("input").prop("disabled", false);
		$("#coSearchBox").find("select").prop("disabled", false);
		//맴버 폼 disabled
		$("#mbrSearchBox").find("input").prop("disabled", true);
		$("#mbrSearchBox").find("select").prop("disabled", true);
		//searchType 설정
		$("#searchType").val("CO");
	})//click
	
	$("#searchPassBtn").click(function(){
		if( $("#searchType").val() == "" ){
			alert("개인회원 또는 사업자회원을 선택해주세요.");
			return;
		}//end if
		
		//searchFrm 유효성검사(Member)
		var searchType = $("#searchType").val();
		var flag = false;
		
		if( searchType == "M" ){
			$("#mbrSearchBox").find("input").each(function(){
				var inputValue = $(this).val();
				var emailValue = $("#lb_email_select").val();
				
				if(inputValue == "" || emailValue == ""){
					flag = true;
				}//end if
			})//each
			if( flag ){
				alert("아이디,이름,이메일 주소를 모두 입력해주세요.");
				return;
			}
			//full email
			var email = $("#m_email_head").val() + "@" + $("#m_email_detail").val(); 
			$("#M_EMAIL").val(email);
		}//end if
		
		//searchFrm 유효성검사(Compnay)
		if( searchType == "CO" ){
			$("#coSearchBox").find("input").each(function(){
				var inputValue = $(this).val();
				
				if(inputValue == "" ){
					flag = true;
				}//end if
			})//each
			if( flag ){
				alert("아이디,가입자명,사업자등록번호를 모두 입력해주세요.");
				return;
			}//end if
			
			//사업자등록번호가 숫자가 아닐때
			var workNum1 = $("#work_rr_no1").val();
			var workNum2 = $("#work_rr_no2").val();
			var workNum3 = $("#work_rr_no3").val();
			if( isNaN(workNum1) || isNaN(workNum2) || isNaN(workNum3) ){
				alert("사업자등록번호는 숫자만 입력 가능합니다.");
				return;
			}//end if
			
			var worknum = workNum1 + "-" + workNum2 + "-" + workNum3;
			$("#CO_WORKNUM").val(worknum);
		}//end if
		
		$("#searchPassFrm").submit();
	})//click
	
	//사업자등록번호 숫자만 입력가능
	$("#work_rr_no1, #work_rr_no2, #work_rr_no3").keyup(function(){
		if( isNaN($(this).val()) ){
			alert("사업자등록번호는 숫자만 입력 가능합니다.");
			$(this).val("");
		}//end if
	})//keydown
	
	$("#lb_email_select").change(function(){
		var selectEmail = $(this).val();
		if( selectEmail == "etc"){
			$("#m_email_detail").val("");
			$("#m_email_detail").focus();
		} else {
			$("#m_email_detail").val(selectEmail);
		}//end else
	})//change
	
})//ready
</script>

</head><body id="secMbr" class="mbrSubCC mbrSubSchPwd" cz-shortcut-listen="true">

<div id="skipNavigation">
	<p><a href="#container">메뉴 건너뛰기</a></p>
</div>
<hr>


<!--// Header area(아이디찾기, 비밀번호 찾기, 고객상담) -->
<div id="header">
	<div class="gnbWrap gnbWrap_mSearch">
		<!-- Include virtual = "/Include/Menu/Sub/Gnb_Bar.asp" //-->
		<div id="gnb">
			
				<h1><a class="logo" href="http://localhost/prj_tryJobCatch/main.do"><img alt="잡코리아" src="//i.jobkorea.kr/content/images/2023/common/gnb/h_logo.png"></a>
					<span class="bar">
						<span class="title">
							<img src="	https://www.jobkorea.co.kr/img/member/h_cc_schpwd.gif" alt="비밀번호 찾기">
						</span>
					</span>
				</h1>
				
			<div class="secNav">
				<ol>
					<li class="mn1"><a href="http://localhost/prj_tryJobCatch/member/searchIdFrm.do"><span></span>아이디 찾기</a></li>
					<li class="mn2"><a href="http://localhost/prj_tryJobCatch/member/searchPassFrm.do"><span></span>비밀번호 찾기</a></li>
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
			<h1 class="skip">비밀번호 찾기</h1>
			<div class="mbrSec mbrSch mbrSchPwd">
				<h2 class="mbrHeading2"><img src="https://www.jobkorea.co.kr/img/member/title/mbr_h_reg_gg.gif" alt="회원정보 입력"></h2>
				<div class="mbrTplDesc">
					<p>회원구분별로 가입 시 입력한 본인정보를 입력해 주세요.</p>
				</div>
				<form name="pageForm" id="searchPassFrm" method="post" action="http://localhost/prj_tryJobCatch/member/searchPass.do" >
					<input type="hidden" id="searchType" name="searchType" value=""/>
					<input type="hidden" id="M_EMAIL" name="M_EMAIL" value="" />
					<input type="hidden" id="CO_WORKNUM" name="CO_WORKNUM" value="" />
				    	
				
				    <!--// 이메일 인증 -->
				    <div class="mbrCertifyData mbrCertifyDataGG">
				        <fieldset>
				        <legend>개인회원-이메일인증 입력폼</legend>	
					    <div class="mbrTplBox" id="mbrSearchBox">
						    <h3><img src="https://www.jobkorea.co.kr/img/member/title/mbr_h_sub_gg.gif" alt="개인회원"></h3>
						    <ul class="mbrTplData1">
							    <li>
								    <div class="option">
									    
									    
								    </div>
							    </li>
							    <li><label for="M_ID" class="title">아이디</label> <input type="text" name="M_ID" id="M_ID" maxlength="20" style="width:308px;ime-mode:inactive;" class="ipText"
							    value="m_00001">
							    </li>
							    <li id="devName"><label for="lb_name" class="title">이름</label> <input type="text" name="M_NAME" id="M_NAME" maxlength="50" style="width:308px;ime-mode:active;" class="ipText"
							    	value="곽쌍용"
							    >
							    </li>
							    <li id="devEmailForm">
								    <label for="lb_email_head" class="title">이메일 주소</label>
								    <input type="text" name="lb_email_head" id="m_email_head" maxlength="30" style="width:80px;" class="ipText"
								    	value="m1"
								    > 
								    <span class="delimiter">@</span>
								    <input type="text" name="lb_email_detail" id="m_email_detail" maxlength="20" style="width:87px;" class="ipText" title="e-메일 서비스 입력" > 
								    <select title="e-메일 사업자" name="lb_email_select" id="lb_email_select" class="ipSelect ipSelect_1">
									    <option value="">선택하세요</option>
									    <option value="naver.com">naver.com</option>
									    <option value="hanmail.net">hanmail.net</option>
									    <option value="nate.com">nate.com</option>
									    <option value="daum.net">daum.net</option>
									    <option value="gmail.com">gmail.com</option>
									    <option value="dreamwiz.com">dreamwiz.com</option>
									    <option value="etc">직접입력</option>
								    </select>
							    </li>
						    </ul>

					    </div>
					    </fieldset>
				    </div>

				    <div class="mbrCertifyData mbrCertifyDataGI">
					    <fieldset>
					    <legend>기업회원 인증 입력폼</legend>
					    <div class="mbrTplBox" id="coSearchBox">	
						    <h3><img src="https://www.jobkorea.co.kr/img/member/title/mbr_h_sub_gi.gif" alt="기업회원"></h3>	
						    <ul class="mbrTplData1">
							    <li>
								    <div class="option">
									    
									    
								    </div>
							    </li>
							    <li><label for="C_ID" class="title">아이디</label> <input type="text" name="CO_ID" id="C_ID" style="width:308px;" class="ipText" maxlength="20"></li>
							    <li>
								    <label for="C_Register" class="title">가입자명
									    <div class="tipHover">
										    <button><img src="//i.jobkorea.kr/content/images/2023/member/icoLoginTip.png" alt="기업회원"></button>
										    <div class="tip">
											    회원가입 시 등록한 기업담당자 <br>이름을 입력해 주세요.
											    <!-- <a href="#" class="tipClose">닫기</a> -->
										    </div>
									    </div>
								    </label> 
								    <input type="text" name="CO_NAME" id="C_Register" maxlength="50" style="width:308px;" class="ipText">
							    </li>
							    <li>
								    <label for="work_rr_no1" class="title">사업자등록번호</label>
								    <input type="text" id="work_rr_no1" name="work_rr_no1" maxlength="3" style="width:94px;" class="ipText"  title="사업자등록번호 첫번째자리">
								    <span class="delimiter">-</span>
								    <input type="text" id="work_rr_no2" name="work_rr_no2" maxlength="2" style="width:88px;" class="ipText"  title="사업자등록번호 두번째자리">
								    <span class="delimiter">-</span>
								    <input type="text" id="work_rr_no3" name="work_rr_no3" maxlength="5" style="width:94px;" class="ipText" title="사업자등록번호 세번째자리">
							    </li>
						    </ul>
					    </div>
                        </fieldset>
				    </div>
                </form>
			</div>
			<p class="mbrBtnFunc"><span class="mbrBtn mbrBtnSearch_3"><button type="button" id="searchPassBtn"><span>비밀번호 찾기</span></button></span></p>
			<hr>
			<!--// 고객센터 문의 -->
						
			<hr>
	
		</div>
	</div>
	<hr>
</div>
<!--// Footer Area -->

   
		<script type="text/javascript">
			var familysiteLayer = document.getElementById("devListLinkFamily");
			if (document.getElementById("devFamilysiteBtn") != null)
			{
				document.getElementById("devFamilysiteBtn").onclick = function()
				{
					familysiteLayer.style.display = "block";
				}
				document.getElementById("devListLinkFamilyClose").onclick = function()
				{
					familysiteLayer.style.display = "none";
					devFamilysiteBtn.focus();
				}
			}
		</script>
	<div style="position:absolute; left:-5000px; overflow:hidden;">

</div>


<script type="text/javascript">
	$('.tipHover button').click(function(){
		$(this).next('.tip').show();
		return false;
	}).focusout(function(){
		$('.tipHover .tip').hide();
		return false;
	});
	$('.tipHover .tip').click(function(){
		$(this).hide();
		return false;
	});
</script>
</body></html>