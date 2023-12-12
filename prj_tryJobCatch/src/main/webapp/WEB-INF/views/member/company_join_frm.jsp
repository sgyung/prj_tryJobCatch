<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko"><head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>잡코리아 통합 회원가입 : 개인회원 가입 ㅣ 잡코리아 - 좋은 일이 생긴다</title>
    <meta name="description" content="구인 구인 검색 엔진, 취업 정보, 채용 정보, 구직 정보, 구인 정보, 취업 가이드, 원 클릭 취업 검색, 경력 관리,잡코리아, JOKOREA, 헤드헌팅, 파견·대행, 아웃소싱, 인재파견, 채용대행, 위탁도급, 파견임시, 교육, 교육과정, 교육정보, 교육기관, 취업박람회, 채용박람회">
    <meta name="keywords" content="jobkorea, 구인, 구직, 취업, 등록, 신문기사, 고용, 대기업, 채용, 기업, 검색, 컴퓨터, 정보통신, 웹마스터, 네트웍, 서버관리, 웹 디자인, 웹 마케팅, 컨텐트개발, 정보검색/사서직, 인터넷영업, 서버구축, 데이터베이스, 디자인, 편집디자인, MAC 편집, 제품 디자인, 산업 디자인, CAD, CAM, 캐릭터, 애니메이션, 프로그래머, 정보제공(IP/CP), 기술 영업, 통신 기술, 시스템 분석/설계, 정보통신강사, 하드웨어, 관리직, 경리, 회계, 재무, 마케팅, 영업, 무역, 해외영업, 사무직, 기획, 총무, 인사, 홍보, 비서직, 프리랜서/아르바이트, 장애인, 외국인업체, 자원봉사, 노무직,잡코리아, JOKOREA, 헤드헌팅, 파견·대행, 아웃소싱, 인재파견, 채용대행, 위탁도급, 파견임시, 교육, 교육과정, 교육정보, 교육기관, 취업박람회, 채용박람회, 공채, 대기업공채, 그룹사공채, 맞춤법검사기, 롯데채용, 삼성채용, 포스코채용,글자수세기, 현대자동차채용, 이력서양식, 이력서, 기아자동차채용, 자기소개서, 신한은행채용, LF채용, 이력서양식다운, 자기소개서양식, 자기소개서샘플, 자기소개서잘쓴예, 글자수세기프로그램, 취업사이트, 취업, 구인구직사이트, 학점계산기, 구인구직, 이력서양식HWP, 한화채용, 학점계산, 지원동기, 자기소개서성장과정, 삼성고졸채용, CJ채용, 적성검사, SK채용,LG전자채용, 자소서, 기본이력서양식, 자소서잘쓴예, 취업성공패키지, 농협채용, 한글글자수세기, 삼성전자채용, 자기소개서예문, 채용, 맞춤법검사, 구직사이트, 취업정보사이트, 영문이력서, 이력서쓰는법, 직업적성검사, 일자리사이트, 면접자기소개, 자기소개서예시, 이력서다운, 취업박람회, 이력서자기소개서">
    <meta name="verify-v1" content="wfOOCE9Vtx+Z5etOXJnS9LU03yGpBxkK74T/yU63Xqs=">
    <meta name="Robots" content="noindex,nofollow">


<style>
    .async-hide {
        opacity: 0 !important
    }
    #zipSearchBtn {
    display: block;
    position: absolute;
    right: 0;
    top: 0;
    width: 150px;
    height: 60px;
    border-left: 1px solid #ddd;
    background-color: #f2f4f7;
    box-sizing: border-box;
    text-align: center;
    }
    
    #idDupCheck {
    display: block;
    position: absolute;
    right: 0;
    top: 0;
    width: 150px;
    height: 60px;
    border-left: 1px solid #ddd;
    background-color: #f2f4f7;
    box-sizing: border-box;
    text-align: center;
    }
	
	.mbrRegist i.icon.required {
    margin-left: 5px;
    font-size: 16px;
    color: #ff3333;
}

.mbrRegist .policy label.chk.checked:after {
  background-position : 0 -253px !important/* 체크됐을 때의 스타일 설정 */
}

.mbrRegist .policy label.chk.no:after {
	background-position: 0 -283px !important;
}

.mbrRegist .policy .policy_check_all label.allChecked:after{
	background-position: 0 -439px !important;
}
.mbrRegist .policy .policy_check_all label.noAll:after{
	background-position: 0 -403px !important;
}
	
</style>



    <link rel="SHORTCUT ICON" href="/favicon.ico?202311281400">

    <link href="https://i.jobkorea.kr/content/css/ver_1/mbr/mbr_tpl-sv-202212062201.css" rel="stylesheet" type="text/css">
    <link href="https://i.jobkorea.kr/content/css/ver_1/join/common-sv-202311081332.css" rel="stylesheet" type="text/css">
    <link href="https://i.jobkorea.kr/content/css/ver_1/join/join-sv-202310111400.css" rel="stylesheet" type="text/css">

    
    <script type="text/javascript" src="https://i.jobkorea.kr/Scripts/underscore.js" charset="utf-8"></script>
    <script type="text/javascript" src="https://i.jobkorea.kr/Scripts/Member/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
    

    <script src="https://i.jobkorea.kr/Scripts/Member/join_common.js?ver=202311281400"></script>

    <script src="https://i.jobkorea.kr/Scripts/Member/join_account.js?ver=202311281400"></script>

<script type="text/javascript" src="https://www.jobkorea.co.kr/include/JS/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="https://www.jobkorea.co.kr/include/js/RegNo_Check.js"></script>
 
    <script type="text/javascript" src="https://i.jobkorea.kr/Scripts/EchoScriptV2.js"></script>
    

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
                document.getElementById('M_zipcode').value = data.zonecode;
                document.getElementById("M_addr1").value = roadAddr;
                document.getElementById("M_addr1").value = data.jibunAddress;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("M_addr2").focus();
            },
            
            onclose: function(state) {
                //state는 우편번호 찾기 화면이 어떻게 닫혔는지에 대한 상태 변수 이며, 상세 설명은 아래 목록에서 확인하실 수 있습니다.
                if(state === 'FORCE_CLOSE'){
                    //사용자가 브라우저 닫기 버튼을 통해 팝업창을 닫았을 경우, 실행될 코드를 작성하는 부분입니다.

                } else if(state === 'COMPLETE_CLOSE'){
                    //사용자가 검색결과를 선택하여 팝업창이 닫혔을 경우, 실행될 코드를 작성하는 부분입니다.
                    //oncomplete 콜백 함수가 실행 완료된 후에 실행됩니다.
                	$(".mbr_zipcode").find(".col_1").addClass("focus");
                	$(".mbr_zipcode").find(".col_2").addClass("focus");
                	$(".mbr_addr1").find(".col_1").addClass("focus");
                	$(".mbr_addr1").find(".col_2").addClass("focus");
                	$(".mbr_addr2").find(".col_1").addClass("focus");
                	$(".mbr_addr2").find(".col_2").addClass("focus");
                }
            }
        }).open();
        
        
        		
    }//execDaumPostcode
</script>
<script type="text/javascript">
$(function(){
	//test 값 세팅
	$("#Corp_RegNum").val("123-10-12345");
	$("#Corp_Name").val("testName");
	$("#Boss_Name").val("boss");
	$("#M_zipcode").val("34245");
	$("#M_addr1").val("testaddr1");
	$("#M_addr2").val("testaddr2");
	$("#M_empCnt").val("30");
	$("#M_startDate").val("2022");
	$("#M_homepage").val("www.test.test");
	$("#capital").val("500000");
	$("#revenue").val("5000000");
	$("#U_PWD").val("zxc8294!@");
	$("#Mem_Name").val("jys");
	$("#Corp_Phone").val("010-0000-0000");
	$("#email").val("zxc8294@zxc.zxc");
	
	
	$(".chk_all").click(function(){
		if( $(this).hasClass("noAll") ){
			$(this).removeClass("noAll")
			$(this).addClass("allChecked")
			
			$(".chk").removeClass("no");
			$(".chk").addClass("checked");
		} else if( !$(this).hasClass("noAll") && !$(this).hasClass("allChecked") ){
			$(this).addClass("allChecked")
			$(".chk").addClass("checked");
		} else {
			$(".chk").removeClass("checked");
			$(".chk").addClass("no");
			$(this).removeClass("allChecked")
			$(this).addClass("noAll");
		}
	})//click
	
	$(".chk").click(function(event){
		// 클릭된 요소가 '내용보기'라면 실행취소
	    if ( $(event.target).hasClass("mbrBtnPolicy") ){
	    	return;
	    }
		if( $(this).hasClass("no")  ){
			$(this).removeClass("no")
			$(this).addClass("checked")
		} else if( !$(this).hasClass("no") && !$(this).hasClass("checked") ){
			$(this).addClass("checked")
		} else 	{
			$(this).removeClass("checked")
			$(this).addClass("no");
		}
		var cnt = 0;
		$(".chk").each(function(){
			if( $(this).hasClass("checked") ){
				cnt++;
			}
		})//each
		//항목이 모두 체크되었을 때 전체동의 체크
		
		if(cnt == 3){
			$(".chk_all").removeClass("noAll")
			$(".chk_all").addClass("allChecked")
		} else {
			$(".chk_all").removeClass("allChecked")
			$(".chk_all").addClass("noAll")
		}
		
		
	})
	
	//inputBox 효과
	$(".mbr_info .row").focusin(function(){
	    var inputData = $(this).find(".col_2 input").val();
	
			$(this).find(".col_1").addClass("focus");
		    $(this).find(".col_2").addClass("focus");
		
		    $(this).focusout(function(){
		    	if( $(this).find(".col_2 input").val() == "" ||
	    			$(this).find(".col_2 select").val() == "" ){
			    	$(this).find(".col_1").removeClass("focus");
				    $(this).find(".col_2").removeClass("focus");
		    	}//end if
		    })//focusout
	})//click
	
	$("#idDupCheck").click(function(){
		var id = $("#U_ID").val();
		if( id == ""){
			alert("아이디를 입력해주세요.");
			return;
		}//end if
		var idPattern = /^[a-z]+[a-z0-9]{5,19}$/;
		if( !idPattern.test(id)){
			alert("아이디는 영문 소문자, 숫자를 포함한 6~20자 이여야 합니다.");
			return;
		}//end if
		
		var param = { "id" : id };
		$.ajax({
			url : "http://localhost/prj_tryJobCatch/member/coIdDupCheck.do",
			data : param,
			dataType : "JSON",
			type : "POST",
			error : function(xhr){
				alert(xhr.status);
			},
			success : function( jsonObj ){
				var state = jsonObj.dupState;
				if( state == 'Y' ){
					alert("사용 가능한 아이디 입니다.");
					$("#idDupState").val(state);
					return;
				}
				if( state == 'N'){
					alert("중복된 아이디 입니다.");
					$("#idDupState").val(state);
					$("#U_ID").val("")
					$("#U_ID").focus();
					return;
				}
			}//success
		})//ajax
		
		
	})//click
	
	//가입하기 버튼
	$("#companyJoinBtn").click(function(){
		
		//기업형태 체크
		var coType = $("#Corp_Type option:selected").val();
		if( coType == ""){
			alert("기업형태를 선택해주세요.");
			return;
		}//end if
		//산업 체크
		
		var industry = $("#co_industry option:selected").val();
		if( industry == "" ){
			alert("산업을 선택해주세요.");
			return;
		}//end if
		//사업자등록번호 체크
		var registNumPtn = /^\d{3}-\d{2}-\d{5}$/;
		var registNum = $("#Corp_RegNum").val();
		if( !registNumPtn.test(registNum)){
			alert("사업자 등록번호 형식을 확인해주세요. ( 000-00-00000 )");
			return;
		}//end if
		//사원수 체크
		var empCnt = $("#M_empCnt").val();
		if( isNaN(empCnt) ){
			alert("사원수는 숫자여야 합니다.");
			return;
		}//end if
		//설립년도 체크
		var startYear = $("#M_startDate").val();
		if( isNaN(startYear)){
			alert("설립년도는 숫자여야 합니다.");
			return;
		}//end if
		//자본금 체크
		var capital = $("#capital").val();
		if( isNaN(capital) ){
			alert("자본금은 숫자여야 합니다.");
			return;
		}//end if
		var revenue = $("#revenue").val();
		if(  isNaN(revenue) ){
			alert("매출액은 숫자여야 합니다.");
			return;
		}//end if
		
		//아이디 중복확인 체크
		var idDupState = $("#idDupState").val();
		if( idDupState != 'Y'){
			alert("아이디 중복확인을 해주세요.");
			return;
		}//end if
		
		//비밀번호 체크
		var passwordPattern = /^(?=.*[a-z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,16}/;
		var password = $("#U_PWD").val();
		if( !passwordPattern.test(password)){
			alert("비밀번호는 영문,숫자,특수기호를 조합해서 8~16자이어야 합니다.");
			return;
		}//end if
		//이메일 체크
		var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
		var email = $("#email").val();
		if( !emailPattern.test(email)){
			alert("이메일 형식에 맞게 작성해주세요. ( example@example.com )");
			return;
		}//end if
		//휴대폰번호 체크
		var phonePattern = /^010-\d{4}-\d{4}$/;
		var phone = $("#Corp_Phone").val();
		if( !phonePattern.test(phone) ){
			alert("휴대폰번호를 확인해주세요. ( 010-0000-0000 )");
			return;
		}//end if
		
		//필수입력 항목 체크ㅇ
		var flag = false;
		$(".mbr_info").find("input").each(function(){
			var inputData = $(this).val();
			
			if( inputData == ""){
				flag = true;
				return
			}//end if
		})//each
		if( flag ){
			alert("필수 입력 정보를 모두 입력해주세요.");
			return;
		}//end if
		
		
		//필수동의 항목 및 개인정보 수집 및 이용 동의 체크
		if( !$(".chk_all").hasClass("allChecked")){
			alert("필수동의 항목을 체크 해주세요.")
			return;
		}//end if
		
		$("#JoinFrm").submit();
	})//click
	
	
	
	
	
})//ready

//동의항목 클릭
function spreadPolicy( target ){
	var displayState = $(target).css("display");
	var newDisplay = (displayState == 'none') ? 'block' : 'none';
	$(target).css("display", newDisplay);
	
}
	
</script>
 
<body class="jkJoin" cz-shortcut-listen="true">
    <div id="wrap">
        
<div id="header">
    <h1><a href="main.do"><img src="https://i.jobkorea.kr/content/images/member/gnb/h_logo_jobkorea.png" alt="JOBKOREA x albamon"></a></h1>
    <div class="joinTop">
        <h2>
            <span class="slogun_1">JOBKOREA x albamon</span>
        </h2>
    </div>

    <h3 class="skip">글로벌 메뉴</h3>
    <ul class="gnb f_clear">
        <li><a href="../main.do">홈</a></li>
        <li><a href="#">고객센터</a></li>
    </ul>

    <h3 class="skip">회원 형태별 가입</h3>
    <ul class="snb f_clear">
    	<li class="person"><a href="memberJoinFrm.do">개인회원</a></li>
        <li class="corp on"><a href="companyJoinFrm.do">기업회원</a></li>
    </ul>
</div>
        


<input type="hidden" id="hdnEduId" value="">
<div id="container" class="mbrRegist">
    <h3 class="skip">개인회원 가입 정보</h3>
    <fieldset>
        <legend>개인회원 가입</legend>
<form action="http://localhost/prj_tryJobCatch/member/companyJoin.do" id="JoinFrm" method="post" name="frm">            <!-- 약관 동의 -->
<input data-val="true" data-val-required="<p class=&quot;failure&quot;>필수 정보입니다.</p>" id="M_Id" name="M_Id" type="hidden" value=""><input id="OEM_No" name="OEM_No" type="hidden" value="1"><input id="DI_Code" name="DI_Code" type="hidden" value=""><input id="getCertifynum" name="getCertifynum" type="hidden" value=""><input id="CertifyReCall" name="CertifyReCall" type="hidden" value=""><input id="ReSubmit" name="ReSubmit" type="hidden" value=""><input id="CertifyCode" name="CertifyCode" type="hidden" value=""><input id="Aptitute_Stat" name="Aptitute_Stat" type="hidden" value=""><input id="CheckParamString" name="CheckParamString" type="hidden" value="8d3bc0d8e98202294a311db74c5eb05d"><input id="Re_Url" name="Re_Url" type="hidden" value="">            <!-- 소셜 로그인 -->
            
            <div class="row_group mbr_info">
                <h4>기업정보</h4>
                <p class="subTx"><strong>*</strong> 필수 입력 정보입니다.</p>
                <div class="row mbr_name mbr_co_type">
                   <div class="col_1">
                       <label class="mbr_name" for="Corp_Type">기업형태<i class="icon required" aria-hidden="hidde">*</i></label>
                   </div>
                    <div class="col_2">
                        <div class="select_wrap dev-corp-type">
                            <select id="Corp_Type" name="CM_CO_TYPE">
                                <option value=""></option>
                                    <option value="대기업">대기업</option>
                                    <option value="중견기업">중견기업</option>
                                    <option value="중소기업">중소기업</option>
                                    <option value="공기업">공기업</option>
                            </select>
                        </div>
                        <div class="notice_msg" style="display:none;"></div>
                    </div>
                  </div>
                  
                  <div class="row mbr_name mbr_co_industry">
                   <div class="col_1">
                       <label class="mbr_name" for="mbr_co_industry">산업<i class="icon required" aria-hidden="hidde">*</i></label>
                   </div>
                    <div class="col_2">
                        <div class="select_wrap dev-co-industry">
                            <select id="co_industry" name="CM_INDUSTRY">
                                <option value=""></option>
                                    <option value="서비스업">서비스업</option>
                                    <option value="금융/은행업">금융/은행업</option>
                                    <option value="IT/정보통신업">IT/정보통신업</option>
                                    <option value="판매/유통업">판매/유통업</option>
                                    <option value="제조/생산/화학업">제조/생산/화학업</option>
                                    <option value="교육업">교육업</option>
                                    <option value="건설업">건설업</option>
                                    <option value="의료/제약업">의료/제약업</option>
                                    <option value="미디어/광고업">미디어/광고업</option>
                                    <option value="문화/예술/디자인업">문화/예술/디자인업</option>
                                    <option value="기관/협회">기관/협회</option>
                            </select>
                        </div>
                        <div class="notice_msg" style="display:none;"></div>
                    </div>
                  </div>
                   
                  <div class="row company_num">
                        <div class="col_1">
                            <label for="Corp_RegNum">사업자등록번호<i class="icon required" aria-hidden="hidde">*</i></label>
                        </div>
                        <div class="col_2">
                            <input type="text" name="CM_CO_REGISTRATION_NUM" id="Corp_RegNum" class="mbr_name dev-corp-num" maxlength="12" value="">
                            <div class="notice_msg" id="notice_msg_regnum"></div>
                        </div>
                   </div>
                   
                   <div class="rows">
                        <div class="row company_name">
                            <div class="col_1">
                                <label class="mbr_name" for="Corp_Name">회사명<i class="icon required" aria-hidden="hidde">*</i></label>
                            </div>
                            <div class="col_2">
                                <input class="mbr_name dev-corp-name" data-val="true" data-val-maxlength="필드 Corp_Name은(는) 최대 길이가 '50'인 문자열 또는 배열 형식이어야 합니다." data-val-maxlength-max="50" data-val-required="Corp_Name 필드가 필요합니다." id="Corp_Name" maxlength="50" name="CM_NAME" type="text" value="">
                                <div class="notice_msg" id="notice_msg_corp_name"></div>
                            </div>
                        </div>
                        <div class="row company_bossname">
                            <div class="col_1">
                                <label class="mbr_name" for="Boss_Name">대표자명<i class="icon required" aria-hidden="hidde">*</i></label>
                            </div>
                            <div class="col_2">
                                <input class="mbr_name dev-ceo-name" data-val="true" data-val-maxlength="필드 Boss_Name은(는) 최대 길이가 '20'인 문자열 또는 배열 형식이어야 합니다." data-val-maxlength-max="20" data-val-required="Boss_Name 필드가 필요합니다." id="Boss_Name" maxlength="20" name="CM_CEO_NAME" type="text" value="">
                                <div class="notice_msg" id="notice_msg_ceo_name"></div>
                            </div>
                        </div>
                    </div>
                    
         
            
                
                <div class="row mbr_zipcode">
                    <div class="col_1">
                        <label for="M_zipcode">회사주소<i class="icon required" aria-hidden="hidde">*</i></label>
                    </div>
                    <div class="col_2">
                        <input type="text" id="M_zipcode" name="CM_ZIPCODE" size="4" maxlength="13" class="dev-zipcode">
                        <input type="button" id="zipSearchBtn" onclick="execDaumPostcode()" value="주소검색" style="border: none; cursor: pointer;">
                        <div class="notice_msg" id="notice_msg_zipcode"></div>
                    </div>
                </div>
                <div class="row mbr_addr1">
                    <div class="col_1">
                        <label for="M_addr1">주소<i class="icon required" aria-hidden="hidde">*</i></label>
                    </div>
                    <div class="col_2">
                        <input type="text" id="M_addr1" name="CM_ADDR" size="4" maxlength="13" class="dev-addr1">
                        
                        <div class="notice_msg" id="notice_msg_addr1"></div>
                    </div>
                </div>
                <div class="row mbr_addr2">
                    <div class="col_1">
                        <label for="M_addr2">상세주소<i class="icon required" aria-hidden="hidde">*</i></label>
                    </div>
                    <div class="col_2">
                        <input type="text" id="M_addr2" name="CM_DETAIL_ADDR" size="4" maxlength="13" class="dev-addr2">
                        
                        <div class="notice_msg" id="notice_msg_addr2"></div>
                    </div>
                </div>
                
                <div class="row mbr_empCnt">
                    <div class="col_1">
                        <label for="M_empCnt">사원수<i class="icon required" aria-hidden="hidde">*</i></label>
                    </div>
                    <div class="col_2">
                        <input type="text" id="M_empCnt" name="CM_EMP_NUM" size="4" maxlength="13" class="dev-empCnt">
                        
                        <div class="notice_msg" id="notice_msg_empCnt"></div>
                    </div>
                </div>
                 
                <div class="row mbr_startDate">
                    <div class="col_1">
                        <label for="M_startDate">설립년도<i class="icon required" aria-hidden="hidde">*</i></label>
                    </div>
                    <div class="col_2">
                        <input type="text" id="M_startDate" name="CM_ESTABLISHMENT_YEAR" size="4" maxlength="4" class="dev-startDate">
                        
                        <div class="notice_msg" id="notice_msg_startDate"></div>
                    </div>
                </div>
                
                 <div class="row mbr_homepage">
                    <div class="col_1">
                        <label for="M_homepage">홈페이지<i class="icon required" aria-hidden="hidde">*</i></label>
                    </div>
                    <div class="col_2">
                        <input type="text" id="M_homepage" name="CM_HOMEPAGE" size="4" maxlength="13" class="dev-homepage">
                        
                        <div class="notice_msg" id="notice_msg_homepage"></div>
                    </div>
                </div>
                
                
                <div class="rows" style="">
                        <div class="row company_name" style="
    width: 285px;
">
                            <div class="col_1">
                                <label class="mbr_capital" for="Corp_capital">자본금<i class="icon required" aria-hidden="hidde">*</i></label>
                            </div>
                            <div class="col_2" style="
    /* width: 70%; */
">
                                <input class="mbr_name dev-corp-capital" id="capital" name="CM_MONEY" type="text" value="">
                                <div class="notice_msg" id="notice_msg_corp_capital"></div>
                            </div>
                        </div>
                        <div class="row company_capital" style="
    width: 285px;
">
                            <div class="col_1">
                                <label class="mbr_revenue" for="Boss_Name">매출액<i class="icon required" aria-hidden="hidde">*</i></label>
                            </div>
                            <div class="col_2" style="
    width: 100%;
">
                                <input class="mbr_revenue dev-co-revenue" data-val="true"  id="revenue" name="CM_SALES" type="text" value="">
                                <div class="notice_msg" id="notice_msg_ceo_name"></div>
                            </div>
                        </div>
                    </div>
                
            </div>
            <!-- 기업정보end -->
            
            
            <div class="row_group line_bottom mbr_info">
                    <h4>인사담당자 정보</h4>
                    <!-- 인사담당자 정보 -->
        
			                    <!-- 기본정보 -->
			<div class="rows">
			    <div class="row mbr_id" style="width:400px">
			        <div class="col_1">
			            <label for="U_ID">아이디<i class="icon required" aria-hidden="hidde">*</i></label>
			        </div>
			        <div class="col_2">
			            <input data-val="true" id="U_ID" maxlength="20" name="CM_ID" class="dev-id" type="text" value="">
			            <input type="hidden" id="idDupState" value="N" />
                        <input type="button" id="idDupCheck"  value="중복확인" style="border: none; cursor: pointer;" />
			            <div class="notice_msg" id="notice_msg_id"></div>
			        </div>
			    </div>
			    <div class="row mbr_passwd" style="width:400px">
			        <div class="col_1">
			            <label for="U_PWD">비밀번호<i class="icon required" aria-hidden="hidde">*</i></label>
			        </div>
			        <div class="col_2">
			            <input id="U_PWD" class="dev-password" maxlength="16" name="CM_PW" type="password" style="ime-mode:disabled;" value="">
			            <div class="notice_msg" id="notice_msg_pwd"><p class="failure"></p></div>
			        </div>
			       
			    </div>
			</div>
			<div class="row mbr_name">
			    <div class="col_1">
			        <label class="mbr_name" for="Mem_Name">가입자명<i class="icon required" aria-hidden="hidde">*</i></label>
			    </div>
			    <div class="col_2">
			        <input class="mbr_name dev-name" id="Mem_Name" maxlength="12" name="CM_CO_NAME" type="text" value="">
			        <div class="notice_msg" id="notice_msg_name"></div>
			    </div>
			</div>
			
			<div class="row mbr_phone">
			    <div class="col_1">
			        <label class="mbr_phone" for="Corp_Phone">전화번호 (010-0000-0000)<i class="icon required" aria-hidden="hidde">*</i></label>
			    </div>
			    <div class="col_2">
			        <input class="mbr_phone dev-phone" data-val="true" id="Corp_Phone" maxlength="13" name="CM_TEL" title="전화번호" type="text" value="">
			        <div class="notice_msg" id="notice_msg_phone"><p class="failure">필수 정보입니다.</p></div>
			    </div>
			</div>
			<div class="row mbr_email">
			    <div class="col_1">
			        <label for="Email_ID" class="mbr_email_id">이메일<i class="icon required" aria-hidden="hidde">*</i></label>
			    </div>
			    <div class="col_2">
			        <input type="text" id="email" name="CM_EMAIL" class="mbr_email_id dev-mail" size="8" maxlength="100" value="">
			        <div class="notice_msg" id="notice_msg_mail"></div>
			    </div>
			</div>
                </div>
                
				<h4 class="skip">약관 동의</h4>
				<div class="row_group line_all policy">
    <div class="row policy_check_all">
        <input type="checkbox" id="lb_chk_all" class="mbrCheckOff">
        <label for="lb_chk_all" class="chk_all"><span class="txt">필수동의 항목 및 개인정보 수집 및 이용 동의</span></label>
    </div>

    <div class="row policy_check_service required">
        <input type="checkbox" id="lb_chk_service" name="Service_Agree" class="mbrCheckOn devAgreeCheck" value="1">
        <label for="lb_chk_service" class="chk_service chk"><strong>[필수]</strong> 이용약관 동의 <a href="#DevPolicyService" onclick="spreadPolicy(DevPolicyService)" class="mbrBtnPolicy devPolicyService">내용보기</a></label>
        <div id="DevPolicyService" class="policyTplBox" style="display: none;">
            <div class="pvsSec pvsCntTp">
    <ol>
        <li>
            <dl>
                <dt><a name="gg01" id="gg01"></a><strong>제 1 조 (목적) </strong></dt>
                <dd>본 약관은 잡코리아 유한책임회사(이하 "회사")가 운영하는 "서비스"를 이용함에 있어 "회사"와 회원간의 이용 조건 및 제반 절차, 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 한다.</dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg02" id="gg02"></a><strong>제 2 조 (용어의 정의) </strong></dt>
                <dd>
                    <p>이 약관에서 사용하는 용어의 정의는 아래와 같다.</p>
                    <ol>
                        <li>
                            ① "사이트"라  함은 회사가 서비스를 "회원"에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 설정한 가상의 영업장 또는 회사가 운영하는 웹사이트, 모바일웹, 앱 등의 서비스를 제공하는 모든 매체를 통칭하며, 통합된 하나의 회원 계정(아이디 및 비밀번호)을 이용하여 서비스를 제공받을 수 있는 아래의 사이트를 말한다.
                            <ul>
                                <li>- www.jobkorea.co.kr </li>
                                <li>- www.albamon.com </li>
                                <li>- m.jobkorea.co.kr</li>
                                <li>- m.albamon.com</li>
                            </ul>
                        </li>
                        <li>② "서비스"라 함은 회사가 운영하는 사이트를 통해  기업(단체, 사업자, 교육기관)이 직원채용을 목적으로 등록하는 자료를 DB화하여 각각의 목적에 맞게 분류 가공, 집계하여 정보를 제공하는 서비스와 사이트에서 제공하는 모든 부대 서비스를 말한다.</li>
                        <li>③ "회원"이라 함은 기업의 필요한 인재를 고용할 것을 목적으로 약관에 동의하고 아이디를 부여받아 회사의 서비스를 이용하는 자를 말하며, 아웃소싱(도급), 인재파견, 채용대행 기업을 포함한다. 또한, 회원은 각 사업자 별로 아이디를 부여 받아 회사의 서비스를 이용하여야 한다.</li>
                        <li>④ "아이디"라  함은 회원가입시 회원의 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 "회사"가 부여하는 문자와 숫자의 조합을 말한다. </li>
                        <li>⑤ "비밀번호"라 함은 위 제4항에 따라 회원이 회원가입시 아이디를 설정하면서 아이디를 부여받은 자와 동일인임을 확인하고 "회원"의 권익을 보호하기 위하여 "회원"이 선정한 문자와 숫자의 조합을 말한다.</li>
                        <li>⑥ "비회원"이라 함은 회원가입절차를 거치지 않고 "회사"가 제공하는 서비스를 이용하거나 하려는 자를 말한다.</li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg03" id="gg03"></a><strong>제 3 조 (약관의 명시와 개정) </strong></dt>
                <dd>
                    <ol>
                        <li>① "회사"는 이 약관의 내용과 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처 등을 이용자가 알 수 있도록 초기 화면에 게시하거나 기타의 방법으로 이용자에게 공지해야 한다. </li>
                        <li>② "회사"는 약관의 규제에 관한 법률, 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관련법을 위반하지 않는 범위에서 이 약관을 개정할 수 있다. </li>
                        <li>③ "회사"가 약관을 개정할 경우 적용일자 및 개정사유를  명시하여 현행약관과 함께 그 개정약관의 적용일자 7일 전부터 적용일자 전일까지 공지한다. 단 "회원"의 권리, 의무에 중대한 영향을 주는 변경의 경우에는 적용일자 30일 전부터  공지하도록 한다. </li>
                        <li>④ "회원"은  변경된 약관에 대해 거부할 권리가 있다. "회원"은 변경된 약관이 공지된 지 15일 이내에 거부의사를 표명할 수 있다. "회원"이  거부하는 경우 본 서비스 제공자인 "회사"는 15일의 기간을 정하여 "회원"에게 사전 통지 후 당해 "회원"과의  계약을 해지할 수 있다. 만약, "회원"이  거부의사를 표시하지 않거나, 전항에 따라 시행일 이후에 "서비스"를 이용하는 경우에는 동의한 것으로 간주한다. </li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg04" id="gg04"></a><strong>제 4 조 (약관의 해석) </strong></dt>
                <dd>
                    <ol>
                        <li>① 이 약관에서 규정하지 않은 사항에 관해서는 약관의 규제에 관한 법률, 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등의 관계법령에 따른다.</li>
                        <li>② 각 사이트  및 서비스 이용약관이 있는 경우에는 서비스 이용약관이 우선한다.</li>
                        <li>③ "회원"이 "회사"와 개별 계약을 체결하여 서비스를 이용할 경우에는 개별 계약이 우선한다.</li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg05" id="gg05"></a><strong>제 5 조 (이용계약의 성립) </strong></dt>
                <dd>
                    <ol>
                        <li>① "회사"의 서비스 이용계약(이하 "이용계약")은 서비스를 이용하고자 하는 자가 본 약관과 개인정보처리방침을 읽고 "동의" 또는 "확인" 버튼을 누른 경우 본 약관에 동의한 것으로 간주한다.</li>
                        <li>② 서비스 이용계약 체결에 필요한 경우 "회사"는 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있다. "회원"은 본인인증에 필요한 이름, 생년월일, 연락처 등을 제공하여야 한다, 또한 서비스 이용을 위해 회사명과 사업자등록번호를 제공하여야 하며 "회사"는 기업인증을 위해 사업자정보를 확인할 수 있는 증명서(사업자등록증)를 별도로 요구할 수 있다. 회사명과 사업자등록번호를 허위로 등록한 경우, 휴·폐업 사업자등록번호로 등록한 경우에 "회원"은 일체의 권리를 주장할 수 없다.</li>
                        <li>③ 회사는 회원 약관에 동의한 "회원"에 웹상의 안내 및 전자메일로 통지함으로써 서비스 이용계약의 성립을 확인한다.</li>
                        <li>④ 사업자등록번호가 없는 기관이나 단체는 "회사"가 정한 별도의 절차에 따라 이용계약을 할 수 있다.</li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg06" id="gg06"></a><strong>제 6 조 (이용신청의 승낙과 제한) </strong></dt>
                <dd>
                    <ol>
                        <li>① "회사"는 전조의 규정에 의한 이용신청 고객에 대하여  업무수행상 또는 기술상 지장이 없는 경우에는 원칙적으로 접수순서에 따라 서비스 이용을 승낙한다. </li>
                        <li>
                            ② "회사"는 아래 사항에 해당하는 경우에 대해서는 서비스 이용신청을 승낙하지 아니한다.
                            <ol>
                                <li>1. 실제 회사명과 사업자등록번호가 아니거나 타사의 정보를 이용하여 신청한 경우 </li>
                                <li>2. 이용계약 신청서의 내용을 허위로 기재하거나 "회사"가 제시하는 내용을 기재하지 않은 경우</li>
                                <li>3. 이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반 사항을 위반하며 신청하는 경우</li>
                            </ol>
                        </li>
                        <li>
                            ③ "회사"는 아래 사항에 해당하는 경우에는 그 신청에  대하여 승낙제한 사유가 해소될 때까지 승낙을 유보할 수 있다.
                            <ol>
                                <li>1.  "회사"가  설비의 여유가 없는 경우 </li>
                                <li>2.  "회사"의  기술상 지장이 있는 경우 </li>
                                <li>3. 기타 "회사"의 귀책사유로 이용승낙이 곤란한 경우</li>
                            </ol>
                        </li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg07" id="gg07"></a><strong>제 7 조 (서비스의 내용) </strong></dt>
                <dd>
                    <ol>
                        <li>
                            ① "회사"는 제2조  2항의 서비스를  제공할 수 있으며 그 내용은 다음 각 호와 같다.
                            <ol>
                                <li>1. 채용정보 등록서비스 </li>
                                <li>2. 온라인 채용관리 서비스 </li>
                                <li>3. 구인/구직과 관련된 제반 서비스 </li>
                                <li>4. 이력서 열람 서비스 </li>
                                <li>5. 기업정보 제공 서비스 </li>
                                <li>6. 이용자간의  교류와 소통과 관련된 서비스 </li>
                                <li>7. 자료 거래에  관련된 서비스 </li>
                                <li>8. 기타 "회사"가 추가 개발하거나 제휴계약 등을 통해 "회원"에게 제공하는 일체의 서비스 </li>
                            </ol>
                        </li><li>② "회사"는 필요한 경우 서비스의 내용을 추가 또는  변경할 수 있다. 단, 이 경우 "회사"는 추가 또는 변경내용을 "회원"에게 공지해야  한다.</li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg08" id="gg08"></a><strong>제 8 조 ("회원"정보, 채용공고 등록, 채용의뢰, 이력서검색) </strong></dt>
                <dd>
                    <ol>
                        <li>① "회원"은 채용공고 등록 시 기업정보를 정확히 기재하여야 한다.</li>
                        <li>② "회원"은 아웃소싱(도급), 인재파견 또는 채용대행 공고를 등록하는 경우 구직을 희망하는 개인회원이 자사의 직접 고용 목적으로 등록한 채용공고와 오인·혼동 되지 않도록 하여야 한다.</li>
                        <li>
                            ③ "회원"은 직업안정법 제34조 및 동법 시행령 제 34조 거짓구인광고의 범위에 위반되지 않도록 채용공고를 작성하여 등록해야 하며 그 내용은 다음과 같다.
                            <ol>
                                <li>1. 구인을 가장하여 물품판매, 수강생 모집, 직업소개, 부업알선, 자금모집 등을 행하는 광고</li>
                                <li>2. 거짓 구인을 목적으로 구인자의 신원(업체명 또는 성명)을 표시하지 아니하는 광고</li>
                                <li>3. 구인자가 제시한 직종, 고용형태, 근로조건 등이 응모할 때의 그것과 현저히 다른 광고 </li>
                                <li>4. 기타 광고의 중요내용이 사실과 다른 광고 </li>
                            </ol>
                        </li><li>④ "회원"은 관련 법률에 의거하여 근로자의 모집 및 채용에 있어서 남녀, 연령을 차별하여서는 아니되며 15세 미만 채용 모집을 할 수 없다. 단, 제6조 제2항 제3호에 경우는 예외로 한다.</li>
                        <li>⑤ 제 3항, 제 4항을 위반한 경우  이에 대한 책임은 전적으로 "회원"에게 있다. </li>
                        <li>⑥ "회사"는 "회원"이 등록한 기업정보 및 채용공고를 "회사"가 정한 방법에 의해 노출할 수 있다. </li>
                        <li>⑦ "회원" 중 아웃 소싱(도급), 인재파견, 채용대행 기업은 "회사"에 채용파트너관 서비스를 신청하여 자사의 HR상품을 홍보할 수 있으며, 일반 기업 "회원"은 채용파트너관에 업로드 된 HR상품 및 사업분야를 선택하여 상담의뢰를 신청할 수 있다. 단, 채용파트너관 서비스 이용 시 수집되는 개인정보는 본 서비스 이용 이외의 목적으로 사용할 수 없으며, 각 개인의 동의 없이 개인정보를 기업의 영업·마케팅의 용도로 사용하거나 제3자에게 제공 시 개인정보보호법, 정보통신망이용촉진 및 정보보호 등에 관한 법률에 의거하여 법적 책임을 질 수 있다.</li>
                        <li>⑧ "회원"은 직원 채용의 목적으로 유·무료로 개인회원이  등록한 이력서를 검색할 수 있으며 "회원"은 "회사"가 제시하는 별도의 커뮤니케이션을 통하여 개인회원에게 연락을 취할 수 있다. 단, 이력서 연락처의 열람 및 연락의 목적은 직원채용활동에 국한되어야 하며, 기업의 영업·마케팅·제3자 제공 시에는 개인정보보호법, 직업안정법, 정보통신망이용촉진 및 정보보호 등에 관한 법률에 의거하여 법적 책임을 질 수 있다.</li>
                        <li>⑨ "회원"이 제2조 제 3항에 따라 자사의 직접 고용을 목적으로 하지 않는 헤드헌팅 채용공고를 등록할 경우 "회사"는 해당 공고를 삭제할 수 있으며 "기업회원"의 자격을 "서치펌회원"으로 전환시킬 수 있다. (jobkorea.co.kr 에서만 적용)</li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg9" id="gg9"></a><strong>제 9 조 (제휴를 통한 서비스) </strong></dt>
                <dd>
                    <ol>
                        <li>① "회사"는 제휴 관계를 체결한 여타 인터넷 웹사이트 및 채용박람회, 기관 또는 신문, 잡지 등의 온, 오프라인 매체(이하 ‘타 사이트 및 매체’)를 통해 "회원"이 등록한 기업정보와 채용공고가 열람될 수 있도록 서비스를 제공할 수 있다. 기업정보는 기업의 로고와 이미지를 포함한다.</li>
                        <li>② "회사"는 제1항의 열람을 ‘타 사이트 및 매체’에 기업정보와 채용공고의 일부를 노출시키고, 상세내역은 "회사"의 URL로 연결하여 열람하도록 하거나 회원이 등록한 기업정보와 채용공고를 ‘타 사이트 및 매체’에 제공 및 게시하여 열람하게 할 수 있다.</li>
                        <li>③ "회사"는 전 항과 같이 열람 서비스를 제공 시 "회사"와 제휴 관계에 있는 ‘타 사이트 및 매체’의 리스트와 "회원" 등록한 기업정보와 채용공고가 ‘타 사이트 및 매체’에 제공될 수 있음을 고지해야 하며, ‘타 사이트 및 매체’의 변동사항 발생 시에도 공지사항을 통해 고지 후 진행한다.</li>
                        <li>④ "회사"는 제휴 관계에 있는 ‘타 사이트 및 매체’의 <a href="javascript:openPrMediaPopup();" class="popup-link">[전체 리스트]</a> 를 ‘회원’이 열람할 수 있도록 한다.</li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg10" id="gg10"></a><strong>제 10 조 (서비스의 요금) </strong></dt>
                <dd>
                    <ol>
                        <li>① "회원" 가입과 채용공고  등록비용은 무료이다. 다만 개인회원 또는 사이트에 방문한 회원에게 자신의 정보를 보다 효과적으로 노출시키기 위한 유료옵션과 즉시등록 서비스, 유료 이력서 검색 및 기타 서비스를 이용하기 위한 별도의 서비스는 유료로 제공될 수 있다. </li>
                        <li>② "회사"는 유료서비스를 제공할 경우 사이트에 요금에  대해서 공지를 하여야 한다. </li>
                        <li>③ "회사"는 유료서비스 이용금액을 서비스의 종류 및  기간에 따라 "회사"가 예고 없이 변경할  수 있다. 다만, 변경 이전에 적용 또는 계약한 금액은 소급하여 적용하지 아니한다.</li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg11" id="gg11"></a><strong>제 11 조 (서비스 요금의 환불) </strong></dt>
                <dd>
                    <ol>
                        <li>① “회사”는 다음 각 호에 해당하는 경우 이용요금을 환불한다. 단, 각 당사자의 귀책사유에 따라 환불 조건이 달라질 수 있다.</li>
                        <ol>
                            <li>1. 유료서비스 이용이 개시되지 않은 경우</li>
                            <li>2. 네트워크 또는 시스템 장애로 서비스 이용이 불가능한 경우</li>
                            <li>3. 유료서비스 신청 후 “회원”의 사정에 의해 서비스가 취소될 경우</li>
                        </ol>
                        <li>② “회사”가 본 약관 제20조에 따라 가입해지/서비스중지/자료삭제를 취한 경우, “회사”는 “회원”에게 이용요금을 환불하지 않으며, 별도로 “회원”에게 손해배상을 청구할 수 있다.</li>
                        <li>③ 이용료를 환불받고자 하는 회원은 고객센터로 환불을 요청해야 한다.</li>
                        <li>④ “회사”는 환불 요건에 부합하는 것으로 판단될 경우, 각 서비스 환불 안내에 따라 유료이용 계약 당시 상품의 정가 기준으로 서비스 제공된 기간에 해당하는 요금을 차감한 잔액을 환불한다.</li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg12" id="gg12"></a><strong>제 12 조 (충전금 규정) </strong></dt>
                <dd>
                    <ol>
                        <li>① 충전금은 "회사"가 정한 결제수단을 이용하여 미리 입금해 둔 금액으로, "회사"의 유료서비스 결제 시 사용할 수 있다.</li>
                        <li>② 서비스 운영정책에 따라 충전금을 구매할 수 있는 수단, 충전금으로 결제할 수 있는 유료서비스 등은 달라질 수 있으며, 이에 대한 사항은 서비스 화면에 게시하거나 공지한다. </li>
                        <li>③ "회원"은 "회사"에 잔여 충전금의 환불을 요청할 수 있으며, "회사"는 "회원"에게 환불에 필요한 서류를 요청할 수 있다. 환불 시 환불수수료를 공제하고 환불할 수 있으며, 충전금 충전방법에 따라 금융비용이 환불수수료를 초과하여 발생할 경우 이는 "회원"의 부담으로 한다. </li>
                        <li>④ 잔여 충전금 중 충전일로부터 5년이 초과할 때까지 이용하지 않은 금액은 상사소멸시효에 따라 소멸된다.</li>
                        <li>⑤ 회원탈퇴 시 보유중인 충전금은 환불을 요청할 수 있으며, 이와 같은 절차없이 회원탈퇴한 경우 충전금은 전액 자동소멸되어 복구되지 않는다.</li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg13" id="gg13"></a><strong>제 13 조 (서비스 이용시간) </strong></dt>
                <dd>
                    <ol>
                        <li>① "회사"는 특별한 사유가 없는 한 연중무휴, 1일 24시간 서비스를 제공한다.  다만, "회사"는 서비스의  종류나 성질에 따라 제공하는 서비스 중 일부에 대해서는 별도로 이용시간을 정할 수 있으며, 이 경우 "회사"는 그 이용시간을 사전에 "회원"에게 공지 또는  통지하여야 한다. </li>
                        <li>② "회사"는 자료의 가공과 갱신을 위한 시스템 작업시간, 장애해결을 위한 보수작업 시간, 정기 PM작업, 시스템 교체작업, 회선  장애 등이 발생한 경우 일시적으로 서비스를 중단할 수 있으며 계획된 작업의 경우 공지란에 서비스 중단 시간과 작업 내용을 알려야 한다. 다만, "회사"가 사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수 있다.</li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg14" id="gg14"></a><strong>제 14 조 (서비스 제공의 중지) </strong></dt>
                <dd>
                    <ol>
                        <li>
                            ① "회사"는 다음 각 호에 해당하는 경우 서비스의  제공을 중지할 수 있다.
                            <ol>
                                <li>1. 설비의 보수 등 "회사"의 필요에 의해 사전에 "회원"들에게 통지한 경우 </li>
                                <li>2. 기간통신사업자가 전기통신서비스 제공을 중지하는 경우 </li>
                                <li>3. 기타 불가항력적인 사유에 의해 서비스 제공이 객관적으로 불가능한 경우 </li>
                            </ol>
                        </li>
                        <li>② 전항의 경우, "회사"는 기간의 정함이 있는 유료서비스 이용자들에게는  그 이용기간을 연장하는 등의 방법으로 손실을 보상하여야 한다.</li>
                        <li>③ "회원"인 개인사업자와 법인사업자의  휴·폐업 여부가 회사가 정한 별도의 절차에 따라 확인된 경우 유료 이력서 검색서비스(건수별 인재검색)의 경우 적립된 건수는 모두 소멸된다.</li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg15" id="gg15"></a><strong>제 15 조 (정보의 제공 및 광고의 게재) </strong></dt>
                <dd>
                    <ol>
                        <li>① "회사"는 "회원"에게 서비스 이용에 필요가 있다고  인정되거나 서비스 개선 및 회원대상의 서비스 소개 등의 목적으로 하는 각종 정보에 대해서 전자우편이나 서신우편을 이용한 방법으로 제공할 수 있다. </li>
                        <li>② "회사"는 제공하는 서비스와 관련되는 정보 또는 광고를 서비스 화면, 홈페이지, 전자우편 등에 게재할 수 있으며, 광고가 게재된 전자우편을 수신한 "회원"은 수신거절을 "회사"에게 할 수 있다.</li>
                        <li>③ "회사"는 서비스상에 게재되어 있거나 본 서비스를  통한 광고주의 판촉활동에 "회원"이 참여하거나 교신 또는 거래를 함으로써 발생하는 모든 손실과 손해에 대해 책임을 지지 않는다. </li>
                        <li>④ 본 서비스의 "회원"은 서비스  이용 시 노출되는 광고게재에 대해 동의 하는 것으로 간주한다.</li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg16" id="gg16"></a><strong>제 16 조 (자료내용의 책임과 "회사"의 정보 수정 권한) </strong></dt>
                <dd>
                    <ol>
                        <li>① 자료내용은 "회원"이 등록한  기업정보 및 채용공고와 사이트에 게시한 게시물을 말한다. </li>
                        <li>② "회원"은 자료 내용 및 게시물을  사실에 근거하여 성실하게 작성해야 하며, 만일 자료의 내용이 사실이 아니거나 부정확하게 작성되어 발생하는  모든 책임은 "회원"에게 있다. "회사"는 "회원"이 작성한 게시물 등의 정확성 및 진실성을 보증하지 아니하며, 게시물에 대한 일체의 책임을 부담하지 아니한다.</li>
                        <li>③ 모든 자료내용의 관리와 작성은  "회원" 본인이 하는 것이 원칙이나 사정상 위탁 또는 대행관리를 하더라도 자료내용의 책임은 "회원"에게 있으며 "회원"은 주기적으로 자신의 자료를 확인하여  항상 정확하게 관리가 되도록 노력해야 한다. </li>
                        <li>④ "회사"는 "회원"이 등록한 자료 내용에 오자, 탈자 또는 사회적 통념에 어긋나는 문구와 내용이 있을 경우 이를 언제든지 수정할 수 있다.</li>
                        <li>⑤ "회원"이 등록한 자료로 인해 타인(또는 타법인)으로부터 허위사실 및 명예훼손 등으로 삭제 요청이 접수된 경우 "회사"는 "회원"에게 사전 통지 없이 본 자료를 삭제할 수 있으며 삭제 후 메일 등의 방법으로 통지할 수 있다.</li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg17" id="gg17"></a><strong>제 17 조 (자료 내용의 활용 및 취급) </strong></dt>
                <dd>
                    <ol>
                        <li>① "회원"이 입력한 정보는 취업 및 관련 동향의 통계 자료로 활용될 수 있으며 그 자료는 매체를 통한 언론 배포 또는 제휴사에게 제공될 수 있다.</li>
                        <li>② "사이트"에서 정당한 절차를 거쳐 열람한 개인회원의 이력서 정보는 해당 "회원"의 인사자료이며 이에 대한 관리 권한은 해당 "회원"의 정책에 의한다.</li>
                        <li>③ "회사"는 "사이트"의 온라인 입사지원 시스템을  통해 지원한 개인회원의 이력서 열람 여부 및 "회원"이 제공한 채용정보에 입사지원한 구직자들의 각종 통계데이터를 개인회원에게 제공할 수 있다 . </li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg18" id="gg18"></a><strong>제 18 조 ("회사"의 의무) </strong></dt>
                <dd>
                    <ol>
                        <li>① "회사"는 본 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공할 수 있도록 최선의 노력을 다해야 한다. </li>
                        <li>② "회사"는 서비스와 관련한 "회원"의 불만사항이 접수되는  경우 이를 즉시 처리하여야 하며, 즉시 처리가 곤란한 경우에는 그 사유와 처리일정을 서비스 화면 또는  기타 방법을 통해 동 "회원"에게 통지하여야 한다. </li>
                        <li>③ "회사"는 유료 결제와 관련한 결제 사항 정보를 1년 이상 보존한다. 다만 회원 자격이 없는 회원은 예외로 한다. </li>
                        <li>④ 천재지변 등 예측하지 못한  일이 발생하거나 시스템의 장애가 발생하여 서비스가 중단될 경우 이에 대한 손해에 대해서는 "회사"가 책임을 지지 않는다. 다만 자료의 복구나 정상적인 서비스  지원이 되도록 최선을 다할 의무를 진다. </li>
                        <li>⑤ "회원"의 자료를 본 서비스  이외의 목적으로 제3자에게 제공하거나 열람시킬 경우 반드시 "회원"의 동의를 얻어야 한다. </li>
                        <li>⑥ "회원"이 "사이트"에 등록한 기업정보, 채용공고 내용은 사이트를 방문하는 일반 대중에게 공개함을 원칙으로 한다. 단, 회사가 운영하는 공식 SNS채널(페이스북, 인스타그램, 카카오스토리, 트위터, 블로그 등)에 한해 채용공고 내용을 업로드하여 일반 대중에게 공개할 수 있다.</li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg19" id="gg19"></a><strong>제 19 조 ("회원"의 의무) </strong></dt>
                <dd>
                    <ol>
                        <li>① "회원"은 관계법령과 본 약관의  규정 및 기타 "회사"가 통지하는 사항을  준수하여야 하며, 기타 "회사"의 업무에 방해되는 행위를 해서는 안 된다. </li>
                        <li>② "회원"이 신청한 유료서비스는  등록 또는 신청과 동시에 "회사"와 채권, 채무 관계가 발생하며, "회원"은 이에 대한 요금을 지정한 기일 내에  납부하여야 한다. </li>
                        <li>③ "회원"이 결제 수단으로 신용카드를  사용할 경우 비밀번호 등 정보 유실 방지는 "회원" 스스로 관리해야 한다. 단, "사이트"의 결함에 따른 정보유실의 발생에 대한 책임은 회원의 의무에 해당하지 아니한다.</li>
                        <li>④ "회원"은 서비스를 이용하여  얻은 정보를 "회사"의 사전동의 없이 복사, 복제, 번역, 출판, 방송 기타의 방법으로 사용하거나 이를 타인에게 제공할 수 없다. </li>
                        <li>
                            ⑤ "회원"은 본 서비스를 건전한 직원채용 이외의 목적으로  사용해서는 안되며 이용 중 다음 각 호의행위를 해서는 안 된다.
                            <ol>
                                <li>1. 다른 회원의 아이디를 부정 사용하는 행위 </li>
                                <li>2. 범죄행위를 목적으로 하거나 기타 범죄행위와 관련된 행위 </li>
                                <li>3. 타인의 명예를 훼손하거나 모욕하는 행위 </li>
                                <li>4. 타인의 지적재산권 등의 권리를 침해하는 행위 </li>
                                <li>5. 해킹행위 또는 바이러스의 유포 행위 </li>
                                <li>6. 타인의 의사에 반하여 광고성 정보 등 일정한 내용을 계속적으로 전송하는 행위 </li>
                                <li>7. 서비스의 안정적인 운영에 지장을 주거나 줄 우려가 있다고 판단되는 행위 </li>
                                <li>8. 사이트의 정보 및 서비스를 이용한 영리 행위 </li>
                                <li>9. 그밖에 선량한 풍속, 기타 사회질서를 해하거나 관계법령에 위반하는 행위</li>
                            </ol>
                        </li>
                        <li>⑥ "회원"은 "사이트"를 통해 열람한 이력서 정보를 "회사" 및 당사자의 허락없이 재배포할 수 없으며 본 정보에 대한 출력 및 복사 등의 관리 책임은 전적으로 "회원"에게 있다. </li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg20" id="gg20"></a><strong>제 20 조 ("회원"의 가입해지/서비스중지/자료삭제) </strong></dt>
                <dd>
                    <ol>
                        <li>① "회원"은 언제든지 회원탈퇴 또는 채용공고 등록을 해지하기 위해 고객센터 또는 회원탈퇴 메뉴 등을 통하여 이용계약 해지 신청을 할 수 있으며, "회사"는 관련법 등이 정하는 바에 따라 이를 처리한다. 이때 회사는 잔존 채무를 확인하여 "회원"이 "회사"에 지급해야 하는 비용 또는 기타 채무가 남은 경우 이를 정산할 때까지 회원 탈퇴를 제한할 수 있다.</li>
                        <li>
                            ② 다음의 사항에 해당하는 경우 "회사"는 사전 동의없이 가입해지나 서비스 중지, 채용공고 삭제 조치를 취할 수 있다.
                            <ol>
                                <li>1. 회원의 의무를 성실하게 이행하지 않았을 때 </li>
                                <li>2. 규정한 유료서비스 이용 요금을 납부하지 않았을 때 </li>
                                <li>3. 불순한 의도로 유료서비스를 반복적으로 결제/취소할  때 </li>
                                <li>4. 본 서비스 목적에 맞지 않는 분야에 정보를 활용하여 사회적 물의가 발생한  때 </li>
                                <li>5. 회원이 등록한 정보의 내용이 사실과 다르거나 조작되었을 때 </li>
                                <li>6. 사업자등록증에 나타난 정보와 기업회원 가입시의 정보가 일치하지 않을 때 </li>
                                <li>7. 타 기업의  사업자등록번호나 상호를 도용하여 허위로 기업정보를 등록하거나 휴·폐업 사업자등록번호로 기업정보를 등록했을 때 </li>
                                <li>8. 지사, 지점, 영업소 등의 경우 구체적인 지사, 지점, 영업소 명칭을 사용하지 않고 기업명을 등록했거나 지사, 지점, 영업소의 사업자등록번호가 별도 있음에도 불구하고 본사의 사업자등록번호로 기업회원 가입을 했을 때 </li>
                                <li>9. 회사명, 담당자 성명, 사무실 연락처 등 구인업체의 중요 정보를 정확하게 기입하지 않았을 때 </li>
                                <li>10. 기업회원 가입 또는 채용공고 등록시 본 서비스에서 안내하는 방법으로 가입하지  않았거나 등록하지 않았을 때 </li>
                                <li>11. 동일 회원ID로 마감일이 지나지  않은 사실상의 동일 내용의 채용공고를 중복 등록했을 때 </li>
                                <li>12. 동일  사업자가 마감일이 지나지 않은 사실상의 동일내용의 채용공고를 다수 ID를 사용하여 중복등록 했을 때 </li>
                                <li>13. 허위 구인공고를 등록했을 때 </li>
                                <li>14. 작성자가 제시한 직종, 업무내용, 근로조건 등이 실제와 현저히 다를 때 </li>
                                <li>15. 채용공고의 모집요강만으로 업무에 대한 내용이 명확하지 않을 때 </li>
                                <li>
                                    16. 모집요강에 적합한 업직종 분류를 지정하지 않았을 때 <br>
                                    (특히, 교육기관이나 이벤트업체  또는 영업대행 기관의 경우 영업, 마케팅, 텔레마케팅, 상담 인력을 모집하고자 할 경우 반드시 텔레마케팅 또는 고객상담, 교육/강사/학원 등 반드시 직접 관련되는 해당 업종, 직종 분류만 지정해야 한다.)
                                </li>
                                <li>17. 헤드헌팅과 같이 인력중개를 주 목적으로 사업을 수행하는 업체인 경우 (jobkorea.co.kr 에서만 적용)</li>
                                <li>18. 채용공고를 등록한 회원의 정보와 실제 채용공고 상 모집하는 기업의 정보가 다른 경우</li>
                                <li>19. 아웃소싱(도급), 인재파견, 채용대행 공고임에도 불구하고 자사 공고인 것처럼 혼란을 야기하는 공고를 등록 한 때</li>
                                <li>20. 다단계 식의 모집 내용을 등록했을 때</li>
                                <li>21. 구인을 가장하여 유학알선, 물품판매, 자금  모금 등을 행하는 내용을 등록했을 때 </li>
                                <li>22. 회원모집 형태의 광고 또는 카드회원 모집(수당제  광고) 내용을 등록했을 때 </li>
                                <li>23. 추천인 모집 광고, 재택 쇼핑몰  분양 광고, 직업소개, 부업알선 광고를 등록했을 때 </li>
                                <li>24. 취업수수료 등 취업 관련 비용을 필요로 하는 채용공고를 등록했을 때 (운송, 물류, 지입, 인력용역 등) </li>
                                <li>25. 불건전한 내용의 유흥업소 채용공고를 등록했을 때 </li>
                                <li>26. 구직자의 피해사례 (채용공고를 통해 구직자가 입사 과정에서 피해가 발생한 경우 또는 재직중 "기업회원"이 관계법령을 위반하여 피해가 발생한 경우 등)가 접수된 채용공고 </li>
                                <li>27. 임금체불로 근로감독원에 진정서가 접수되거나, 관계 당국에 고소·고발되어 있는 기업 (단, 기업의 임금체불이 해소가 입증되면 확인 후에 서비스 이용 가능) </li>
                                <li>28. 본 서비스와 관련하여 회사 또는 제3자의 명예를 훼손하였을 때</li>
                                <li>29. 동업자 모집, 프랜차이즈 모집, 점포개설, 창업, 사이트 홍보 등 직원 채용이 아닌 공고를 등록했을 때</li>
                                <li>30. 기타 관계법규에 위배되는 행위를 한 경우</li>
                            </ol>
                        </li>
                        <li>③ "회원"이 유료서비스를 이용하는  중 "회사"의 책임에 의해 정상적인 서비스가  제공되지 않을 경우 "회원"은 본 서비스의 해지를 요청할 수 있으며 "회사"는 기간의 정함이 있는 유료서비스의 경우에는 해지일까지 이용일수를 1일 기준금액으로 계산하여 이용금액을 공제후 환급하고, 이용건수의 정함이 있는 유료서비스의 경우에는 기 사용분을 1건 기준금액으로 계산하여 이용금액을 공제후 환급한다. 단, 허위·불량공고의 경우 게재시 지불된 광고료는 일체 반환되지 않는다. </li>
                        <li>④ "회원"인 개인사업자와 법인사업자의 휴·폐업 여부가 회사가 정한 별도의 절차에 따라 확인된 경우 유료 이력서 검색서비스(건수별 인재검색)의 경우 적립된 건수는 모두 소멸된다. </li>
                        <li>⑤ "회사"는 회원 가입이 해지된 경우 해당 회원 정보를 모두 삭제하여야 하며,  상법, 전자상거래등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가  있는 경우 관계법령에서 정한 일정한 기간 동안 회원정보를 보관한다.</li>
                        <li>⑥ "회사"는 성희롱,&nbsp;욕설,&nbsp;위협,&nbsp;사실과 다른 주장,&nbsp;무리한 요구, 폭언,&nbsp;협박,&nbsp;공포심 또는 불안감 유발,&nbsp;허위사실의 유포,&nbsp;기타 위계나 위력,&nbsp;서비스의 고의적 악용 등의 방법으로 서비스의 운영을 방해하거나 고객 응대 근로자의 정신적 충격을 유발하는 "회원"에게 고객센터 전화 안내 서비스를 제공하지 않을 수 있다.&nbsp;해당 "회원"은 헬프데스크 메일이나 1:1&nbsp;문의 프로세스를 이용할 수 있으며,&nbsp;해당 프로세스에 따라 전화 안내 제한에 대한 이의신청을 할 수 있다.</li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg21" id="gg21"></a><strong>제 21 조 (허위 구인광고 경고) </strong></dt>
                <dd>
                    <p>허위 구인광고로 인해 발생된  문제에 따른 법적인 책임은 모두 작성자에게 있으며, 구인광고 게재시에 지불된 광고료는 일체 반환되지  않는다. 허위 구인광고 또는 허위 구인 조건을 제시한 자는 직업 안정법 제 47조에 의해 5년 이하의 징역 또는 2천만원 이하의 벌금형을 받게 된다.</p>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg22" id="gg22"></a><strong>제 22 조 (손해배상) </strong></dt>
                <dd>
                    <ol>
                        <li>① "회사"가 이 약관의 규정을 위반한 행위로 "회원"에게 손해를 입히거나 기타 "회사"가 제공하는 모든 서비스와 관련하여 "회사"의 책임 있는 사유로 인해 "회원"에게 손해가 발생한 경우 "회사"는 그 손해를 배상하여야 한다. </li>
                        <li>② "회사"는 책임 있는 사유로 제공한 정보가 사실과  달라 "회원"이 손해를 입었을 경우에 "회사"는 그 손해를 배상하여야 한다. </li>
                        <li>③ "회원"이 이 약관의 규정을 위반한 행위로 "회사" 및 제3자에게 손해를 입히거나 "회원"의 책임 있는 사유에 의해 "회사" 및 제3자에게 손해를 입힌 경우에는 "회원"은 그 손해를 배상하여야  한다.</li>
                        <li>④ 타 회원(개인회원, 기업회원, 서치펌회원 모두 포함)의 귀책사유로 "회원"의 손해가 발생한 경우 "회사"는 이에 대한 배상 책임이 없다.</li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg23" id="gg23"></a><strong>제 23 조 (양도 금지) </strong></dt>
                <dd>
                    <p>"회원"의 서비스 받을 권리는 제3자에게 양도, 대여, 증여 등으로 사용할 수 없다.</p>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg24" id="gg24"></a><strong>제 24 조 (이용요금 오류의 조정) </strong></dt>
                <dd>
                    <p>"회사"는 이용요금과 관련하여 오류가 있는 경우에 "회원"의 요청, 또는 "회사"의 사전 통지에 의하여 다음에 해당하는 조치를 취한다. </p>
                    <ol>
                        <li>1. 과다납입한 요금에 대하여는 그 금액을 반환한다. 다만, "회원"이 동의할 경우 다음 달에  청구할 요금에서 해당 금액만큼을 감하여 청구한다. </li>
                        <li>2. 요금을 반환받아야 할 "회원"이 요금체납이 있는 경우에는 반환해야 할 요금에서 이를 우선 공제하고 반환한다. </li>
                        <li>3. "회사"는 과소청구액에 대해서는 익월에 합산청구한다.
                    </li></ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg25" id="gg25"></a><strong>제 25 조 ("회원"의 개인정보보호) </strong></dt>
                <dd>"회사"는 "회원"의 개인정보보호를 위하여 노력해야 한다. "회원"의 개인정보보호에 관해서는 정보통신망이용촉진 및 정보보호 등에 관한 법률, 개인정보보호법에 따르고, "사이트"에 "개인정보처리방침"을 고지한다.</dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg26" id="gg26"></a><strong>제 26 조 (신용정보의 제공 활용 동의) </strong></dt>
                <dd>
                    <ol>
                        <li>① "회사"가 회원가입과 관련하여 취득한 "회원"의 신용정보를 타인에게 제공하거나 활용하고자 할 때에는 신용정보의 이용 및 보호에 관한 법률 제23조의 규정에 따라 사전에 그 사유 및 해당기관 또는 업체명 등을 밝히고 해당 "회원"의 동의를 얻어야 한다. </li>
                        <li>② 본 서비스와 관련하여 "회사"가 "회원"으로부터 신용정보의 이용 및 보호에 관한 법률에 따라 타인에게 제공 활용에 동의를 얻은 경우 "회원"은 "회사"가 신용정보 사업자 또는 신용정보 집중기관에 정보를 제공하여 "회원"의 신용을 판단하기 위한 자료로 활용하거나, 공공기관에서 정책자료로 활용되도록 정보를 제공하는 데 동의한 것으로 간주한다.</li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt><a name="gg27" id="gg27"></a><strong>제 27 조 (분쟁의 해결) </strong></dt>
                <dd>
                    <ol>
                        <li>① "회사"와 "회원"은 서비스와 관련하여 발생한 분쟁을  원만하게 해결하기 위하여 필요한 모든 노력을 하여야 한다. </li>
                        <li>② 전항의 노력에도 불구하고, 동 분쟁에 관한 소송은 "회사"의 주소지 관할법원으로 한다.</li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li class="etc">
            <dl>
                <dt><strong>부칙</strong></dt>
                <dd>
                    <ul>
                        <li>- 이 약관은 2023년 11월 27일부터 시행한다.</li>
                    </ul>
                </dd>
            </dl>
        </li>
    </ol>
</div>
        </div>
    </div>

    <div class="row policy_check_privacy required">
        <input type="checkbox" id="lb_chk_privacy" name="Priacy_Agree" class="mbrCheckOn devAgreeCheck" value="1">
        <label for="lb_chk_privacy" class="chk_privacy chk"><strong>[필수]</strong> 개인정보 수집 및 이용 동의 <a href="#DevPolicyPrivacy" onclick="spreadPolicy( DevPolicyPrivacy )" class="mbrBtnPolicy devPolicyService">내용보기</a></label>
        <div id="DevPolicyPrivacy" class="policyTplBox" style="display: none;">
            <div class="pvsSec pvsTpList">
    <!-- 7.0 변경 -->
    <p>
        잡코리아 및 알바몬 서비스 이용을 위해 아래와 같이 개인정보를 수집 및 이용합니다. <br>
        동의를 거부할 권리가 있으며, 동의 거부 시 잡코리아 및 알바몬 회원서비스 이용이 불가합니다.
    </p>

    <table class="policy-table">
        <colgroup>
            <col width="33%">
            <col width="33%">
            <col width="*">
        </colgroup>
        <thead>
            <tr>
                <th>목적</th>
                <th>항목</th>
                <th>보유 및 이용기간</th>
            </tr>
        </thead>
        <tbody>

            <tr>
                <td>
                    본인여부 확인, 각종 맞춤형 서비스 제공, 서비스 개선 및 신규 서비스 개발을 위한 통계 활용, 계약이행 및 약관변경 등의 고지를 위한 연락, 본인의사확인 및 민원 등의 고객불만처리
                </td>
                <td>
                    가입자명, 본인인증정보 또는 중복가입확인정보(DI), 아이디, 비밀번호, 전화번호, 이메일
                </td>
                <td>
                    <font style="text-decoration:underline;font-size:14px;">회원 탈퇴 시 즉시 파기</font>
                </td>
            </tr>
        </tbody>
    </table>
    <!-- //7.0 변경 -->
</div>
        </div>
    </div>

        <div class="row policy_check_privacy required">
            <input type="checkbox" id="lb_chk_sms" name="SMS_Agreee" class="mbrCheckOn devAgreeCheck" value="1">
            <label for="lb_chk_sms" class="chk_sms chk"><strong>[필수]</strong> 문자서비스 이용약관 동의 <a href="#DevPolicySMS" onclick="spreadPolicy( DevPolicySMS)" class="mbrBtnPolicy devPolicyService">내용보기</a></label>
            <div id="DevPolicySMS" class="policyTplBox" style="display: none;">
                <div class="pvsSec pvsTpList">
    <h2 class="pvsHeading2"><strong>제1조(목적)</strong></h2>
    <p class="depth_01">
        본 약관은 잡코리아 유한책임회사(이하 "회사")가 운영하는 웹사이트 및 모바일 어플리케이션(이하 "사이트")에서 제공하는 문자메시지 발송 서비스(이하 "서비스")를 이용함에 있어 이용자의 권리/의무 및 책임사항, 기타 필요사항을 규정함을 목적으로 한다.
    </p>
    <h2 class="pvsHeading2"><strong>제2조(정의)</strong></h2>
    <ol class="depth_01">
        <li>
            1. 서비스 : 회사가 사이트에서 유료 또는 무료로 제공하는 SMS, LMS 등 문자메시지 발송 기능
        </li>
        <li>
            2. 이용자 : 회사가 제공하는 서비스를 이용하고자 절차에 의거 신청한 사이트의 기업회원
        </li>
        <li>
            3. 이용신청 : 회사가 정한 별도의 기준과 절차에 따라 서비스 이용을 신청하는 것
        </li>
        <li>
            4. 이용정지 : 회사가 정한 일정한 요건에 따라 일정기간 동안 서비스 이용을 보류 조치하는 것
        </li>
        <li>
            5. 해지 : 이용자가 서비스 이용신청 후 사용중 이를 해약하는 것
        </li>
        <li>
            6. 스팸메시지 : 수신자의 의사에 반하여 정보통신망을 통해 일방적으로 전송 또는 게시되는 영리목적의 광고성 정보
        </li>
        <li>
            7. 문자피싱메시지 : 전자금융사기를 목적으로 전송 또는 게시되는 정보
        </li>
        <li>
            8. 스미싱메시지 : 메시지 내용 중 인터넷 주소를 클릭하면 악성코드가 설치되어 수신자가 모르는 사이에 금전적 피해 또는 개인ㆍ금융정보 탈취 피해를 야기하는 메시지
        </li>
    </ol>
    <h2 class="pvsHeading2"><strong>제3조(약관의 게시와 개정)</strong></h2>
    <ol class="depth_01">
        <li>
            1. 회사는 이 약관의 내용을 이용자가 쉽게 알 수 있도록 서비스 약관 메뉴에 게시한다.
        </li>
        <li>
            2. 회사는 "약관규제에관한법률", “개인정보보호법” "정보통신망이용촉진및정보보호등에관한법률(이하 "정보통신망법")", "전자상거래 등에서의 소비자 보호에 관한 법률", "전기통신사업법" 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있다.
        </li>
        <li>
            3. 회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 제1항의 방식에 따라 그 개정약관의 적용일자 7일 전부터 적용일자 전까지 공지한다.<br>
            다만, 이용자의 권리 또는 의무에 관한 중요한 규정의 변경은 최소한 30일 전에 공지하고 일정기간 서비스내 공지사항, 전자우편, 로그인시 동의창 등의 전자적 수단을 통해 따로 명확히 통지하도록 한다.
        </li>
        <li>
            4. 회사가 전항에 따라 개정약관을 공지 또는 통지하면서 이용자에게 약관 변경 적용일까지 거부의사를 표시하지 않으면 동의한 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 이용자가 명시적으로 거부의 의사표시를 하지 아니한 경우 약관의 규제에 관한 법률 제12조 제1호 단서에 따라 이용자가 개정약관에 동의한 것으로 본다.
        </li>
        <li>
            5. 이용자가 개정약관의 적용에 동의하지 않을 경우 회사는 개정약관의 내용을 해당 이용자에게 적용할 수 없으며, 이 경우 이용자는 이용신청을 해지할 수 있다. 다만, 기존 약관을 적용할 수 없는 특별한 사정이 있는 경우에는 회사는 이용신청을 해지할 수 있다.
        </li>
        <li>
            6. 이용자는 약관의 변경에 대하여 주의의무를 다하여야 하며 약관 미준수로 인한 이용자의 피해는 회사가 책임지지 않는다.
        </li>
        <li>
            7. 이 약관이 이용자에게 적용되는 기간은 이용자의 서비스 신청일부터 해지일 까지를 원칙으로 하되, 단, 채권 또는 채무관계가 있을 경우에는 채권, 채무의 완료일 까지로 한다.
        </li>
    </ol>
    <h2 class="pvsHeading2"><strong>제4조(서비스 이용 신청)</strong></h2>
    <ol class="depth_01">
        <li>
            1. 이용자는 회사가 정한 별도의 기준과 절차에 따라 약관에 동의하여 서비스 이용 신청을 완료하고 회사가 이를 승낙함으로써 서비스 이용이 가능하다.
        </li>
        <li>
            2. 회사는 제 1항과 같이 서비스 이용을 신청한 이용자 중 다음 각호에 해당하는 신청에 대하여는 승낙을 하지 않거나 사후에 이용 신청을 해지할 수 있다.
            <p class="depth_02">
                ① 이용자가 이 약관에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 회사의 이용자 재가입 승낙을 얻은 경우에는 예외로 한다.
            </p>
            <p class="depth_02">
                ② 등록 내용에 허위, 기재누락, 오기가 있는 경우
            </p>
            <p class="depth_02">
                ③ 실명이 아니거나 타인의 명의를 이용한 경우
            </p>
            <p class="depth_02">
                ④ 이용자가 서비스의 정상적인 제공을 저해하거나 다른 이용자의 서비스 이용에 지장을 줄 것으로 예상되는 경우
            </p>
            <p class="depth_02">
                ⑤ 회사의 업무상 또는 기술상 문제로 인해 가입승낙을 유보하는 경우
            </p>
            <p class="depth_02">
                ⑥ 이용자가 서비스를 이용하여 법령에 위반되는 행위를 하거나 이와 유사한 행위를 하는 경우
            </p>
        </li>
        <li>
            3.	회사는 제1항에 따른 신청에 있어서 이용자의 종류에 따라 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있다.
        </li>
        <li>
            4.	서비스 이용 신청의 성립시기는 회사의 승낙이 이용자에게 도달한 시점으로 한다.
        </li>
        <li>
            5.	회사는 이용자에 대해 회사정책에 따라 등급별로 구분하여 이용시간, 이용횟수, 서비스 메뉴 등을 세분하여 이용에 차등을 둘 수 있다.
        </li>
    </ol>
    <h2 class="pvsHeading2"><strong>제5조(이용자의 아이디 및 비밀번호의 관리에 대한 의무)</strong></h2>
    <ol class="depth_01">
        <li>
            1. 이용자의 아이디와 비밀번호에 관한 관리책임은 이용자에게 있으며 이를 제3자가 이용하도록 하여서는 안 된다.
        </li>
        <li>
            2. 기타 본 약관에서 정하지 아니하는 아이디 및 비밀번호 관리에 대한 이용자의 의무는 사이트의 기업회원 약관에 따른다.
        </li>
    </ol>
    <h2 class="pvsHeading2"><strong>제6조(개인정보보호 수집 및 보호 의무)</strong></h2>
    <ol class="depth_01">
        <li>
            1. 회사는 "정보통신망법", "개인정보보호법", "전기통신사업법" 등 관계 법령이 정하는 바에 따라 이용자의 개인정보를 보호하기 위해 노력한다.
        </li>
        <li>
            2. 회사는 개인정보의 보호 및 사용에 대해서는 관련 법령 및 회사의 개인정보처리방침에 그 수집범위 및 목적을 사전 고지한다. 단, 회사에서 제공하는 공식 사이트 이외의 링크된 사이트에서는 회사의 개인정보처리방침이 적용되지 않는다
        </li>
        <li>
            3.	기타 본 약관에서 정하지 아니하는 개인정보보호 관련 사항은 사이트의 개인정보 처리방침 등 정책에 따른다.
        </li>
    </ol>
    <h2 class="pvsHeading2"><strong>제7조(이용자에 대한 통지)</strong></h2>
    <ol class="depth_01">
        <li>
            1. 회사가 이용자에 대한 서비스 관련 내용의 통지를 하는 경우, 사이트의 기업회원 약관에 의거 사이트 가입 신청시 등록한 이메일, 휴대전화 문자메세지 또는 어플리케이션 푸쉬 알림 중 수신에 동의한 수단을 활용하여 각종 고지나 통지를 이행할 수 있다.
        </li>
        <li>
            2. 회사는 불특정다수 회원에 대한 통지의 경우 1주일이상 서비스에 게시함으로써 개별 통지에 갈음할 수 있다.
        </li>
    </ol>
    <h2 class="pvsHeading2"><strong>제8조(서비스 제공의 의무)</strong></h2>
    <ol class="depth_01">
        <li>
            1. 회사는 "정보통신망법", "개인정보보호법", "전기통신사업법" 등 관련법과 이 약관이 금지하는 행위를 하지 않으며 이용자에게 제공하는 서비스를 안정적으로 제공하기 위하여 최선을 다해야
        </li>
        <li>
            2. 회사는 안정적인 서비스를 지속적으로 제공하기 위하여 설비에 장애가 생기거나 멸실 되었을 때 지체 없이 수리 또는 복구를 한다. 다만, 천재지변이나 비상사태 등 부득이한 경우에는 서비스를 일시 중단하거나 영구 중지할 수 있다.
        </li>
        <li>
            3. 회사는 이용자가 서비스 이용 신청 혹은 발신번호 등록 시 타인의 명의를 도용한 부정가입을 방지하기 위해 본인인증 서비스 사업자가 제공하는 인증방법을 통해 본인확인 인증서비스를 제공ㆍ운영한다.
        </li>
        <li>
            4. 회사는 서비스 제공과 관련 취득한 이용자의 개인정보를 본인의 동의 없이 타인에게 누설하거나 배포할 수 없으며 서비스 관련 업무 이외의 목적으로 사용할 수 없습니다. 다만 관계법령에 의한 관계기관으로부터의 요청 등 법률의 규정에 따른 적법한 절차에 의한 경우는 그러하지 않는다.
        </li>
        <li>
            5. 회사는 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보보호를 위한 보안 시스템과 개인정보보호 책임자를 갖추어야 한다.
        </li>
        <li>
            6. 회사는 이용자의 사전 동의 없이 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않는다.
        </li>
        <li>
            7. 회사는 이용계약의 체결, 계약사항의 변경 및 해지 등 이용자와의 계약관련 절차 및 내용 등에 있어 이용자에 편의를 제공하도록 노력한다.
        </li>
        <li>
            8. 회사의 서비스 이용시에 회사의 귀책사유 없는 이용자의 시스템 장애 발생, 각종 카페, 블로그, 클럽 등 게시판의 개인정보유출에 대한 피해 등은 회사가 책임을 지지 않는다.
        </li>
        <li>
            9. 회사의 사이트는 서비스의 본질적인 부분이 아닌 경우 사전예고 없이 모양과 기능이 수정될 수 있다.
        </li>
        <li>
            10.	회사는 서비스 제공목적에 맞는 서비스 이용 여부를 확인하기 위하여 상시적으로 모니터링을 실시한다.
        </li>
        <li>
            11.	회사는 "정보통신망법", "개인정보보호법", "전기통신사업법"에 등 관련 법 따라 스팸메시지ㆍ문자피싱메시지ㆍ스미싱메시지, 사기, 협박, 음란성, 범죄를 목적으로 하거나 교사 또는 방조하는 내용의 정보, 발신번호조작 등으로 인지되는 문자메시지에 대해서 차단 및 제한할 수 있다.
        </li>
        <li>
            12.	회사는 서비스 제공이 불가능한 경우 다음과 같이 처리한다.
            <p class="depth_02">
                ① 서비스 제공이 불가능한 경우 : 천재지변, 시스템(통신) 장애 및 점검, 서비스 양도 및 폐지(휴지) 등
            </p>
            <p class="depth_02">
                ② 천재지변 등을 제외한 서비스 제공이 불가능한 경우 이용자(고객)에게 사전 공지(안내)를 한다.
            </p>
            <p class="depth_02">
                ③ 천재지변 등을 제외한 서비스 제공이 불가능한 경우 이용자(회원)에게 사전 공지(안내) 없이 서비스를 중단 하였을 시, 그로 인해 피해가 발생한 이용자(회원)에게 피해에 따른 손해를 확인 후 보상할 수 있다.
            </p>
            <p class="depth_02">
                ④ 회사는 사업의 전부 및 일부를 휴지 또는 폐지 하고자 할 때에는 그 휴지 또는 폐지 예정일의 30일전까지 그 내용을 이용자(고객)에게 이메일, 홈페이지 등을 이용하여 공지한다.
            </p>
        </li>
        <li>
            13.	회사는 이용자가 불법스팸을 전송한 사실을 확인한 경우 한국인터넷진흥원 불법스팸대응센터에 관련 자료를 첨부하여 신고할 수 있다.
        </li>
        <li>
            14.	회사는 한국인터넷진흥원으로부터 스팸신고가 접수된 경우 서비스 제공목적에 맞는 서비스 이용 여부를 확인하기 위하여 다량의 문자전송여부 및 서비스 변경이력을 확인할 수 있다.
        </li>
    </ol>
    <h2 class="pvsHeading2"><strong>제9조(불만사항 접수 및 처리 의무)</strong></h2>
    <ol class="depth_01">
        <li>
            회사는 이용자의 불만사항 접수 및 처리절차를 다음과 같이 처리한다.
            <p class="depth_02">
                ① 불만사항 접수는 일반전화, 게시판, 이메일에 의한 방법으로 접수 받는다.
            </p>
            <p class="depth_02">
                ② 불만사항 처리는 접수 방법에 따라 운영자가 직접 전화, 답변하여 처리하는 것을 원칙으로 하고, 불만형태별로 처리기간을 정하여 그 기간 내에 처리한다.
                </p><table class="policy-table">
                    <tbody><tr>
                        <th>불만형태</th>
                        <th>유형</th>
                        <th>원인</th>
                        <th>처리절차</th>
                        <th>처리기간</th>
                    </tr>
                    <tr>
                        <td rowspan="3">서비스 관련</td>
                        <td>통신 장애</td>
                        <td>회사의 귀책사유</td>
                        <td>대고객 사과 및 품질개선</td>
                        <td>3일 이내</td>
                    </tr>
                    <tr>
                        <td rowspan="2">시스템 장애</td>
                        <td>회사의 귀책사유</td>
                        <td>대고객 사과 및 품질개선</td>
                        <td>3일 이내</td>
                    </tr>
                    <tr>
                        <td>이용자(회원)의 귀책사유</td>
                        <td>대고객 설명</td>
                        <td>1일 이내</td>
                    </tr>
                    <tr>
                        <td rowspan="3">요금 관련</td>
                        <td rowspan="3">청구요금 이의</td>
                        <td rowspan="2">회사의 귀책사유</td>
                        <td>과금전 : 정정 과금 처리</td>
                        <td>3일 이내</td>
                    </tr>
                    <tr>
                        <td>과금후 : 환불 처리</td>
                        <td>7일 이내</td>
                    </tr>
                    <tr>
                        <td>이용자의 귀책사유</td>
                        <td>대고객 설명</td>
                        <td>1일 이내</td>
                    </tr>
                </tbody></table>
            <p></p>
        </li>
    </ol>
    <h2 class="pvsHeading2"><strong>제10조(발신번호 변작방지 의무)</strong></h2>
    <ol class="depth_01">
        <li>
            회사는 발신번호의 변작방지를 위해 다음과 같은 조치를 취한다.
            <p class="depth_02">
                ① 번호인증을 통한 발신번호 사전등록서비스를 제공/운영
            </p>
            <p class="depth_02">
                ② 회사에서 제공하는 통일된 발신번호로 발신
            </p>
        </li>
    </ol>
    <h2 class="pvsHeading2"><strong>제11조(이용자의 금지행위 의무)</strong></h2>
    <ol class="depth_01">
        <li>
            1. 이용자는 현행 법령, 회사가 제공하는 서비스에 정한 약관, 이용안내 및 서비스와 관련하여 공지한 주의사항, 회사가 통지하는 사항, 기타 서비스 이용에 관한 규정을 준수하여야 하며, 기타 회사의 업무에 방해되는 행위를 해서는 안된다.
            <p class="depth_02">
                ① 정보통신망법(제50조)에 따라 광고문자 표기 의무사항을 위반해서는 안된다.
            </p>
            <p class="depth_02">
                ② 이용자가 본인 명의가 아닌 타인의 전화번호를 부정하게 사용하는 경우에 서비스를 중지시키고, 필요시 회원 탈퇴 및 접속IP를 차단한다.
            </p>
        </li>
        <li>
            2. 이용자는 서비스를 이용하여 얻은 정보를 회사의 사전 승낙 없이 복사, 복제, 변경, 번역, 출판, 발송 및 기타의 방법으로 사용하거나 이를 타인에게 제공할 수 없다.
        </li>
        <li>
            3. 이용자는 서비스를 이용함에 있어서 공공질서 또는 미풍양속을 해치는 행위, 또는 다음 각 호에 해당하는 행위를 해서는 안되며, 위반시 회사는 이용자의 서비스이용을 정지하고 일방적으로 서비스 이용 신청을 해지할 수 있다.
            <p class="depth_02">
                ① 다른 이용자의 이용 아이디를 부정 사용하는 행위
            </p>
            <p class="depth_02">
                ② 해킹 행위 또는 컴퓨터 바이러스의 유포 행위
            </p>
            <p class="depth_02">
                ③ 타인의 의사에 반하여 광고성정보 등 유사한 내용을 지속적으로 전송하는 행위
            </p>
            <p class="depth_02">
                ④ 회사와 타인의 지적 재산권 등을 침해하는 행위(불법 복제물 복제·전송 등을 포함)
            </p>
            <p class="depth_02">
                ⑤ 범죄행위를 목적으로 하거나 범죄행위를 교사하거나, 반국가적 범죄의 수행 등을 목적으로 하는 행위
            </p>
            <p class="depth_02">
                ⑥ 서비스의 안전적인 운영에 지장을 주거나 줄 우려가 있다고 판단되는 행위(신청 또는 변경 시 허위내용을 등록하는 행위 포함)
            </p>
            <p class="depth_02">
                ⑦ 원하지 않는 메시지를 타인에게 보내는 행위
            </p>
            <p class="depth_02">
                ⑧ 회사와 타인의 명예를 손상시키거나 모욕하는 행위 또는 일체의 업무를 방해하는 행위
            </p>
            <p class="depth_02">
                ⑨ 외설 또는 폭력적인 메시지, 팩스, 음성, 메일, 기타 공서양속에 반하는 정보를 서비스에 공개 또는 게시, 전송하는 행위 등 선량한 풍속 또는 기타 사회질서를 해하거나 관계법령에 위반하는 행위
            </p>
            <p class="depth_02">
                ⑩ 회사의 동의 없이 영리를 목적으로 서비스를 사용하는 행위 및 제3자에게 임의로 서비스를 임대하는 행위
            </p>
        </li>
        <li>
            4. 이용자는 스팸메시지ㆍ문자피싱메시지 전송 등 불법행위를 하거나 전기통신사업법 등 관련 법령을 준수하지 않아 발생하는 모든 민ㆍ형사상의 책임을 부담한다.
        </li>
    </ol>
    <h2 class="pvsHeading2"><strong>제12조(서비스의 변경)</strong></h2>
    <ol class="depth_01">
        <li>
            1. 회사는 상당한 이유가 있는 경우에 운영상, 기술상의 필요에 따라 제공하고 있는 전부 또는 일부 서비스를 변경할 수 있다.
        </li>
        <li>
            2. 서비스의 내용, 이용방법, 이용시간에 대하여 변경이 있는 경우에는 변경사유, 변경될 서비스의 내용 및 제공일자 등을 그 변경 전에 해당 서비스 초기화면에 게시하여야 한다.
        </li>
        <li>
            3. 회사는 무료로 제공되는 서비스의 일부 또는 전부를 회사의 정책 및 운영의 필요상 수정, 중단, 변경할 수 있으며 이에 대하여 관련법에 특별한 규정이 없는 한 이용자에게 별도의 보상을 하지 않다.
        </li>
    </ol>
    <h2 class="pvsHeading2"><strong>제13조(서비스 이용의 제한 및 정지)</strong></h2>
    <ol class="depth_01">
        <li>
            1. 회사는 원활한 서비스 제공을 위하여 이 약관을 위반하거나 서비스의 정상적인 운영을 방해하는 경우 서비스 이용을 제한하거나 정지할 수 있다.
        </li>
        <li>
            2. 회사는 1항에도 불구하고 주민등록법을 위반한 명의도용 및 결제도용, 저작권법을 위반한 불법프로그램의 제공 및 운영방해, 정보통신망법을 위반한 스팸메시지 및 불법통신, 해킹, 악성프로그램의 배포, 접속권한 초과행위 등과 같이 관련법을 위반한 경우에는 즉시 영구이용정지를 할 수 있다. 본 항에 따른 서비스 이용정지 시 서비스 내의 금액, 혜택 및 권리 등도 모두 소멸되며 회사는 이에 대해 별도로 보상하지 않는다.
        </li>
        <li>
            3. 회사는 다음 각호에 해당하는 경우 해당 역무의 제공을 거부하는 조치를 할 수 있으며, 이용자에게 통지한다. 단, 회사가 긴급하게 이용을 정지할 필요가 있다고 인정하는 경우나, 이용자의 귀책사유로 인해 통지할 수 없는 경우에는 통지를 생략할 수 있다.
            <p class="depth_02">
                ① 이용자가 정보통신망법 제50조 또는 제50조의 8을 위반하여 불법스팸 발송을 하는 경우
            </p>
            <p class="depth_02">
                ② 방송통신위원회ㆍ한국인터넷진흥원ㆍ과학기술정보통신부 등 관계기관이 불법스팸메시지ㆍ문자피싱메시지 등 불법행위의 전송사실을 확인하여 이용정지를 요청하는 경우
            </p>
            <p class="depth_02">
                ③ 광고성 정보의 전송 또는 수신으로 역무의 제공으로 장애가 일어나거나 일어날 우려가 있는 경우
            </p>
            <p class="depth_02">
                ④ 이용자가 발송한 문자 또는 팩스메시지 광고성 정보 메시지의 수신을 원하지 아니하는 경우
            </p>
            <p class="depth_02">
                ⑤ 제10조(발신번호 변작방지 의무)를 위반하여 발신번호를 변작하는 등 거짓으로 표시한 경우
            </p>
            <p class="depth_02">
                ⑥ 과학기술정보통신부ㆍ한국인터넷진흥원 등 관련 기관이 발신번호 변작 등을 확인하여 이용 정지를 요청하는 경우
            </p>
            <p class="depth_02">
                ⑦ 유료서비스를 사용한 이용자가 요금 등을 납입할 의무를 이행하지 아니한 경우
            </p>
            <p class="depth_02">
                ⑧ 제11조(이용자의 금지행위 의무)를 이행하지 아니한 경우
            </p>
            <p class="depth_02">
                ⑨ 정보통신윤리위원회의 시정요구가 있거나, 불법선거 운동과 관련하여 선거관리위원회의 유권해석을 받은 경우 또는 수사기관이나 법원의 결정 또는 명령 등으로 회사의 이용자에 대한 서비스 제공이 관련 법령상 제한되는 경우
            </p>
            <p class="depth_02">
                ⑩ 이용자는 사전에 명시적으로 광고 수신동의를 얻은 자에게만 광고 메시지를 전송할 수 있으며, 오후9시 부터 다음날 오전8시까지는 별도의 사전 동의를 받아야 함에도 이를 어긴 경우
            </p>
            <p class="depth_02">
                ⑪ 기타 회사가 사회통념상 합리적인 관점에서 이용자로 부적당하다고 판단한 경우
            </p>
        </li>
        <li>
            4. 이용자가 3항에 해당되어 타 서비스에 악용될 우려가 있다는 객관적 정황이 있는 경우에는 그 다른 서비스도 이용정지 할 수 있다. 특히 3항 5호 및 6호에 해당하는 경우 회사는 이용자의 서비스를 영구정지 조치할 수 있으며, 원인이 해소되는 경우 해제할 수 있다.
        </li>
        <li>
            5. 제3항의 이용정지 경우 사회적 공익을 저해할 목적이나 범죄적 목적으로 서비스를 이용하고 있다고 판단되는 경우 이용자에게 회사는 사전통보 없이 서비스를 즉시 중단할 수 있으며 그에 따른 데이터도 복구를 전제로 하지 않고 삭제할 수 있다.
        </li>
        <li>
            6. 회사는 이용정지 등의 원인이 된 사유가 완전히 해소되기 전까지는 이용정지등 조치를 해제하지 아니 할 수 있으며, 그 이용정지등의 사유가 해소된 것이 확인된 경우에는 이용정지조치를 즉시 해제한다.
        </li>
        <li>
            7. 회사는 회사에서 정하는 스미싱 등 스팸방지를 위해 특정 단어가 포함된 문자 메시지에 대해 발송을 제한 할 수 있다.
        </li>
        <li>
            8. 회사는 이용자에게 강제적인 서비스 신청 해지 사유가 발생할 경우 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여한다. 단 해당 기간 동안 회사는 이용자에게 서비스를 중지할 수 있다.
        </li>
        <li>
            9. 회사는 스팸메시지ㆍ피싱문자 전송을 방지하기 위해서 문자 팩스의 일일발송량을 제한할 수 있으며 자체 모니터링을 강화할 수 있다.
        </li>
        <li>
            10.	2회 이상 동일한 이용정지 사유가 발생하는 이용자에게는 회사는 이용자에게 사전통보 없이 서비스를 즉시 중단할 수 있으며, 제8항의 소명기회 부여를 생략하고 이용자에게 이용정지사유 2회 이상 발생으로 인한 사유임을 알려 서비스 해지 조치를 할 수 있다. 이 경우 해당 거래 관련 자료는 관련 법령에 따라 필요한 기간 동안 보관한다.
        </li>
    </ol>
    <h2 class="pvsHeading2"><strong>제14조(문자 발송량의 제한)</strong></h2>
    <ol class="depth_01">
        <li>
            1.	회사는 스팸메시지ㆍ피싱문자 전송을 방지하기 위해서 문자 팩스의 일일발송량을 제한할 수 있으며 자체 모니터링을 강화할 수 있다.
        </li>
        <li>
            2.	회사는 이용자가 제출하는 증빙서류 등을 통해 불법스팸 전송이 아님을 확인할 수 있는 경우 초과전송이 가능하다.
        </li>
    </ol>
    <h2 class="pvsHeading2"><strong>제15조(서비스 이용 신청 해지)</strong></h2>
    <ol class="depth_01">
        <li>
            1. 이용자가 서비스 이용 신청 해지를 하고자 할 때에는 본인이 직접 서비스 이용 해지를 신청하거나 전자우편, 전화 등의 방법을 통하여 회사에 신청하여야 한다.
        </li>
        <li>
            2. 회사는 1항의 규정에 의하여 해지 신청이 접수되면 즉시 이용 신청을 해지한다. 단, 별도의 채무나 채권 관계가 있을 경우에는 그러하지 아니한다.
        </li>
        <li>
            3. 서비스 해지 후로부터 5년간 고객의 자료를 보호할 의무를 가진다. 단, 서비스해지 후 보관된 개인정보 및 기타 서비스자료는 관련법규에 의하여 보존 의무가 없는 것으로 판명이 되면 즉시 삭제처리 된다.
        </li>
        <li>
            4. 회사는 이용자가 다음 중 하나에 해당하는 것이 객관적으로 명백하거나 관련 증거가 확보된 경우 별도의 소명기회 부여 없이 당해 서비스 신청을 해지할 수 있다.
            <p class="depth_02">
                ① 타인의 명의로 신청하였거나 신청시 제출한 자료 및 정보가 허위 또는 누락되었음이 확인된 경우
            </p>
            <p class="depth_02">
                ② 회사의 서비스 제공목적 외의 용도로 서비스를 이용하거나, 전기통신사업법 제30조에 위반하여 제3자에게 서비스를 이용하도록 제공한 경우
            </p>
            <p class="depth_02">
                ③ 방송통신위원회 또는 한국인터넷진흥원 또는 기타 유관기관이 불법스팸 전송과 관련하여 서비스 이용 해지를 요청하는 경우
            </p>
            <p class="depth_02">
                ④ 회사가 제공하는 서비스를 이용하여 불법스팸을 전송한 사실이 확인된 경우
            </p>
            <p class="depth_02">
                ⑤ 불특정 다수를 대상으로 메시지(SMS, LMS, MMS 포함), 음성(영상)통화 등의 방법을 통해 무차별적인 스팸을 전송한 사실이 확인된 경우
            </p>
            <p class="depth_02">
                ⑥ 서비스를 이용하여 수신자를 기망하여 회신을 유도하는 행위를 하는 경우
            </p>
            <p class="depth_02">
                ⑦ 제14조의 규정에 의하여 이용정지를 당한 이후 1년 이내에 이용정지 사유가 재발한 경우
            </p>
            <p class="depth_02">
                ⑧ 발신자 정보를 변작하여 영리목적의 광고성 정보를 전송하였거나, 또는 발신자 정보를 변작하여 위해를 입힐 목적으로 문자메시지를 전송한 사실이 확인된 경우
            </p>
            <p class="depth_02">
                ⑨ 이용자가 전송한 광고성 정보에 대해 회사가 한국인터넷진흥원 등에 불법스팸 유무확인을 요청하여 불법스팸임이 확인된 경우
            </p>
        </li>
        <li>
            5. 회사는 불법스팸을 전송하였다고 확인된 이용자가 이용중인 다른 서비스가 불법스팸에 악용되고 있거나 악용될 우려가 있다는 객관적 정황이 있는 경우에는 그 다른 서비스도 해지 할 수 있다.
        </li>
        <li>
            6. 회사는 제4항의 규정에 의하여 서비스 신청을 해지하는 경우, 그 사실을 당해 이용자에게 통지한다. 단, 회사가 긴급하게 서비스 이용을 해지 할 필요가 있다고 인정하는 경우나, 이용자의 귀책사유로 인해 통지할 수 없는 경우에는 통지를 생략할 수 있다.
        </li>
    </ol>
    <h2 class="pvsHeading2"><strong>제16조(서비스 요금 및 환불)</strong></h2>
    <ol class="depth_01">
        <li>
            1. 유료서비스 이용과 관련하여 이용자가 납부하여야 할 요금은 이용료 사이트에 게재한 바에 따른다.
        </li>
        <li>
            2. 환불에 관한 규정은 기업서비스 이용약관 제11조(서비스 요금의 환불)에 따른다.
        </li>
    </ol>
</div>
            </div>
        </div>
        
        


    <div class="notice_msg" id="notice_msg_agree" style="display:none;"><p class="failure">잡코리아 이용약관과 개인정보 수집 및 이용(필수)에 모두 동의해주세요.</p></div>
</div>
	
	
            <!-- 회원 가입 버튼 -->
            <div class="row_group line_none regist_complete" style="position:relative;">
                <div class="row">
                    <button type="button" id="companyJoinBtn" class="mbrBtnRegist"><span>가입하기</span></button>
                </div>
            </div>
</form>    </fieldset>
    <!-- familysite -->
    

</div>
<div id="footer">
    <p id="copyright"><img src="https://i.jobkorea.kr/content/images/common/footer/copyright-join.png?220106" alt="© JOBKOREA LLC. All rights reserved." usemap="#copyright"></p>
    <map name="copyright"><area shape="rect" coords="10,0,80,19" href="https://www.jobkorea.co.kr" target="_blank" alt="잡코리아"></map>
</div>
    </div>


    

<div style="position:absolute; left:-5000px; overflow:hidden; display:none;">
	






</div>












    

</body></html>