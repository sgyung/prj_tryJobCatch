<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="http://192.168.10.133/mvc_prj/common/main/favicon.png">

<style type="text/css">
</style>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <title>이력서 작성</title>

<link href="https://i.jobkorea.kr/content/css/ver_2/event/banner.promotion-sv-202211241151.css" rel="stylesheet" type="text/css">

<link href="https://i.jobkorea.kr/content/css/ver_2/common-sv-202311091305.css" rel="stylesheet" type="text/css">
<link href="https://i.jobkorea.kr/content/css/ver_2/text_user/resume/header-sv-202307041411.css" rel="stylesheet" type="text/css">
<link href="https://i.jobkorea.kr/content/css/ver_2/text_user/resume/layout-sv-202304280628.css" rel="stylesheet" type="text/css">
<link href="https://i.jobkorea.kr/content/css/ver_2/mtu/mtu_popup-sv-202311201246.css" rel="stylesheet" type="text/css">
<link href="https://i.jobkorea.kr/deploy/pc/dist/css/personal/layout/footer-sv-202311031048.css" rel="stylesheet" type="text/css">
    
    <link href="https://i.jobkorea.kr/content/css/ver_2/text_user/resume/write-sv-202311281234.css" rel="stylesheet" type="text/css">
    <link href="https://i.jobkorea.kr/content/css/ver_2/mtu/mtu_popup-sv-202311201246.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-H72LM07GXG&amp;cx=c&amp;_slc=1"></script>
    <script src="https://teralog.techhub.co.kr/trk?la_tp=pv&amp;la_gc=TR10148105490&amp;la_uid=&amp;la_fid=261fc0dc98663dc7e246c5a4a307aa1f&amp;la_sid=&amp;la_infl=&amp;la_pa1=&amp;la_pa2=&amp;la_dccs=UTF-8&amp;la_r=798555715&amp;la_crsd_gc=&amp;la_sv=59647be&amp;la_dcrf=INTNL_REF&amp;la_dcurl=https%3A%2F%2Fwww.jobkorea.co.kr%2FUser%2FResume%2FWrite&amp;la_dcttl=%EC%9D%B4%EB%A0%A5%EC%84%9C%20%EC%9E%91%EC%84%B1&amp;la_ib=&amp;la_is=&amp;la_callback=_LA.CB"></script>
    <script src="https://teralog.techhub.co.kr/ckie"></script>
    <script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
    <script async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script src="https://sas.nsm-corp.com/sa-w.js?gc=TR10148105490&amp;rd=1701245476312"></script>
    <script type="text/javascript" async="" src="https://tags.creativecdn.com/l3NDK8jaO0RovnP18psC.js"></script>
    <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-GQWHSF87P4&amp;l=dataLayer&amp;cx=c"></script>
    <script type="text/javascript" src="https://js.appboycdn.com/web-sdk/3.5/appboy.min.js" async=""></script>
    <script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-WL56D3L"></script>
    <script src="https://i.jobkorea.kr/content/js/jquery-1.11.1.min.js?v=202311281400" type="text/javascript"></script>
    <style>
        .autocomplete .list .hover {
            background-color: #f5f5f5;
        }

        .popupSearchDuty .list .hover {
            background-color: #f5f5f5;
        }
    </style>

    <link rel="stylesheet" href="https://i.jobkorea.kr/content/css/join/flow/flow.css">

<style>
    .async-hide {
        opacity: 0 !important
    }
</style>
<!--Braze-->

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

<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
<script type="text/javascript">
$(function(){
	//test 값
	$("#S_NAME").val("0")
	$("#M_TEL").val("1")
	$("#M_ZIP").val("2")
	$("#M_ADDR").val("3")
	$("#M_DETAIL_ADDR").val("4")
	$("#MR_TITLE").val("5")
	//학력
	$("#AA_SCHOOL_DIVISION").val("6")
	$("#AA_SCHOOL_NAME").val("7")
	$("#AA_ENTRANCE_DATE").val("8")
	$("#AA_GRADUATION_DATE").val("9")
	$("#AA_GRADUATION_CONDITION").val("10")
	$("#AA_MAJOR_NAME").val("11")
	$("#AA_CREDIT").val("12")
	$("#AA_DEGREE").val("13")
	
	$("#C_CORPORATE_NAME").val("14")
	$("#C_DEPARTMENT_NAME").val("15")
	$("#C_JOINING_DATE").val("16")
	$("#C_RETIREMENT_DATE").val("17")
	$("#C_POSITION").val("18")
	$("#C_DUTY").val("19")
	$("#IIAE_SECTION").val("20")
	$("#IIAE_INSTITUTION_NAME").val("21")
	$("#IIAE_START_DATE").val("22")
	$("#IIAE_END_DATE").val("23")
	$("#IIAE_CONTENT").val("24")
	
	$("#CER_NAME").val("25")
	$("#CER_ISSUING_ORGANIZATION").val("26")
	$("#CER_ACQUISITION_DATE").val("27")
	
	$("#A_NAME").val("28")
	$("#A_INSTITUTION").val("29")
	$("#A_DATE").val("30")
	$("#A_CONTENT").val("31")
	
	/* $("#L_TYPE").val("32")
	$("#L_NAME").val("33")
	$("#L_ABILITY").val("34")
	$("#L_TEST_NAME").val("35")
	$("#L_SCORE").val("36")
	$("#L_ACQUISITION_DATE").val("37") */
	
	$("#P_URL").val("38")
	$("#CL_TITLE").val("39")
	
	$("#CL_CONTENT").val("40")
	
	
	
	
	//inputBox 효과
	$(document).on('focusin', ".input, .textarea", function(){
		if( $(this).hasClass("focus") ){
			return;
		}//end if
		//textarea
		if( $(this).find("textarea").length > 0){
			$(this).addClass("focus")
			$(this).find("textarea").addClass("is-expanded")
			return;
		}//end if
		//inputbox
		if( $(this).find("input[type='text']").val() == "" ){
			$(this).addClass("focus");
			return;
		}
		
	})//on
	$(document).on('focusout', ".input, .textarea", function(){
		if( $(this).find("textarea").length > 0){
			$(this).removeClass("focus")
			$(this).find("textarea").removeClass("is-expanded")
			return;
		}
		if( $(this).find("input[type='text']").val() == "" ){
			$(this).removeClass("focus");
			$(this).removeClass("is-value");
		} else {
			$(this).removeClass("focus");
			$(this).addClass("is-value");
		}
	})//on
	
	//필드 삭제 메소드
	function removeField(fieldCnt, object, btn, fieldBtn){
		if( fieldCnt <= 1 ){
			object.closest(".formWrap").hide();
			$(btn).removeClass("selected")
			$(fieldBtn).removeClass("button-field-remove")
		} else {
			object.closest(".colum").remove();
		}
	}
	//필드 삭제
	$(document).on("click", ".buttonDeleteField", function(){
		var target = $(this).closest(".formWrap").find(".header").text().trim();
		//스킬
		if( target == "스킬"){
			removeField(skillFieldCnt, $(this), ".buttonSkill", "#skillFieldBtn")
			skillFieldCnt--
		}//end if
		//학력
		if( target == "학력"){
			removeField(eduFieldCnt, $(this), ".buttonEducation", "#eduFieldBtn")
			eduFieldCnt--;
		}//end if
		//경력
		if( target == "경력"){
			removeField(careerFieldCnt, $(this), ".buttonCareer", "#careerFieldBtn");
			careerFieldCnt--;
		}//end if
		//인턴,대외활동,교육
		if( target == "인턴·대외활동·교육"){
			removeField(iiaeFieldCnt, $(this), ".buttonIntern", "#iiaeFieldBtn")
			iiaeFieldCnt--;
		}//end if
		//자격증
		if( target == "자격증"){
			removeField(cerFieldCnt, $(this), ".buttonCertificate", "#cerFieldBtn");
			cerFieldCnt--;
		}//end if
		//수상
		if( target == "수상"){
			removeField(awardFieldCnt, $(this), ".buttonAward", "#awardFieldBtn");
			awardFieldCnt--;
		}//end if
		//어학
		if( target == "어학"){
			removeField(langFieldCnt, $(this), ".buttonLanguage", "#langFieldBtn");
			langFieldCnt--;
		}//end if
		if( target == "포트폴리오"){
			removeField(portfolioFieldCnt, $(this), ".buttonPortfolio", "#portfolioFieldBtn");
			portfolioFieldCnt--;
		}//end if
		if( target == "자기소개서"){
			removeField(portfolioFieldCnt, $(this), ".buttonIntroduction", "#coverletterFieldBtn");
			portfolioFieldCnt--;
		}//end if
		
	})//on
	
	//이력서항목 필드 함수
	function fieldBtnEvt(object, formName){
		if( object.siblings("a").hasClass("selected")){
			$(formName).hide();
			object.siblings("a").removeClass("selected")
			object.removeClass("button-field-remove")
		} else {
			$(formName).show();
			object.siblings("a").addClass("selected")
			object.addClass("button-field-remove");
		}//else
	}
	$(document).on("click", ".button-field", function(){
		var target = $(this).siblings("a").find("span").text().trim();
		//스킬
		if( target == "스킬"){
			fieldBtnEvt($(this), "#formSkill");
		}//end if
		//학력
		if( target == "학력" ){
			fieldBtnEvt($(this), "#formEducation");
		}//end if
		//경력
		if( target == "경력" ){
			fieldBtnEvt($(this), "#formCareer");
		}//end if
		//인턴,대외활동,교육
		if( target == "인턴·대외활동·교육" ){
			fieldBtnEvt($(this), "#formIntern");
		}//end if
		//자격증
		if( target == "자격증" ){
			fieldBtnEvt($(this), "#formLicense");
		}//end if
		if( target == "수상" ){
			fieldBtnEvt($(this), "#formAward");
		}//end if
		//어학
		if( target == "어학" ){
			fieldBtnEvt($(this), "#formLanguage");
		}//end if
		//어학
		if( target == "포트폴리오" ){
			fieldBtnEvt($(this), "#formPortfolio");
		}//end if
		if( target == "자기소개서" ){
			fieldBtnEvt($(this), "#formIntroduction");
		}//end if
	})//on
	
	//재직중 checkbox
	$(document).on("click", '.checkbox-inoffice', function(){
		var checkedStatus = $(this).children(".employStatusChkBox:first").prop("checked")
		if( !checkedStatus ){
			$(this).children(".employStatusChkBox:first").prop("checked", true)
			$(this).parent().siblings(".input-career-leavedate").hide();
			$(this).find("#C_EMPLOYMENT_STATUS").val("Y");
		} else {
			$(this).children(".employStatusChkBox:first").prop("checked", false)
			$(this).parent().siblings(".input-career-leavedate").show();
			$(this).find("#C_EMPLOYMENT_STATUS").val("N");
		}
		$(this).toggleClass("is-toggleClass")
	})
	
	//사진 추가/수정
	$("#buttonChangePicture").click(function(){
		var leftPosition = (window.screen.width / 2) - (700 / 2);
		var topPosition = (window.screen.height / 2) - (500 / 2);
			
		var uploadImgWindow = window.open('http://localhost/prj_tryJobCatch/member/uploadImgFrm.do', '이미지 등록', 'width=700,height=500,left=' + leftPosition + ',top=' + topPosition);
		
		//사진 추가,수정 완료
		$(uploadImgWindow).on("beforeunload", function(){
			$.ajax({
				url : "http://localhost/prj_tryJobCatch/member/refreshImage.do",
				type : "POST",
				error : function(xhr){
					alert(xhr.status)
				},
				success : function( img ){
					var imgPath = "http://localhost/prj_tryJobCatch/common/images/mbrImages/" + img;
					$("#mbrImg").attr("src", imgPath)
				}
			})//ajax
		})
	})//click
	
	//이력서 등록
	$(".buttonComplete").click(function(){
		$("#resumeFrm").submit();
	})//click
	
	
})//ready
	
var skillFieldCnt = 1;
var eduFieldCnt = 1;
var careerFieldCnt = 1;
var iiaeFieldCnt = 1;
var cerFieldCnt = 1;
var awardFieldCnt = 1;
var langFieldCnt = 1;
var portfolioFieldCnt = 1;
var coverletterlioFieldCnt = 1;

//필드추가
function addField( button ){
	var column = $(button).siblings(".colum").last();
	var cloneCol = column.clone();
	var dropdown = cloneCol.find(".dropdown");
	var container = column.find(".container");
	var setZindex = parseInt(container.css("z-index")) - 1;
	
	cloneCol.find("input").val("");
	dropdown.removeClass("selected");
	dropdown.removeClass("expande");
	cloneCol.find(".input").removeClass("focus");
	cloneCol.find(".input").removeClass("is-value");
	dropdown.find(".label").addClass("hidden");
	
	//학력 dropdown
	cloneCol.find(".dropdown-education-category").find(".buttonChoose").find("span").text("학교구분");
	cloneCol.find(".dropdown-edcation-state").find(".buttonChoose").find("span").text("졸업상태");	
	cloneCol.find(".dropdown-edcation-degree").find(".buttonChoose").find("span").text("학위");	
	
	//textarea
	if( cloneCol.find("textarea").length > 0){
		cloneCol.find("textarea").val("");
	}
	
	var fieldName = $(button).closest(".formWrap").find(".header").text();
	if( fieldName.trim() == "스킬"){
		skillFieldCnt++;
	}//end if
	if( fieldName.trim() == "학력"){
		cloneCol.find(".container").css("z-index", setZindex);
		eduFieldCnt++;
	}//end if
	if( fieldName.trim() == "경력"){
		cloneCol.find(".input-career-leavedate").css("display", "inline-block");
		cloneCol.find(".employStatusChkBox").prop("checked", false);
		cloneCol.find(".checkbox-inoffice").removeClass("is-toggleClass");
		careerFieldCnt++;
	}//end if
	if( fieldName.trim() == "인턴·대외활동·교육"){
		cloneCol.find(".container").css("z-index", setZindex);
		iiaeFieldCnt++;
	}//end if
	if( fieldName.trim() == "자격증"){
		cerFieldCnt++;
	}//end if
	if( fieldName.trim() == "수상"){
		awardFieldCnt++;
	}//end if
	if( fieldName.trim() == "어학"){
		cloneCol.find(".container").css("z-index", setZindex);
		langFieldCnt++;
	}//end if
	if( fieldName.trim() == "포트폴리오"){
		portfolioFieldCnt++;
	}//end if
	if( fieldName.trim() == "자기소개서"){
		coverletterlioFieldCnt++;
	}//end if
	
	column.after(cloneCol)
}//addField

function dropdown(button){
	var dropdown = $(button).closest(".dropdown");
	var list = dropdown.find(".list");
	
	dropdown.toggleClass("expande");
	list.toggleClass("visible hidden");
	
	list.find("button").click(function(){
		var target = $(this).find("span").text();
		$(button).find("span").text(target);
		$(button).prev(".label").removeClass("hidden");
		
		dropdown.removeClass("expande")
		list.removeClass("visible")
		list.addClass("hidden")
		
		dropdown.addClass("selected");
		$(button).siblings("[type='hidden']").val(target);
		
		//학력
		var row = $(button).closest(".row").siblings(".row");
		var eduMajor = row.find(".input-education-major-name");
		var eduGrades = row.find(".input-education-grades");
		var eduDegree = row.find(".dropdown-edcation-degree");
		
		if( target == "대학원"){
			eduMajor.show();
			eduGrades.show();
			eduDegree.show();
		} else if( target == "대학(2,3년)" || target == "대학교(4년)"){
			eduMajor.show();
			eduGrades.show();
			eduDegree.hide();
			row.find("#AA_DEGREE").val("");
		} else if( target == "고등학교" ){
			eduMajor.hide();
			eduGrades.hide();
			eduDegree.hide();
			row.find("#AA_MAJOR_NAME").val("");
			row.find("#AA_CREDIT").val("");
			row.find("#AA_DEGREE").val("");
			
		}
		//어학
		if( target == "공인시험"){
			dropdown.siblings(".devConversationArea").hide();
			dropdown.siblings(".devExamArea").show();
			return;
		}
		if( target == "회화능력"){
			dropdown.siblings(".devConversationArea").show();
			dropdown.siblings(".devExamArea").hide();
			return;
		}
		
	})//click
	
}//dropdown


</script>


</head>
<body class="resume resume-write" style="" cz-shortcut-listen="true">
<div class="resumePage">
    <div class="resumeHeader">
        <div class="container">
            <a href="http://localhost/prj_tryJobCatch/main.do" class="logo linkLogo"><img src="https://i.jobkorea.kr/content/images/text_user/resume/logo-jobkorea.png?20230704" alt="JOBKOREA"></a>
            <div class="links">
                <a href="http://localhost/prj_tryJobCatch/member/mypageHome.do" class="link linkHome">개인회원 홈</a>
            </div>
        </div>
    </div>
    <form action="http://localhost/prj_tryJobCatch/member/registResume.do" method="post" id="resumeFrm">
    	<input type="hidden" id="MR_ID" name="MR_ID" value="mr_00046"/>
    	<div class="resumeWrapper">
            <div class="resumeContainer">
            
            	<!-- 이력서 제목 -->
            	<div class="resumeTitle">
                    <input id="MR_TITLE" maxlength="100" name="MR_TITLE" placeholder="기업에게 나에 대해 알려줍시다. 강점, 목표, 관심분야도 좋아요." type="text" value="test">
                </div>
                
                <!-- 인적사항 -->
                <div class="formWrap formWrapProfile">
				    <h2 class="header">인적사항<div class="description"><span class="star">*</span> 필수 입력 정보입니다.</div></h2>
				    <div class="form formProfile">
				        <div class="row">
				                <div class="input is-label input-profile-name is-value is-readonly">
				                    <div class="label">이름 <span class="star">*</span></div>
				                    <div class="value dev-essential">장용석</div>
				                </div>
				                <div class="input is-label input-profile-birth is-value is-readonly">
				                    <div class="label">생년월일 <span class="star">*</span></div>
				                    <div class="value dev-essential">1995.09.22</div>
				                    <div class="validation hidden" aria-hidden="true">생년월일을 입력해주세요</div>
				                </div>
				                <div class="input is-label dropdown-profile-sex is-value is-readonly">
				                    <div class="label">성별 <span class="star">*</span></div>
				                    <div class="value dev-essential">남자</div>
				                </div>
							<div class="input input-profile-email is-label is-value">
				                <label for="UserInfo_M_Email">이메일 <span class="star">*</span></label>
				                <input type="email" name="M_EMAILl" id="M_EMAIL" data-format-type="email" value="zxczxc8294@naver.com" autocomplete="off" spellcheck="false" class="dev-essential" data-privacy="이메일">
				                <div class="autocomplete hidden" aria-hidden="true">
				                    <div class="list"><ul></ul></div>
				                </div>
				                <div class="validation hidden" aria-hidden="true"></div>
				                <div class="backdrop">
				                    <div class="highlights"></div>
				                </div>
				            </div>
				        </div>
				        <div class="row">
				            <div class="input is-label input-profile-hp is-value">
				                <label for="UserInfo_M_Hand_Phone">휴대폰번호 <span class="star">*</span></label>
				                <input type="text" name="M_TEL" id="M_TEL" placeholder="010-1234-1234" value="010-8799-8269" maxlength="13" autocomplete="off" data-format-type="hp" class="dev-essential">
				                <div class="validation hidden" aria-hidden="true"></div>
				            </div>
				            
				        </div>
				        <div class="row">
				            <a href="javascript:void(#)" class="input is-label input-profile-addr is-value" style="width: 200px;">
				            	<label for="M_ZIP">우편번호</label>
				                <input type="text" id="M_ZIP" name="M_ZIP" readonly="readonly" value="000000" class="dev-optional" data-privacy="주소">
				                <i class="icon icon-search" onclick="execDaumPostcode()" aria-hidden="true"></i>
				            </a>
				            <div class="input is-label input-profile-hp is-value" style="width: 500px;">
				                <label for="M_ADDR">주소 <span class="star">*</span></label>
				                <input type="text" readonly="readonly" id="M_ADDR" name="M_ADDR" placeholder="010-1234-1234" value="testtest" maxlength="13" autocomplete="off" data-format-type="hp" class="dev-essential">
				                <div class="validation hidden" aria-hidden="true"></div>
				            </div>		        
				        </div>
				        <div class="row">
				        <div class="input is-label input-profile-hp is-value" style="width: 710px;">
				                <label for="M_DETAIL_ADDR">상세주소 <span class="star">*</span></label>
				                <input type="text" name="M_DETAIL_ADDR" id="M_DETAIL_ADDR" placeholder="" value="testsetset" maxlength="13" autocomplete="off" data-format-type="hp" class="dev-essential">
				                <div class="validation hidden" aria-hidden="true"></div>
			            </div>
				        </div>
				        
				        
				        <div class="picture dropped" style="">
				            
				                <div class="guide" style="display: none;">사진추가</div>
				                <a href="javascript:;" class="buttonAddFile" style="display: none;">
				                    사진등록
				                </a>
				                <div class="image">
				                    <input type="hidden" class="dev-optional dev-photo" data-privacy="사진" value="True">
				                    <img id="mbrImg" src="">
				                </div>
				                <button type="button" id="buttonChangePicture" class="button buttonChangePicture" aria-hidden="false"><span>사진변경</span></button>
				                <button type="button" id="buttonDeletePicture" class="button buttonDelete" aria-hidden="false">삭제</button>
				
				        </div>
				    </div>
				</div>
				
				<!-- 스킬 -->
				<div class="formWrap formWrapSkill" id="formSkill" style="display: block;">
				    <h2 class="header">스킬 </h2>
				    <div class="form">
				        <div class="colum dev-input-skill" style="">
				            <div id="skillAutoComplete" class="input input-search-wrap is-label" data-comp_type="jkAc">
				                <label id="skillSearch" for="skillText">찾으시는 스킬이 있나요?</label>
				                <input type="text" id="S_NAME" name="S_NAME" data-type="Skill_Name" data-comp_type="jkAcInput" autocomplete="off" maxlength="50">
				                <input type="hidden" data-type="Skill_Name">
				                <button type="button" class="button buttonDeleteField"><span>삭제</span></button>
				                <div id="skillSearchResult" class="autocomplete hidden" aria-hidden="true" data-comp_type="jkAcResultWrap">
				                    <div class="list"><ul></ul></div>
				                </div>
				            </div>
				        </div>
			            <button type="button" onclick="addField(this)"class="button buttonAddField" id="skill_addbutton" style="padding-top: 10px;margin-top: 15px;"><span>스킬 추가</span></button>
				    </div>
				</div>
				
				<!-- 학력 -->
				<div class="formWrap formWrapEducation" id="formEducation" style="">
		    <h2 class="header">학력</h2>
		    <div class="form formEducation">
		        <div class="colum" id="school_containers">
		    <div class="container container1" data-cid="c946" >
		        <div class="row">
		            <input type="hidden" name="UnivSchool.index" value="c946">
		            <input type="hidden" name="UnivSchool[c946].Index_Name" value="c946">
		            <div class="dropdown dropdown-education-category is-label ">
		                <div class="label hidden" aria-hidden="false">학교구분</div>
		                <button type="button" onclick="dropdown(this)" id="eduDropdwonBtn" class="button buttonChoose" aria-haspopup="true">
		                    <span>학교구분</span>
		                </button>
		               	<input type="hidden" id="AA_SCHOOL_DIVISION" name="AA_SCHOOL_DIVISION" value="" />
		                <div class="eduList list hidden" aria-hidden="true">
		                    <ul>
		                        <li><button type="button" class="button" data-schltypecode="0"><span>고등학교</span></button></li>
		                        <li><button type="button" class="button" data-schltypecode="1"><span>대학(2,3년)</span></button></li>
		                        <li><button type="button" class="button" data-schltypecode="2"><span>대학교(4년)</span></button></li>
		                        <li><button type="button" class="button" data-schltypecode="3"><span>대학원</span></button></li>
		                    </ul>
		                    <input type="hidden" name="UnivSchool[c946].Schl_Type_Code" id="UnivSchool_Schl_Type_Code_c946" value="2">
		                </div>
		            </div>
		            <div class="input input-education-name is-label is-ellipsis " id="UnivSchoolautoComplete_c946" data-comp_type="jkAc">
		                <label for="">학교명 <span class="star">*</span></label>
		                <input type="text" id="AA_SCHOOL_NAME" name="AA_SCHOOL_NAME" data-type="School_Name" data-comp_type="jkAcInput" value="" autocomplete="off" maxlength="50">
		                <div class="validation hidden" aria-hidden="true">학교명을 입력해주세요</div>
		                <div class="autocomplete hidden" aria-hidden="true" data-comp_type="jkAcResultWrap"></div>
		            </div>
		
		            <div class="input input-education-startdate is-label">
		                <label for="">입학년월 <span class="star">*</span></label>
		                <input type="text" name="AA_ENTRANCE_DATE" id="AA_ENTRANCE_DATE" data-format-type="month" value="" placeholder="2012.03">
		                <div class="validation hidden" aria-hidden="true"></div>
		            </div>
		            <div class="input input-education-enddate is-label">
		                <label for="">졸업년월 <span class="star">*</span></label>
		                <input type="text" name="AA_GRADUATION_DATE" id="AA_GRADUATION_DATE" data-format-type="month" value="" placeholder="2016.02">
		                <div class="validation hidden" aria-hidden="true"></div>
		            </div>
		            <div class="dropdown dropdown-edcation-state is-label">
		                <div id="eduStateLabel" class="label hidden" aria-hidden="true">졸업상태</div>
		                <button type="button" onclick="dropdown(this)" id="eduStateDropdwonBtn" class="button buttonChoose"><span><span>졸업상태 <span class="star">*</span></span></span></button>
		                <input type="hidden" id="AA_GRADUATION_CONDITION" name="AA_GRADUATION_CONDITION" value="" />
		                <div class="eduStateList list hidden">
		                    <ul>
		                        <li><button type="button" class="button" data-value="10"><span>졸업</span></button></li>
		                        <li><button type="button" class="button" data-value="5"><span>졸업예정</span></button></li>
		                        <li><button type="button" class="button" data-value="4"><span>재학중</span></button></li>
		                        <li><button type="button" class="button" data-value="2"><span>중퇴</span></button></li>
		                        <li><button type="button" class="button" data-value="9"><span>수료</span></button></li>
		                        <li><button type="button" class="button" data-value="3"><span>휴학</span></button></li>
		                    </ul>
		                </div>
		            </div>
		        </div>
		        
		        <div class="row">
		            <span class="devMainMajorTemplateArea">
				    <div class="input input-education-major-name search is-label" id="UnivMajorAutoComplete_1_0" data-comp_type="jkAc">
				        <label for="1">전공명 <span class="star">*</span></label>
				        <input type="text" id="AA_MAJOR_NAME" name="AA_MAJOR_NAME" data-type="Major_Name" data-comp_type="jkAcInput" value="" autocomplete="off" maxlength="50">
				        <div class="autocomplete hidden" aria-hidden="true" data-comp_type="jkAcResultWrap"></div>
				    </div>
				</span>
		            <div class="input input-education-grades is-label">
		                <label for="">학점</label>
		                <input type="text" name="AA_CREDIT" id="AA_CREDIT" value="" maxlength="4" data-format-type="score">
		                <div class="validation hidden" aria-hidden="true"></div>
		            </div>
						
					<div class="dropdown dropdown-edcation-degree is-label">
		                <div id="degreeLabel" class="label hidden" aria-hidden="false">학위</div>
		                <button type="button" id="" onclick="dropdown(this)" class="button buttonChoose"><span>학위</span></button>
	                    <input type="hidden" name="AA_DEGREE" id="AA_DEGREE" value="">
		                <div class="degreeList list hidden">
		                    <ul>
		                        <li><button type="button"  class="button" data-value="2"><span>석사</span></button></li>
		                        <li><button type="button"  class="button" data-value="3"><span>박사</span></button></li>
		                        <li><button type="button"  class="button" data-value="1"><span>석박사</span></button></li>
		                    </ul>
		                </div>
		            </div>
		            </div>
		
		        <button type="button" class="button buttonDeleteField"><span>삭제</span></button>
		    </div>
		</div>
		        <button type="button" onclick="addField(this)" class="button buttonAddField" id="school_addbutton"><span>학력 추가</span></button>
				
	    </div>
	</div>
				
				<!-- 경력 -->
				<div class="formWrap formWrapCareer" id="formCareer" style="">
      			  <h2 class="header">경력</h2>
      			  <div class="button-wrap">
        </div>

    <div class="form formCareer">

        <div id="career_containers" class="colum">
        <div class="container container1">
            <div class="row">
                <input type="hidden" name="Career.index" value="c5">
                <input type="hidden" name="Career[c5].Index_Name" value="c5">
                <div class="input input-career-name is-label" data-comp_type="jkAc">
                    <label for="">회사명 <span class="star">*</span></label>
                    <input type="text" id="C_CORPORATE_NAME" name="C_CORPORATE_NAME" data-comp_type="jkAcInput" data-type="Co_Name" value="" maxlength="50" autocomplete="off">
                    <div class="validation hidden" aria-hidden="true"></div>
                    <div class="autocomplete hidden" data-comp_type="jkAcResultWrap"></div>
                    
                    <input type="hidden" name="Career[c5].NHIS_LINKED_STAT" value="0">
                </div>
                <div class="input input-career-part is-label">
                    <label for="">부서명</label>
                    <div class="validation hidden" aria-hidden="true"></div>
                    <input type="text" name="C_DEPARTMENT_NAME" id="C_DEPARTMENT_NAME" value="" maxlength="25">
                </div>
                <div class="input input-career-joindate is-label ">
                    <label for="">입사년월 <span class="star">*</span></label>
                    <input type="text" name="C_JOINING_DATE" id="C_JOINING_DATE" value="" data-format-type="month" placeholder="2016.03">
                    <div class="validation hidden" aria-hidden="true"></div>
                </div>
                <div class="input input-career-leavedate is-label">
                    <label for="">퇴사년월 <span class="star">*</span></label>
                    <input type="text" name="C_RETIREMENT_DATE" id="C_RETIREMENT_DATE" value="" data-format-type="month" class="devCareerCEYM" placeholder="2016.06">
                    <div class="validation hidden" aria-hidden="true"></div>
                </div>
                <div class="is-inoffice">
                    <div id="careerChkBox" class="checkbox checkbox-inoffice ">
                        <input type="checkbox" data-checked-value="3" data-non-checked-value="1" class="employStatusChkBox">
                        <label for="">재직중</label>
                        <input type="hidden" id="C_EMPLOYMENT_STATUS" name="C_EMPLOYMENT_STATUS" value="N">
                    </div>
                </div>
            </div>
            <div class="row">
	           <div class="input input-career-name is-label" data-comp_type="jkAc">
	                   <label for="">직급 <span class="star">*</span></label>
	                   <input type="text" id="C_POSITION" NAME="C_POSITION" data-comp_type="jkAcInput" data-type="Co_Name" value="" maxlength="50" autocomplete="off">
	                   <div class="validation hidden" aria-hidden="true"></div>
	                   <div class="autocomplete hidden" data-comp_type="jkAcResultWrap"></div>
	                   
            	</div>
                <div class="input input-career-duty is-label">
                    <label for="">담당직무 <span class="star">*</span></label>
                   <input type="text" id="C_DUTY" NAME="C_DUTY" data-comp_type="jkAcInput" data-type="Co_Name" value="" maxlength="50" autocomplete="off"> 
                </div>
            </div>
            <button type="button" class="button buttonDeleteField"><span>경력 삭제</span></button>
        </div>
    </div>
        <button type="button" onclick="addField(this)" class="button buttonAddField"><span>경력 추가</span></button>
    </div>
</div>
<!-- 경력END -->

<!-- 대외활동/인턴/교육 -->
<div class="formWrap formWrapIntern" id="formIntern" style="">
    <h2 class="header">인턴·대외활동·교육</h2>
    <div class="form formIntern">
        <div id="social_containers" class="colum">
        <div class="container container1">
            <input type="hidden" name="Social.Index" value="1_1701246692619">
            <input type="hidden" name="Social[1_1701246692619].Index_Name" value="1_1701246692619">

            <div class="row">
                <div class="dropdown dropdown-intern-category is-label ">
                <input type="hidden" name="IIAE_SECTION" id="IIAE_SECTION" value="1">
                    <div class="label hidden" aria-hidden="false">활동구분</div>
                    <button type="button" onclick="dropdown(this)" class="button buttonChoose"><span>활동구분</span></button>
                    <div class="list hidden">
                        <ul>
                            <li><button type="button" class="button" value="1"><span>인턴</span></button></li>
                            <li><button type="button" class="button" value="2"><span>대외활동</span></button></li>
                            <li><button type="button" class="button" value="3"><span>교육</span></button></li>
                        </ul>
                    </div>
                </div>
                <div class="input input-intern-name is-label ">
                    <label for="">회사/기관/단체명/교육명 <span class="star">*</span></label>
                    <input type="text" name="IIAE_INSTITUTION_NAME" id="IIAE_INSTITUTION_NAME" value="" maxlength="50">
                    <div class="validation hidden" aria-hidden="true"></div>
                </div>
                <div class="input input-intern-startdate is-label ">
                    <label for="">시작년월</label>
                    <input type="text" name="IIAE_START_DATE" id="IIAE_START_DATE" value="" data-format-type="month" placeholder="2016.03">
                    <div class="validation hidden" aria-hidden="true"></div>
                </div>
                <div class="input input-intern-enddate is-label ">
                    <label for="">종료년월</label>
                    <input type="text" name="IIAE_END_DATE" id="IIAE_END_DATE" value="" data-format-type="month" placeholder="2016.06">
                    <div class="validation hidden" aria-hidden="true"></div>
                </div>
            </div>
            <div class="row">
                <div class="textarea is-label ">
                    <label for="">활동내용</label>
                    <textarea name="IIAE_CONTENT" cols="30" rows="10" id="IIAE_CONTENT" placeholder="직무와 관련된 경험에 대해 (상황 - 노력 - 결과)순으로 작성하는것이 좋습니다."></textarea>
                </div>
            </div>

            <button type="button" class="button buttonDeleteField dev-btn-del-social"><span>인턴·대외활동·교육 삭제</span></button>

        </div>
    </div>
        <button type="button" onclick="addField(this)" class="button buttonAddField"><span>인턴·대외활동·교육 추가</span></button>
    </div>

</div>
<!-- 대외활동/인턴/교육END -->
<!-- 자격증 -->
<div class="formWrap formWrapCertificate" id="formLicense" style="">
        <h2 class="header">자격증</h2>
        
        <button type="button" class="button buttonIsOExperience is-event is-popup-visible" data-target=".naver-certification">
            
        </button>
    <div class="form formCertificate">
        <div id="license_containers" class="colum">
    <div class="container container1" data-cid="c12">
        <div class="row">
            <div class="input input-certificate-name is-label " data-comp_type="jkAc">
                <label for="">자격증 명 <span class="star">*</span></label>
                <input type="text" id="CER_NAME" name="CER_NAME" data-type="Lc_Name" value="" data-comp_type="jkAcInput" maxlength="50">
            </div>
            <div class="input input-certificate-agency is-label ">
                <label for="License_Lc_Pub_c12">발행처</label>
                <input type="text" name="CER_ISSUING_ORGANIZATION" id="CER_ISSUING_ORGANIZATION" value="" data-type="Lc_Pub" maxlength="50">
                <div class="validation hidden" aria-hidden="true"></div>
            </div>
            <div class="input input-certificate-term is-label ">
                <label for="License_Lc_YYMM_c12">취득월</label>
                <input type="text" name="CER_ACQUISITION_DATE" id="CER_ACQUISITION_DATE" value="" data-format-type="month" placeholder="2017.10">
                <div class="validation hidden" aria-hidden="true"></div>
            </div>
            
        </div>
        <button type="button" class="button buttonDeleteField dev-btn-del-license"><span>자격증 삭제</span></button>
    </div>
</div>

        <button type="button" onclick="addField(this)" class="button buttonAddField"><span>자격증 추가</span></button>
    </div>
</div>
<!-- 자격증END -->	
<!-- 수상 -->
<div class="formWrap formWrapAwards" id="formAward" style="">
    <h2 class="header">수상</h2>
    <div class="form formAwards">
        <div id="award_containers" class="colum">
        <div class="container container1" data-cid="c14">
            <div class="row">
                <div class="input input-awards-name is-label ">
                    <label for="">수상명 <span class="star">*</span></label>
                    <input type="text" name="A_NAME" id="A_NAME" value="" maxlength="50">
                    <div class="validation hidden" aria-hidden="true"></div>
                </div>
                <div class="input input-awards-agency is-label ">
                    <label for="">수여기관</label>
                    <input type="text" name="A_INSTITUTION" id="A_INSTITUTION" value="" maxlength="50">
                    <div class="validation hidden" aria-hidden="true"></div>
                </div>
                <div class="input input-awards-year is-label ">
                    <label for="">수상연도</label>
                    <input type="text" name="A_DATE" id="A_DATE" value="" maxlength="4" data-format-type="year" placeholder="2016">
                    <div class="validation hidden" aria-hidden="true"></div>
                </div>
            </div>
            <div class="textarea is-label ">
                <label for="">수여내용</label>
                <textarea name="A_CONTENT" cols="30" rows="10" id="A_CONTENT" placeholder="수여 내용 및 결과를 자세히 입력해주세요."></textarea>
            </div>
           
            <button type="button" class="button buttonDeleteField dev-btn-del-award"><span>수상 삭제</span></button>
        </div>
    </div>
        <button type="button" onclick="addField(this)" class="button buttonAddField"><span>수상 추가</span></button>
    </div>
</div>				
<!-- 수상END -->	
<!-- 어학 -->
<div class="formWrap formWrapLanguage" id="formLanguage" style="">
    <h2 class="header">어학</h2>
    <div class="form formLanguage">
        <div id="language_containers" class="colum">
    <div class="container container1">

        <div class="row">
            <div class="dropdown dropdown-category is-label">
                <div class="label hidden" aria-hidden="true"><span><span>구분 <span class="star">*</span></span></span></div>
                <button type="button" onclick="dropdown(this)" class="button buttonChoose"><span><span>구분 <span class="star">*</span></span></span></button>
                <input type="hidden" id="L_TYPE" value="" name="L_TYPE">
                <div class="list hidden">
                    <ul>
                        <li><button type="button" class="button" data-value="1"><span>회화능력</span></button></li>
                        <li><button type="button" class="button" data-value="2"><span>공인시험</span></button></li>
                    </ul>
                </div>
            </div>

            <div class="dropdown dropdown-language-name is-label devLanguageDropdown">
                <div class="label hidden" aria-hidden="true"><span><span>외국어명 <span class="star">*</span></span></span></div>
                <button type="button" onclick="dropdown(this)" class="button buttonChoose"><span><span>외국어명 <span class="star">*</span></span></span></button>
                <input type="hidden" name="L_NAME" value="" id="L_NAME">
                <div class="validation hidden" aria-hidden="true"></div>
                <div class="list hidden is-scroll">
                    <ul>
                            <li><button type="button" class="button" data-value="16" value="영어"><span>영어</span></button></li>
                            <li><button type="button" class="button" data-value="20"><span>일본어</span></button></li>
                            <li><button type="button" class="button" data-value="21"><span>중국어</span></button></li>
                            <li><button type="button" class="button" data-value="4"><span>독일어</span></button></li>
                            <li><button type="button" class="button" data-value="27"><span>프랑스어</span></button></li>
                            <li><button type="button" class="button" data-value="13"><span>스페인어</span></button></li>
                            <li><button type="button" class="button" data-value="5"><span>러시아어</span></button></li>
                            <li><button type="button" class="button" data-value="19"><span>이탈리아어</span></button></li>
                            <li><button type="button" class="button" data-value="15"><span>아랍어</span></button></li>
                            <li><button type="button" class="button" data-value="23"><span>태국어</span></button></li>
                            <li><button type="button" class="button" data-value="7"><span>마인어</span></button></li>
                            <li><button type="button" class="button" data-value="1"><span>그리스어</span></button></li>
                            <li><button type="button" class="button" data-value="25"><span>포르투갈어</span></button></li>
                            <li><button type="button" class="button" data-value="10"><span>베트남어</span></button></li>
                            <li><button type="button" class="button" data-value="2"><span>네덜란드어</span></button></li>
                            <li><button type="button" class="button" data-value="30"><span>힌디어</span></button></li>
                            <li><button type="button" class="button" data-value="3"><span>노르웨이어</span></button></li>
                            <li><button type="button" class="button" data-value="17"><span>유고어</span></button></li>
                            <li><button type="button" class="button" data-value="29"><span>히브리어</span></button></li>
                            <li><button type="button" class="button" data-value="18"><span>이란(페르시아어)</span></button></li>
                            <li><button type="button" class="button" data-value="24"><span>터키어</span></button></li>
                            <li><button type="button" class="button" data-value="22"><span>체코어</span></button></li>
                            <li><button type="button" class="button" data-value="6"><span>루마니아어</span></button></li>
                            <li><button type="button" class="button" data-value="8"><span>몽골어</span></button></li>
                            <li><button type="button" class="button" data-value="12"><span>스웨덴어</span></button></li>
                            <li><button type="button" class="button" data-value="28"><span>헝가리어</span></button></li>
                            <li><button type="button" class="button" data-value="26"><span>폴란드어</span></button></li>
                            <li><button type="button" class="button" data-value="9"><span>미얀마어</span></button></li>
                            <li><button type="button" class="button" data-value="14"><span>슬로바키아어</span></button></li>
                            <li><button type="button" class="button" data-value="11"><span>세르비아어</span></button></li>
                            <li><button type="button" class="button" data-value="32"><span>한국어</span></button></li>
                    </ul>
                </div>

            </div>
            <span class="devConversationArea">
                <div class="dropdown dropdown-language-grade is-label">
                    <div class="label hidden" aria-hidden="true"><span><span>회화능력 <span class="star">*</span></span></span></div>
                    <button type="button" onclick="dropdown(this)" class="button buttonChoose"><span><span>회화능력 <span class="star">*</span></span></span></button>
                    <input type="hidden" name="L_ABILITY" id="L_ABILITY" value="">
                    <div class="list hidden">
                        <ul>
                            <li><button type="button" class="button" data-value="1"><span>일상회화 가능</span></button></li>
                            <li><button type="button" class="button" data-value="2"><span>비즈니스 회화가능</span></button></li>
                            <li><button type="button" class="button" data-value="3"><span>원어민 수준</span></button></li>
                        </ul>
                    </div>
                </div>
            </span>

            <span class="devExamArea" style="display:none;">

                <div class="input input-language is-label devExamInput">
                    <label for="L_TEST_NAME">시험명 <span class="star">*</span></label>
                    <input type="text" name="L_TEST_NAME" id="L_TEST_NAME" value="" maxlength="25">
                </div>

                <!--점수/급수 input-->
                <div class="input input-grade is-label devExamGradeInput">
                    <label for="L_SCORE">급수/점수 <span class="star">*</span></label>
                    <input type="text" name="L_SCORE" id="L_SCORE" maxlength="3" value="" data-format-type="score">
                </div>
                <!--취득년월-->
                <div class="input input-passdate is-label">
                    <label for="L_ACQUISITION_DATE">취득년월</label>
                    <input type="text" name="L_ACQUISITION_DATE" id="L_ACQUISITION_DATE" placeholder="2016.03" data-format-type="month" value="">
                    <div class="validation hidden" aria-hidden="true"></div>
                </div>
            </span>

            
        </div>
        <button type="button" class="button buttonDeleteField"><span>삭제</span></button>
    </div>
</div>
        <button type="button" onclick="addField(this)" class="button buttonAddField"><span>어학 추가</span></button>
    </div>
</div>	
<!-- 어학END -->	
<!-- 포폴 -->
	<div class="formWrap formWrapPortfolio" id="formPortfolio" style="">
       <h2 class="header">포트폴리오</h2>
    <div class="form formPortfolio">
        <div id="portfolio_containers" class="colum">
    <div class="container container1" data-cid="c12">
        <div class="row">
            <div class="input" data-comp_type="jkAc">
                <label for="">URL</label>
                <input type="text" disabled="disabled" data-type="Lc_Name" value="" data-comp_type="jkAcInput" maxlength="50">
            </div>
            <div class="input " style="width:60%; margin-left:-10px">
                <input type="text" name="P_URL" id="P_URL" value="" data-type="Lc_Pub" maxlength="50">
                <div class="validation hidden" aria-hidden="true"></div>
            </div>
            
        </div>
        <button type="button" class="button buttonDeleteField dev-btn-del-license" style="z-index:9999"><span>포트폴리오 삭제</span></button>
    </div>
</div>

        <button type="button" onclick="addField(this)" class="button buttonAddField" ><span>포트폴리오 추가</span></button>
    </div>
</div>
<!-- 포폴END -->
				
<!-- 자기소개서 -->
<div class="formWrap formWrapIntroduction" id="formIntroduction" style="">
        <h2 class="header">자기소개서</h2>
    <div class="form formIntroduction">
        <div id="introduceContainers" class="colum">
    <div class="row">
        <div class="container">
            <input type="hidden" name="ResumeProfile.Index" value="c938">
            
            <div class="input">
                <label for="ResumeProfile_Header_c938" class="skip">제목</label>
                <input type="text" name="CL_TITLE" id="CL_TITLE" placeholder="항목 제목을 입력하세요." value="" maxlength="50">
            </div>
            <label for="" class="skip">내용</label>
            <div class="textarea textarea-introduction is-value">
                <div class="backdrop">
                    <div class="highlights"></div>
                </div>
                <div class="clickable"></div>
                <textarea name="CL_CONTENT" id="CL_CONTENT" cols="30" rows="10" placeholder="해당내용을 입력하세요." class="spellcheck"></textarea>
            </div>
        </div>
        <button type="button" class="button buttonDeleteField" style="z-index:9999"><span>자기소개서 삭제</span></button>
    </div>
</div>
        <button type="button" onclick="addField(this)" class="button buttonAddField"><span>추가</span></button>
    </div>

</div>
				<!-- 자기소개서END -->
				<!-- sidebar -->
				<div class="fixedMenu media-size-small fixed" id="FixedMenuView">
    <div class="container">
        <h2 class="header">이력서 항목</h2>
        <ul class="list fixedMenuButtons">
            <li>
            	<div style="font-size:large">이력서 항목</div>
            </li>
            <li>
                <a href="javascript:void(0)" class="button buttonSkill selected"><span>스킬</span></a>
                <button type="button" id="skillFieldBtn" class="button button-field button-field-remove" data-linked_form_id="formSkill" data-sync_id="InputStat_SkillInputStat">필드삭제</button>
            </li>
            <li>
                <a href="javascript:void(0)" class="button buttonEducation selected"><span>학력</span></a>
                <button type="button" id="eduFieldBtn" class="button button-field button-field-remove" data-linked_form_id="formEducation" data-sync_id="InputStat_SchoolInputStat">필드삭제</button>
            </li>
            <li>
                <a href="javascript:void(0)" class="button buttonCareer selected"><span>경력</span></a>
                <button type="button" id="careerFieldBtn" class="button button-field button-field-remove" data-linked_form_id="formCareer" data-sync_id="InputStat_CareerInputStat">필드추가</button>
            </li>
            <li>
                <a href="javascript:void(0)" class="button buttonIntern selected"><span>인턴·대외활동·교육</span></a>
                <button type="button" id="iiaeFieldBtn" class="button button-field button-field-remove" data-linked_form_id="formIntern" data-sync_id="InputStat_SocialInputStat">필드삭제</button>
            </li>
            <li>
                <a href="javascript:void(0)" class="button buttonCertificate selected"><span>자격증</span></a>
                <button type="button" id="cerFieldBtn" class="button button-field button-field-remove" data-linked_form_id="formLicense" data-sync_id="InputStat_LicenseInputStat">필드추가</button>
            </li>
            <li>
                <a href="javascript:void(0)" class="button buttonAward selected"><span>수상</span></a>
                <button type="button" id="awardFieldBtn" class="button button-field button-field-remove" data-linked_form_id="formAward" data-sync_id="InputStat_AwardInputStat">필드추가</button>
            </li>
            <li>
                <a href="javascript:void(0)" class="button buttonLanguage selected"><span>어학</span></a>
                <button type="button" id="langFieldBtn" class="button button-field button-field-remove" data-linked_form_id="formLanguage" data-sync_id="InputStat_LanguageInputStat">필드추가</button>
            </li>
            <li>
                <a href="javascript:void(0)" class="button buttonPortfolio selected"><span>포트폴리오</span></a>
                <button type="button" id="portfolioFieldBtn" class="button button-field button-field-remove" data-linked_form_id="formPortfolio" data-sync_id="InputStat_PortfolioInputStat">필드추가</button>
            </li>
            <li>
                <a href="javascript:void(0)" class="button buttonIntroduction selected"><span>자기소개서</span></a>
                <button type="button" id="coverletterFieldBtn" class="button button-field button-field-remove" data-linked_form_id="formIntroduction" data-sync_id="InputStat_UserIntroduceInputStat">필드추가</button>
            </li>
        </ul>
    </div>

        <div class="buttons">
            <button type="button" class="button buttonPreview"><span>미리보기</span></button>
            
        </div>

    <button type="button" class="button buttonComplete"><span>이력서저장</span></button>
    <div class="notifacation">저장 되었습니다.</div>

    <div class="save-time"></div>
</div>
<!-- sidebar END -->
            </div>
        </div>
    </form>
 </div>
</body>
</html>