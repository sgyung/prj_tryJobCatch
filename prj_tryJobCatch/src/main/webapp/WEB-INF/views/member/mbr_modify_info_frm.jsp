<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko"><head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>tryJobCatch</title>
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

<!-- 다음 우편번호 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function execDaumPostcode() {
           
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('M_ZIP').value = data.zonecode;
                document.getElementById("M_ADDR").value = roadAddr;
                document.getElementById("M_ADDR").value = data.jibunAddress;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("M_DETAIL_ADDR").focus();
            },
            
            onclose: function(state) {
                //state는 우편번호 찾기 화면이 어떻게 닫혔는지에 대한 상태 변수 이며, 상세 설명은 아래 목록에서 확인하실 수 있습니다.
                if(state === 'FORCE_CLOSE'){
                    //사용자가 브라우저 닫기 버튼을 통해 팝업창을 닫았을 경우, 실행될 코드를 작성하는 부분입니다.

                } else if(state === 'COMPLETE_CLOSE'){
                    //사용자가 검색결과를 선택하여 팝업창이 닫혔을 경우, 실행될 코드를 작성하는 부분입니다.
                    //oncomplete 콜백 함수가 실행 완료된 후에 실행됩니다.
                }
            }
        }).open();
        
        		
    }//execDaumPostcode
</script>
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN -->
<script type="text/javascript">
$(function(){

	
	$("#modifyBtn").click(function(){
		//휴대폰번호 체크
		var phone2 = $("#M_Hand_Phone2").val();
		var phone3 = $("#M_Hand_Phone3").val();
		if( isNaN(phone2) || isNaN(phone3)){
			alert("휴대폰 번호는 숫자만 입력 가능합니다.")
			return;
		}//end if
		var emailId = $("#Email_ID").val();
		var emailAddr = $("#Email_Addr_Text").val();
		if( emailId == "" || emailAddr == "" ){
			alert("이메일을 입력해주세요.")
			return;
		}//end if
		//이메일 형식 체크
		var emailAdrrPattern = /^[^.]+\.[^.]+$/;
		if( !emailAdrrPattern.test(emailAddr)){
			alert("이메일 주소 형식을 확인해주세요. (example.com)");
			return;
		}		
		var zip = $("#M_ZIP").val();
		var addr = $("#M_ADDR").val();
		var addr2 = $("#M_DETAIL_ADDR").val();
		if( zip == "" || addr == "" ){
			alert("주소를 입력해주세요.")
			return;
		}//end if
		
		
		var emailId = $("#Email_ID").val();
		var emailAddr = $("#Email_Addr_Text").val();
		var fullEmail = emailId + "@" + emailAddr;
		$("#M_EMAIL").val(fullEmail);
		$("#mbrInfoFrm").submit();
	})//click
	
	
})//ready
</script>

</head>
<body id="secMbr" class="mbrSubMng mbrSubMngGG mbrSubMngInfo" cz-shortcut-listen="true">

<div id="skipNavigation">
	<p><a href="#container">메뉴 건너뛰기</a></p>
</div>
<hr>
<div id="header">
	<div class="gnbWrap gnbWrap_mMng">

		<div id="gnb">
	
			<!--// 개인회원 -->
			
				<h1><a class="logo" href="http://211.63.89.133/prj_tryJobCatch/main.do"><img alt="tryJobCatch" src="//i.jobkorea.kr/content/images/2023/common/gnb/h_logo.png"></a>
				<span class="bar"><span class="title"><img src="https://www.jobkorea.co.kr/img/member/h_mng_gg.gif" width="117" height="23" alt="회원정보 관리"></span></span>
				</h1>
			
			<h2 class="skip">주요링크</h2>
			<ul class="lnb">
				<li><a href="http://211.63.89.133/prj_tryJobCatch/member/mypageHome.do">개인회원 홈</a></li>
			</ul>
			<div class="secNav">
				<ol>
					<li class="mn1"><a href="http://211.63.89.133/prj_tryJobCatch/member/mbrModifyInfo.do"><span></span>개인정보 수정</a></li>
					<li class="mn2"><a href="http://211.63.89.133/prj_tryJobCatch/member/passModifyFrm.do"><span></span>비밀번호변경</a></li>
					
					<!-- <li class="mn3 end"><a href="/Customer_C/ETC/CC_leave.asp?Customer_C_Oem_No=1" target="_blank"><span></span>회원탈퇴</a></li> -->
				</ol>
			</div>
	
		</div>
	</div>
</div>
<hr>

<div class="devGuideBox ly_popup_info" style="top: 22px; left: 912px; display: none;"></div>
<div id="wrap">

	<!--// Contents Area -->
	<div id="container">

		<div id="content">
			<h1 class="skip">회원정보 수정</h1>
			<form id="mbrInfoFrm" name="form" method="post" action="http://211.63.89.133/prj_tryJobCatch/member/mbrModifyInfo.do">
				<fieldset>
				<legend>회원정보 수정 입력폼</legend>
				<div class="mbrSec mbrMngInfo">
					<h2 class="mbrHeading2"><img src="https://www.jobkorea.co.kr/img/member/title/mbr_h_mng_gg.gif" alt="회원정보 수정"></h2>
					<div class="mbrTplDesc">
						<p>회원님의 정보를 수정·확인하실 수 있습니다.</p>
					</div>

					<div class="mbrTplData2">
						<table summary="이 표는 회원정보 수정 입력폼으로 아이디, 비밀번호, 비밀번호확인, 이름, 생년월일/성별, 연락처, 이메일을 나타내고 있습니다.">
							<caption><span class="skip">회원정보 수정 입력폼</span></caption>
							<colgroup>
								<col width="110px">
								<col width="87px">
								<col width="*">
							</colgroup>
							<tbody><tr>
								<th scope="row"><label for="lb_id"><span class="blank"></span> 아이디 <img alt="필수입력사항" src="https://www.jobkorea.co.kr/img/member/icon_b.gif"></label></th>
								<td>
									<div class="social_row"><strong><c:out value="${ mbrDomain.m_ID }" /></strong>
							
									</div>
								</td>
							</tr>

						
							<tr>
								<th scope="row"><span class="blank"></span> 이름 <img alt="필수입력사항" src="https://www.jobkorea.co.kr/img/member/icon_b.gif"></th>
								<td colspan="3"><input type="hidden" class="txtForm" id="M_NAME " name="M_NAME" size="12" maxlength="15" value="${ mbrDomain.m_NAME }"><c:out value="${ mbrDomain.m_NAME }" />
								
								
								</td>
							</tr>
							<tr>
								<th scope="row"><span class="blank"></span> 생년월일/성별 <img alt="필수입력사항" src="https://www.jobkorea.co.kr/img/member/icon_b.gif"></th>
								
								<fmt:parseDate var="parsedDate" value="${ mbrDomain.m_BDAY }" pattern="yyyyMMdd" />
								<td><fmt:formatDate value="${parsedDate}" pattern="yyyy년 MM월 dd일생 " /><c:out value="(${ mbrDomain.m_GENDER eq 'M' ? '남' : '여' })" /></td>
								<input type="hidden" name="M_BDAY" id="M_BDAY" value="${ mbrDomain.m_BDAY }" />
								<input type="hidden" name="M_GENDER" id="M_GENDER" value="${ mbrDomain.m_GENDER }" />
							</tr>
						
							<tr>
								<th scope="row"><span class="blank"></span> 휴대폰번호 <img alt="필수입력사항" src="https://www.jobkorea.co.kr/img/member/icon_b.gif"></th>
								<td>
									<div class="mbrHelpWrap">
										<div class="mobile">
											<label for="M_Hand_Phone1" class="blind">휴대폰</label>
											<input type="text" name="M_Hand_Phone0" id="M_Hand_Phone0" value="010" disabled="disabled" maxlength="3" title="휴대폰 국번" class="ipText ipTel ipNum devNoPh moveNext" style="ime-mode:disabled; float:left;">
											<!-- <select title="휴대폰 국번" name="M_Hand_Phone1" id="M_Hand_Phone1" style="width:110px; float:left;" class="ipSelect">
												<option value="010" selected="">010</option
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
											</select> -->
											<span class="delimiter" style="padding: 6px 3px; float:left;">-</span>
											<input type="text" name="M_Hand_Phone2" id="M_Hand_Phone2" maxlength="4" title="휴대폰 앞자리" class="ipText ipTel ipNum devNoPh moveNext" value="${ fn:substring(mbrDomain.m_TEL, 4, 8) }" style="ime-mode:disabled; float:left;">
											<span class="delimiter" style="padding: 6px 3px; float:left;">-</span>
											<input type="text" name="M_Hand_Phone3" id="M_Hand_Phone3" maxlength="4" title="휴대폰 뒷자리" class="ipText ipTel ipNum devNoPh moveNext" value="${ fn:substring(mbrDomain.m_TEL, 9, 13) }" style="ime-mode:disabled; float:left;" nextid="M_Home_Phone1">
											<input type="hidden" id="M_TEL" name="M_TEL" value="${ mbrDomain.m_TEL }" />
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row"><span class="blank"></span> <label for="Email_ID">이메일 <img alt="필수입력사항" src="https://www.jobkorea.co.kr/img/member/icon_b.gif"></label></th>
								<td>
									<div class="mbrHelpWrap">
										<input type="hidden" name="M_EMAIL" id="M_EMAIL" value="${ mbrDomain.m_EMAIL }">
										<c:set var="splitEmail" value="${fn:split(mbrDomain.m_EMAIL, '@')}" />
										<input type="text" name="Email_ID" id="Email_ID" maxlength="30" style="width:150px;" class="ipText" value="${ splitEmail[0] }">
										<span class="delimiter">@</span>
										<input type="text" name="Email_Addr_Text" id="Email_Addr_Text" title="이메일 서비스 입력" maxlength="25" class="ipText" style="width:150px" value="${ splitEmail[1] }">
										<div style="left:455px; display:none;" class="mbrTplLayer mbrTplLayer_1 mbrLayerHelp" id="CautionResult2" name="CautionResult">
											<div class="desc">
												<p>이메일을 입력해 주세요</p>
											</div>
											<span class="arrow"></span>
										</div>
									</div>
								</td>
							</tr>
							
							<tr>
								<th scope="row"><span class="blank"></span> <label for="postcheck">우편번호 <img alt="필수입력사항" src="https://www.jobkorea.co.kr/img/member/icon_b.gif"></label></th>
								
								<td colspan="3">
									<div class="mbrHelpWrap" style="z-index:1000;">
                                        <input type="text" id="M_ZIP" name="M_ZIP" style="width:300px;" class="ipText" maxlength="8" value="${ mbrDomain.m_ZIP }" readonly="readonly" >
										<span>

											<button id="btnSearchAddr" type="button" onclick="execDaumPostcode()" ><img src="https://www.jobkorea.co.kr/img/common/btn_jk_add_search.gif" alt="주소 검색"></button>
										</span>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row"><span class="blank"></span> <label for="M_Addr_Text">주소 <img alt="필수입력사항" src="https://www.jobkorea.co.kr/img/member/icon_b.gif"></label></th>
								<td colspan="3">
									<div class="mbrHelpWrap">
										<input type="text" id="M_ADDR" name="M_ADDR" style="width:300px;" class="ipText" maxlength="100" readonly="readonly" value="${ mbrDomain.m_ADDR }" >
										<input type="text" id="M_DETAIL_ADDR" name="M_DETAIL_ADDR" style="width:300px;" class="ipText" maxlength="35" value="${ mbrDomain.m_DETAIL_ADDR }">
									</div>
								</td>
							</tr>
							<tr>
							</tr>
						</tbody></table>
					</div>
					
					
				</div>
				<hr>
				<p class="mbrBtnFunc">
					<span id="modifyBtn" class="mbrBtn mbrBtnModify_1" style="cursor:pointer;"></span>
					<span id="modifyCancelBtn" class="mbrBtn mbrBtnCancel_1" style="cursor:pointer;"></span>
				</p>
			</fieldset>
		</form>
		</div>
		<hr>
	</div>
</div>









<div id="fb-root" class=" fb_reset fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div></div>
</body></html>