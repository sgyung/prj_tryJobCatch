<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko"><head>


<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
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
	.mbrTplData1 li {clear:both; padding:5px 0 5px 24px; overflow:inherit;}
	.mbrTplData1 li:after { content:''; display:block; clear: both; }
	.mbrTplData1 li .tipHover { display:inline-block; position:relative; margin-left:5px; margin-top:-2px; vertical-align: middle;}
	.mbrTplData1 li .tipHover button {}
	.mbrTplData1 li .tipHover .tip { display:none; position:absolute; top:15px; left:0; width:208px; padding:15px 20px; border:1px solid #565d79; box-sizing:border-box; color:#666; font-weight:normal; line-height:1.5; background:#fff url('/img/member/popLoginClose.gif') no-repeat 190px 8px; }
	.mbrTplData1 li .tipHover .tip .tipClose { overflow:hidden; position:absolute; top:5px; right:5px; width:10px; height:9px; text-indent:-999px; background:url('/img/member/popLoginClose.gif') no-repeat }
</style>
<script type="text/javascript" src="https://www.jobkorea.co.kr/include/JS/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="https://www.jobkorea.co.kr/include/js/RegNo_Check.js"></script>

<script>
$(function(){
	
})//ready
</script>
</head>
<body id="secMbr" class="mbrSubCC mbrSubSchID" cz-shortcut-listen="true">

<!--// Header area(아이디찾기, 비밀번호 찾기, 고객상담) -->
<div id="header">
	<div class="gnbWrap gnbWrap_mSearch">
		<!-- Include virtual = "/Include/Menu/Sub/Gnb_Bar.asp" //-->
		<div id="gnb">
			
				<h1><a class="logo" href="http://localhost/prj_tryJobCatch/main.do"><img alt="잡코리아" src="//i.jobkorea.kr/content/images/2023/common/gnb/h_logo.png"></a>
					<span class="bar">
						<span class="title">
							<img src="	https://www.jobkorea.co.kr/img/member/h_cc_schid.gif" alt="아이디 찾기">
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
			<h1 class="skip">아이디 찾기</h1>
			<div class="mbrSec mbrSchIDResult">
				<h2 class="mbrHeading2"><img src="https://www.jobkorea.co.kr/img/member/title/mbr_h_msch_id_2.gif" alt="아이디조회"></h2>
				<div class="mbrTplDesc">
					
					<p>동명이인이 있는 경우, 본인 외의 ID가 노출될 수 있습니다.</p>
				</div>

				<div class="mbrTplBox">
					<h3 class="skip">보유 아이디 목록</h3>
					<p class="info"><strong>입력된 정보로 등록된 아이디 입니다.</strong></p>
					<div class="mbrTplBoxList">
						<ul>
							<li><c:out value="${ M_ID } ( 가입일 : ${ joinDate } )" /></li> 
						</ul>
					</div>
				</div>
				
				<p class="mbrBtnFunc">
				<span class="mbrBtn mbrBtnLogin_1"><a href="http://localhost/prj_tryJobCatch/member/loginFrm.do">로그인</a></span>
				<span class="mbrBtn mbrBtnSearch_2"><a href="http://localhost/prj_tryJobCatch/member/searchPassFrm.do">비밀번호 찾기</a></span></p>
			</div>
	
			
						
			<hr>
			

		</div>
		<hr>
	</div>
</div>


</body></html>