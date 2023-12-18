<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="http://192.168.10.133/mvc_prj/common/main/favicon.png">

<style type="text/css">
.dropdown {
	  width: 300px !important;
}
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
    <script src="https://teralog.techhub.co.kr/trk?la_tp=pv&amp;la_gc=TR10148105490&amp;la_uid=&amp;la_fid=261fc0dc98663dc7e246c5a4a307aa1f&amp;la_sid=&amp;la_infl=&amp;la_pa1=&amp;la_pa2=&amp;la_dccs=UTF-8&amp;la_r=1284571527&amp;la_crsd_gc=&amp;la_sv=59647be&amp;la_dcrf=&amp;la_dcurl=http%3A%2F%2Flocalhost%2Fmvc_prj%2Fprj_trycatchjop%2Fregist_recruitment.jsp&amp;la_dcttl=Insert%20title%20here&amp;la_ib=&amp;la_is=&amp;la_callback=_LA.CB"></script><script src="https://teralog.techhub.co.kr/ckie"></script><script src="https://teralog.techhub.co.kr/trk?la_tp=pv&amp;la_gc=TR10148105490&amp;la_uid=&amp;la_fid=261fc0dc98663dc7e246c5a4a307aa1f&amp;la_sid=&amp;la_infl=&amp;la_pa1=&amp;la_pa2=&amp;la_dccs=UTF-8&amp;la_r=1083633011&amp;la_crsd_gc=&amp;la_sv=59647be&amp;la_dcrf=&amp;la_dcurl=http%3A%2F%2Flocalhost%2Fmvc_prj%2Fprj_trycatchjop%2Fregist_recruitment.jsp&amp;la_dcttl=Insert%20title%20here&amp;la_ib=&amp;la_is=&amp;la_callback=_LA.CB"></script><script src="https://teralog.techhub.co.kr/ckie"></script><script src="https://teralog.techhub.co.kr/trk?la_tp=pv&amp;la_gc=TR10148105490&amp;la_uid=&amp;la_fid=261fc0dc98663dc7e246c5a4a307aa1f&amp;la_sid=&amp;la_infl=&amp;la_pa1=&amp;la_pa2=&amp;la_dccs=UTF-8&amp;la_r=1442209917&amp;la_crsd_gc=&amp;la_sv=59647be&amp;la_dcrf=&amp;la_dcurl=http%3A%2F%2Flocalhost%2Fmvc_prj%2Fprj_trycatchjop%2Fregist_recruitment.jsp&amp;la_dcttl=Insert%20title%20here&amp;la_ib=&amp;la_is=&amp;la_callback=_LA.CB"></script><script src="https://teralog.techhub.co.kr/ckie"></script><script src="https://teralog.techhub.co.kr/trk?la_tp=pv&amp;la_gc=TR10148105490&amp;la_uid=&amp;la_fid=261fc0dc98663dc7e246c5a4a307aa1f&amp;la_sid=&amp;la_infl=&amp;la_pa1=&amp;la_pa2=&amp;la_dccs=UTF-8&amp;la_r=1516524880&amp;la_crsd_gc=&amp;la_sv=59647be&amp;la_dcrf=&amp;la_dcurl=http%3A%2F%2Flocalhost%2Fmvc_prj%2Fprj_trycatchjop%2Fregist_recruitment.jsp&amp;la_dcttl=Insert%20title%20here&amp;la_ib=&amp;la_is=&amp;la_callback=_LA.CB"></script><script src="https://teralog.techhub.co.kr/ckie"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-H72LM07GXG&amp;cx=c&amp;_slc=1"></script>
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
    
    .form .remove span:before {
	background-position : 0 -277px ;	
}

</style>
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN -->
<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- include summernote css/js-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
<!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="/common/summernote/summernote-lite.js"></script>
  <script src="/common/summernote/summernote/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="/common/summernote/summernote/summernote-lite.css">
  <!--  -->
<script type="text/javascript">
$(function(){
	//summernote
	$('#summernote').summernote({
		  height: 200,                 // set editor height
		  width : 900,
		  minHeight: null,             // set minimum height of editor
		  maxHeight: null,             // set maximum height of editor
		});
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
			$(this).removeClass("error")
			$(this).removeClass("focus")
			$(this).find("textarea").removeClass("is-expanded")
			return;
		}
		if( $(this).find("input[type='text']").val() == "" ){
			$(this).removeClass("focus");
			$(this).removeClass("is-value");
			$(this).removeClass("error");
		} else {
			$(this).removeClass("focus");
			$(this).addClass("is-value");
			$(this).removeClass("error");
		}
	})//on
	
	
	//채용등록
	$(".buttonComplete").click(function(){
		var nextFlag = true;		
		//유효성검사
		//채용 제목
		if($("#R_TITLE").val() == ""){
			alert("채용제목을 입력해주세요.");
			return;
		}
		//직무선택
		if( !$(".dropdown-duty-category").hasClass("selected") ){
			alert("직무를 선택해주세요.");
			return;
		}
		//산업선택
		if( !$(".dropdown-industry-category").hasClass("selected") ){
			alert("산업을 선택해주세요.");
			return;
		}
		//경력
		if( !$(".dropdown-career-category").hasClass("selected") ){
			alert("경력을 선택해주세요.");
			return;
		}
		//학력
		if( !$(".dropdown-edu-category").hasClass("selected") ){
			alert("학력을 선택해주세요.");
			nextFlag = false;
			return;
		}
		//스킬
		if( nextFlag ){
			$(".skillName").each(function(){
				if( $(this).val() == "" ){
					alert("스킬을 입력해주세요.");
					nextFlag = false
					return nextFlag;
				} 
			})
		}
			
		//고용형태
		if( nextFlag ){
			if( !$(".dropdown-empType-category").hasClass("selected") ){
				alert("고용형태를 선택해주세요.");
				return;
			}
		}
		//근무지역
		if( nextFlag ){
			
			if( !$(".dropdown-workArea-category").hasClass("selected") ){
				alert("근무지역을 선택해주세요.");
				return;
			}
		}
		//급여
		if( nextFlag){
			if( $("#R_SAL").val() == "" ){
				alert("급여를 입력해주세요.");
				return;
			}
		}
		//근무시간
		if( nextFlag){
		if( $("#R_TIME").val() == "" ){
			alert("근무시간을 입력해주세요.");
			return;
		}
		}
		//모집인원
		if( nextFlag){
		$(".R_RECRUITMENT_VOLUME").each(function(){
			if( $(this).val() == "" ){
				alert("모집인원을 입력해주세요.");
				nextFlag = false;
				return nextFlag;
			} 
		})
		}
		
		//모집분야
		if( nextFlag ){
			$(".RF_FIELD").each(function(){
				if( $(this).val() == "" ){
					alert("모집분야를 입력해주세요.");
					nextFlag = false;
					return nextFlag;
				} 
			})
		}
		//상세요강
		if( nextFlag ){
			if( $("#summernote").val() == "" ){
				alert("상세요강을 입력해주세요.");
				return;
			}
		}
		
		//시작일 - 마감일 검사
		var datePattern = /^\d{4}-\d{2}-\d{2}$/;
		var starDate = $("#R_START_DATE").val();
		var endDate = $("#R_END_DATE").val();
		if( nextFlag ){
			if( !datePattern.test(starDate)){
				alert("시작일을 확인해주세요 ( 2023-01-01 )");
				return;
			}
			if( !datePattern.test(endDate)){
				alert("마감일을 확인해주세요 ( 2023-01-01 )");
				return;
			}
		}
		
		//채용 등록
		if( nextFlag ){
			if ( confirm("채용을 등록 하시겠습니까?") ){
				$("#registRecruitFrm").submit();
			}
		}
	})//click
	
	$(document).on("click", ".buttonDeleteField", function(){
		var target = $(this).closest(".formWrap").find(".header").text().trim();
		//스킬
		if( target == "스킬"){
			removeField(skillFieldCnt, $(this), ".buttonSkill", "#skillFieldBtn")
			skillFieldCnt--
		}//end if
		
	})//on
	
})//ready
function removeField(fieldCnt, object, btn, fieldBtn){
	if( fieldCnt <= 1 ){
		object.closest(".formWrap").hide();
		$(btn).removeClass("selected")
		$(fieldBtn).removeClass("button-field-remove")
	} else {
		object.closest(".colum").remove();
	}
}

function dropdown(button){
	var dropdown = $(button).closest(".dropdown");
	var list = dropdown.find(".list");
	
	dropdown.toggleClass("expande");
	list.toggleClass("visible hidden");
	
	list.find("button").click(function(){
		var target = $(this).find("span").text();
		var target_id = $(this).val();
		$(button).find("span").text(target);
		$(button).prev(".label").removeClass("hidden");
		
		dropdown.removeClass("expande")
		list.removeClass("visible")
		list.addClass("hidden")
		
		dropdown.addClass("selected");
		dropdown.find("[type='hidden']").val(target_id);
		
		
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

function addField( button ){
	var inputTarget = $(button).prev(".input");
	var inputClone = inputTarget.clone();
	var buttonClone = $(button).clone();
	
	
	inputClone.find("input").val("");
	
	buttonClone.attr("onclick", "removeField(this)");
	buttonClone.find("span").text("제거")
	buttonClone.addClass("remove");	
	
	
	inputTarget.after(inputClone);
	inputTarget.after(buttonClone);
		
}//addField

function removeField( button ){
	$(button).prev(".input").remove();
	$(button).remove();
}
</script>


</head>
<body class="resume resume-write" style="" cz-shortcut-listen="true">
<div class="resumePage">
    <div class="resumeHeader">
        <div class="container">
            <a href="https://www.jobkorea.co.kr/" class="logo linkLogo"><img src="https://i.jobkorea.kr/content/images/text_user/resume/logo-jobkorea.png?20230704" alt="JOBKOREA"></a>
            <div class="links">
                <a href="http://localhost/prj_tryJobCatch/company/coMyPageHome.do" class="link linkHome">기업회원 홈</a>
                <a href="http://localhost/prj_tryJobCatch/company/coMyPageHome.do" class="link linkManage">채용 관리</a>
            </div>
        </div>
    </div>
    <form action="http://localhost/prj_tryJobCatch/company/registRecruitment.do" method="post" id="registRecruitFrm">
    	<div class="resumeWrapper">
            <div class="resumeContainer">
            <input type="hidden" name="R_ID" value="${ not empty recruitDetail.r_ID?  recruitDetail.r_ID : ''}" />
            	<!-- 이력서 제목 -->
            	<div class="resumeTitle">
                    <input id="R_TITLE" maxlength="100" name="R_TITLE" placeholder="기업에게 나에 대해 알려줍시다. 강점, 목표, 관심분야도 좋아요." type="text" value="${not empty recruitDetail? recruitDetail.r_TITLE : '' }">
                </div>
                
                <!-- 직무 산업 -->
                <div class="formWrap formWrapSkill" id="formSkill" style="display: block;">
				    <h2 class="header">직무, 산업</h2>
				    <div class="form">
				    <c:choose>
				    	<c:when test="${ not empty recruitDetail}">
				    		 <div class="dropdown dropdown-duty-category is-label selected" style="width:300px">
											<input type="hidden" name="D_ID" id="duty" value="${recruitDetail.d_ID }">
											<div class="label " aria-hidden="false">직무선택</div>
											<button type="button" onclick="dropdown(this)" class="button buttonChoose">
												<span><c:out value="${ recruitDetail.d_NAME }" /></span>
											</button>
											<div class="list hidden">
												<ul>
													<c:forEach var="item" items="${ dutyList }">
													<li><button type="button" class="button" value="${item.d_ID }">
															<span>${item.d_NAME }</span>
														</button></li>
													</c:forEach>
													
													
												</ul>
											</div>
										</div>
				    	</c:when>
				    	<c:otherwise>
				        <div class="dropdown dropdown-duty-category is-label" style="width:300px">
											<input type="hidden" name="D_ID" id="duty" value="">
											<div class="label hidden" aria-hidden="false">직무선택</div>
											<button type="button" onclick="dropdown(this)" class="button buttonChoose">
												<span>직무선택</span>
											</button>
											<div class="list hidden">
												<ul>
													<c:forEach var="item" items="${ dutyList }">
													<li><button type="button" class="button" value="${item.d_ID }">
															<span>${item.d_NAME }</span>
														</button></li>
													</c:forEach>
													
													
												</ul>
											</div>
										</div>
				    	</c:otherwise>
				    </c:choose>
				    <c:choose>
				    	<c:when test="${ not empty recruitDetail}">
				    	<div class="dropdown dropdown-industry-category is-label selected" style="width:300px">
											<input type="hidden" name="IND_ID" id="industry" value="${ recruitDetail.IND_ID }">
											<div class="label " aria-hidden="false">산업선택</div>
											<button type="button" onclick="dropdown(this)" class="button buttonChoose">
												<span><c:out value="${ recruitDetail.IND_NAME }" /></span>
											</button>
											<div class="list hidden">
												<ul>
													<c:forEach var="item" items="${ industryList }">
													<li><button type="button" class="button" value="${item.IND_ID }">
															<span>${item.IND_NAME }</span>
														</button></li>
													</c:forEach>
												</ul>
											</div>
										</div>
				    	</c:when>
				    	<c:otherwise>
            				<div class="dropdown dropdown-industry-category is-label" style="width:300px">
											<input type="hidden" name="IND_ID" id="industry" value="">
											<div class="label hidden" aria-hidden="false">산업선택</div>
											<button type="button" onclick="dropdown(this)" class="button buttonChoose">
												<span>산업선택</span>
											</button>
											<div class="list hidden">
												<ul>
													<c:forEach var="item" items="${ industryList }">
													<li><button type="button" class="button" value="${item.IND_ID }">
															<span>${item.IND_NAME }</span>
														</button></li>
													</c:forEach>
												</ul>
											</div>
										</div>
				    	</c:otherwise>
				    </c:choose>
				        
				        
				        
				    </div>
				    
				</div>
                
				
				<!--지원자격-->
				
				
				<div class="formWrap formWrapSkill" id="formSkill" style="display: block;">
				    <h2 class="header">지원자격</h2>
				    <div class="form">
				    <div class="colum dev-input-skill" style="">
				    
				    <c:choose>
				    <c:when test="${ not empty recruitDetail}">
				    <div class="dropdown dropdown-career-category is-label selected">
											<input type="hidden" name="REC_ID" id="career" value="${ recruitDetail.REC_ID }">
											<div class="label " aria-hidden="false">경력선택</div>
											<button type="button" onclick="dropdown(this)" class="button buttonChoose">
												<span>${ recruitDetail.REC_NAME }</span>
											</button>
											<div class="list hidden">
												<ul>
												
													<c:forEach var="item" items="${ careerList }">
													<li><button type="button" class="button" value="${item.REC_ID }">
															<span>${item.REC_NAME }</span>
														</button></li>
													</c:forEach>
												</ul>
											</div>
										</div>
				    	</c:when>
				    	<c:otherwise>
					<div class="dropdown dropdown-career-category is-label">
												<input type="hidden" name="REC_ID" id="career" value="">
												<div class="label hidden" aria-hidden="false">경력선택</div>
												<button type="button" onclick="dropdown(this)" class="button buttonChoose">
													<span>경력선택</span>
												</button>
												<div class="list hidden">
													<ul>
													
														<c:forEach var="item" items="${ careerList }">
														<li><button type="button" class="button" value="${item.REC_ID }">
																<span>${item.REC_NAME }</span>
															</button></li>
														</c:forEach>
													</ul>
												</div>
											</div>
				    	
				    	</c:otherwise>
				    </c:choose>
				    
				        </div>
				        
				          <div class="colum dev-input-skill" style="">
				          
				          <c:choose>
				    		<c:when test="${ not empty recruitDetail}">
				    		<div class="dropdown dropdown-edu-category is-label selected">
											<input type="hidden" name="E_ID" id="edu" value="${recruitDetail.e_ID}">
											<div class="label " aria-hidden="false">학력선택</div>
											<button type="button" onclick="dropdown(this)" class="button buttonChoose">
												<span>${recruitDetail.EDUCATION}</span>
											</button>
											<div class="list hidden">
												<ul>
													<c:forEach var="item" items="${ educationList }">
													<li><button type="button" class="button" value="${item.e_ID }">
															<span>${ item.EDUCATION }</span>
														</button></li>
													</c:forEach>
												</ul>
											</div>
										</div>
				    		</c:when>
				    	<c:otherwise>
            				<div class="dropdown dropdown-edu-category is-label">
											<input type="hidden" name="E_ID" id="edu" value="">
											<div class="label hidden" aria-hidden="false">학력선택</div>
											<button type="button" onclick="dropdown(this)" class="button buttonChoose">
												<span>학력선택</span>
											</button>
											<div class="list hidden">
												<ul>
													<c:forEach var="item" items="${ educationList }">
													<li><button type="button" class="button" value="${item.e_ID }">
															<span>${ item.EDUCATION }</span>
														</button></li>
													</c:forEach>
												</ul>
											</div>
										</div>
				    	</c:otherwise>
				   		 </c:choose>
										 </div>
            <div class="colum dev-input-skill" style="border-top: 1px solid #ddd;">
            				<c:choose>
						    <c:when test="${ not empty recruitDetail.RS_NAME}">
						    <input type="hidden" name="skillDeleteCnt" value="${recruitDetail.RS_NAME.size()}">
						    <c:forEach var="item" items="${ recruitDetail.RS_NAME}" varStatus="i">
						  
						    <div id="skillAutoComplete" class="input input-search-wrap is-label is-value" data-comp_type="jkAc" style="margin-top: 25px;">
				                <label id="skillSearch" for="skillText">스킬</label>
				                <input type="text" value="${item}" class="skillName" id="skillText" name="RS_NAME" data-type="Skill_Name" data-comp_type="jkAcInput" autocomplete="off" maxlength="50">
				            </div>
				            
				              <c:choose>
						    	 <c:when test="${ i.count eq recruitDetail.RS_NAME.size()  }">
                			<button type="button" onclick="addField(this)" class="button buttonAddField" id="school_addbutton" style="margin-top: 25px;padding-top: 7px;width: auto;display: inline-block;border-top: none;margin-left: 10px;">
                			<span style="height: 60px; vertical-align: middle;">제거</span>
                			</button>						    	
						    	</c:when>
						    	<c:otherwise>
                			<button type="button" onclick="removeField(this)" class="button remove buttonAddField" id="school_addbutton" style="margin-top: 25px;padding-top: 7px;width: auto;display: inline-block;border-top: none;margin-left: 10px;">
                			<span style="height: 60px; vertical-align: middle;">추가</span>
                			</button>
						    	</c:otherwise>
						    </c:choose>
				            
                			</c:forEach>
				    	</c:when>
				    	<c:otherwise>
				    	
				            <div id="skillAutoComplete" class="input input-search-wrap is-label" data-comp_type="jkAc" style="margin-top: 25px;">
				                <label id="skillSearch" for="skillText">스킬</label>
				                <input type="text" class="skillName" id="skillText" name="RS_NAME" data-type="Skill_Name" data-comp_type="jkAcInput" autocomplete="off" maxlength="50">
				            </div>
                			<button type="button" onclick="addField(this)" class="button buttonAddField" id="school_addbutton" style="margin-top: 25px;padding-top: 7px;width: auto;display: inline-block;border-top: none;margin-left: 10px;">
                			<span style="height: 60px; vertical-align: middle;">추가</span>
                			</button>
				    	</c:otherwise>
				    </c:choose>
            
                			
                			
                			
				        </div>
				    </div>
				    
				</div><!--지원자격END-->
    <!--근무조건-->
<div class="formWrap formWrapSkill" id="formSkill" style="display: block;">
				    <h2 class="header">근무조건</h2>
				    <div class="form">
				    <div class="colum dev-input-skill" style="">
				    
				    <c:choose>
				    <c:when test="${ not empty recruitDetail}">
				    <div class="dropdown dropdown-empType-category is-label selected">
											<input type="hidden" name="ET_ID" id="empType" value="${ recruitDetail.ET_ID  }">
											<div class="label " aria-hidden="false">고용형태</div>
											<button type="button" onclick="dropdown(this)" class="button buttonChoose">
												<span>${ recruitDetail.ET_NAME  }</span>
											</button>
											<div class="list hidden">
												<ul>
													<c:forEach var="item" items="${ empTypeList }">
													<li><button type="button" class="button" value="${item.ET_ID }">
															<span>${item.ET_NAME }</span>
														</button></li>
													</c:forEach>
												</ul>
											</div>
										</div>
				    	</c:when>
				    	<c:otherwise>
				    	
				       <div class="dropdown dropdown-empType-category is-label">
											<input type="hidden" name="ET_ID" id="empType" value="">
											<div class="label hidden" aria-hidden="false">고용형태</div>
											<button type="button" onclick="dropdown(this)" class="button buttonChoose">
												<span>고용형태</span>
											</button>
											<div class="list hidden">
												<ul>
													<c:forEach var="item" items="${ empTypeList }">
													<li><button type="button" class="button" value="${item.ET_ID }">
															<span>${item.ET_NAME }</span>
														</button></li>
													</c:forEach>
												</ul>
											</div>
										</div>
				    	
				    	</c:otherwise>
				    </c:choose>
										</div>
										<div class="colum dev-input-skill" style="">
										
						<c:choose>
				    <c:when test="${ not empty recruitDetail}">
				     <div class="dropdown dropdown-workArea-category is-label selected">
											<input type="hidden" name="WA_ID" id="workArea" value="${recruitDetail.WA_ID}">
											<div class="label " aria-hidden="false">근무지역</div>
											<button type="button" onclick="dropdown(this)" class="button buttonChoose">
												<span>${recruitDetail.WA_NAME}</span>
											</button>
											<div class="list hidden">
												<ul>
													<c:forEach var="item" items="${ workAreaList }">
													<li><button type="button" class="button" value="${item.WA_ID }">
															<span>${item.WA_NAME }</span>
														</button></li>
													</c:forEach>
												</ul>
											</div>
										</div>
				    	</c:when>
				    	<c:otherwise>
				    	
				            <div class="dropdown dropdown-workArea-category is-label">
											<input type="hidden" name="WA_ID" id="workArea" value="1">
											<div class="label hidden" aria-hidden="false">근무지역</div>
											<button type="button" onclick="dropdown(this)" class="button buttonChoose">
												<span>근무지역</span>
											</button>
											<div class="list hidden">
												<ul>
													<c:forEach var="item" items="${ workAreaList }">
													<li><button type="button" class="button" value="${item.WA_ID }">
															<span>${item.WA_NAME }</span>
														</button></li>
													</c:forEach>
												</ul>
											</div>
										</div>
				    	</c:otherwise>
				    </c:choose>
				        </div>
            <div class="colum dev-input-skill" style="">
            
            <c:choose>
				    <c:when test="${ not empty recruitDetail}">
				    <div id="skillAutoComplete" class="input input-search-wrap is-label is-value" data-comp_type="jkAc">
				                <label id="" for="R_SAL">급여</label>
				                <input type="text" value="${recruitDetail.r_SAL }" id="R_SAL" name="R_SAL" id="skillText" data-type="Skill_Name" data-comp_type="jkAcInput" autocomplete="off" maxlength="50">
				            </div>
				    	</c:when>
				    	<c:otherwise>
				            <div id="skillAutoComplete" class="input input-search-wrap is-label" data-comp_type="jkAc">
				                <label id="" for="R_SAL">급여</label>
				                <input type="text" id="R_SAL" name="R_SAL" id="skillText" data-type="Skill_Name" data-comp_type="jkAcInput" autocomplete="off" maxlength="50">
				                
				                
				                
				                
				            </div>
				    	
				    	</c:otherwise>
				    </c:choose>
				        </div>
            
            
				        <div class="colum dev-input-skill" style="">
				        <c:choose>
				    <c:when test="${ not empty recruitDetail}">
				    <div id="skillAutoComplete" class="input input-search-wrap is-label is-value" data-comp_type="jkAc">
				                <label id="" for="R_TIME">시간</label>
				                <input type="text" id="R_TIME" value="${recruitDetail.r_TIME }" name="R_TIME" id="skillText" data-type="Skill_Name" data-comp_type="jkAcInput" autocomplete="off" maxlength="50">
				                
				                
				                
				                
				            </div>
				    	</c:when>
				    	<c:otherwise>
				    	
				            <div id="skillAutoComplete" class="input input-search-wrap is-label" data-comp_type="jkAc">
				                <label id="" for="R_TIME">시간</label>
				                <input type="text" id="R_TIME" name="R_TIME" id="skillText" data-type="Skill_Name" data-comp_type="jkAcInput" autocomplete="off" maxlength="50">
				                
				                
				                
				                
				            </div>
				    	</c:otherwise>
				    </c:choose>
				        </div>
				        
				        
				        
				    </div>
				    
				</div>
    <!--근무조건END-->
				
				<div class="formWrap formWrapEducation" id="formEducation" style="">
		    <h2 class="header">접수기간/모집분야</h2>
		    
		    <div class="form formEducation">
		        <div id="school_containers">
		    <div class="container container1" data-cid="c946" style="width:940px">
					<div class="colum dev-input-skill" style="">
					<c:choose>
				    <c:when test="${ not empty recruitDetail}">
				    <div id="skillAutoComplete" class="input input-search-wrap is-label is-value" data-comp_type="jkAc">
				                <label id="" for="R_START_DATE">시작일</label>
				                <input type="text" value="${recruitDetail.r_START_DATE }" name="R_START_DATE" id="R_START_DATE" data-type="Skill_Name" data-comp_type="jkAcInput" autocomplete="off" maxlength="50">
				                
				                
				                
				                
				            </div>
				    	</c:when>
				    	<c:otherwise>
				            <div id="skillAutoComplete" class="input input-search-wrap is-label" data-comp_type="jkAc">
				                <label id="" for="R_START_DATE">시작일</label>
				                <input type="text" name="R_START_DATE" id="R_START_DATE" data-type="Skill_Name" data-comp_type="jkAcInput" autocomplete="off" maxlength="50">
				                
				                
				                
				                
				            </div>
				    	
				    	</c:otherwise>
				    </c:choose>
				        </div>
				        <div class="colum dev-input-skill" style="">
				        <c:choose>
				    <c:when test="${ not empty recruitDetail}">
				    <div id="skillAutoComplete" class="input input-search-wrap is-label is-value" data-comp_type="jkAc">
				                <label id="" for="R_END_DATE">마감일</label>
				                <input type="text" value="${recruitDetail.r_END_DATE }" name="R_END_DATE" id="R_END_DATE" data-type="Skill_Name" data-comp_type="jkAcInput" autocomplete="off" maxlength="50">
				                
				                
				                
				                
				            </div>
				    	</c:when>
				    	<c:otherwise>
				    	 <div id="skillAutoComplete" class="input input-search-wrap is-label" data-comp_type="jkAc">
				                <label id="" for="R_END_DATE">마감일</label>
				                <input type="text" name="R_END_DATE" id="R_END_DATE" data-type="Skill_Name" data-comp_type="jkAcInput" autocomplete="off" maxlength="50">
				                
				                
				                
				                
				            </div>
				    	</c:otherwise>
				    </c:choose>
				        
				           
				        </div>
				        <div class="colum dev-input-skill" style="">
				        <c:choose>
				    <c:when test="${ not empty recruitDetail}">
				     <div id="skillAutoComplete" class="input input-search-wrap is-label is-value" data-comp_type="jkAc">
				                <label id="" for="R_RECRUITMENT_VOLUME">모집인원</label>
				                <input type="text" value="${recruitDetail.r_RECRUITMENT_VOLUME }" name="R_RECRUITMENT_VOLUME" id="R_RECRUITMENT_VOLUME" data-type="Skill_Name" data-comp_type="jkAcInput" autocomplete="off" maxlength="50">
				                
				                
				            </div>
				    	</c:when>
				    	<c:otherwise>
				    	
				            <div id="skillAutoComplete" class="input input-search-wrap is-label" data-comp_type="jkAc">
				                <label id="" for="R_RECRUITMENT_VOLUME">모집인원</label>
				                <input type="text" name="R_RECRUITMENT_VOLUME" id="R_RECRUITMENT_VOLUME" data-type="Skill_Name" data-comp_type="jkAcInput" autocomplete="off" maxlength="50">
				                
				                
				                
				                
				            </div>
				    	</c:otherwise>
				    </c:choose>
				        </div>
		        <div class="colum dev-input-skill" style="border-top: 1px solid #ddd;">
		        <c:choose>
				    <c:when test="${ not empty recruitDetail.RF_FIELD }">
				    <input type="hidden" name="fieldDeleteCnt" value="${recruitDetail.RF_FIELD.size()}">
				    <c:forEach var="item" items="${ recruitDetail.RF_FIELD }" varStatus="i">
				    	
					    <div id="skillAutoComplete" class="input input-search-wrap is-label is-value" data-comp_type="jkAc" style="margin-top: 25px;">
			                <label id="" for="RF_FIELD">모집분야</label>
			                <input type="text" value="${item}" class="RF_FIELD" id="RF_FIELD" name="RF_FIELD" data-type="Skill_Name" data-comp_type="jkAcInput" autocomplete="off" maxlength="50">
			            </div>
			            <c:choose>
				   		 <c:when test="${ i.count eq recruitDetail.RF_FIELD.size()  }">
				   		 <button type="button" onclick="addField(this)" class="button buttonAddField" id="school_addbutton" style="margin-top: 25px;padding-top: 7px;width: auto;display: inline-block;border-top: none;margin-left: 10px;">
	                		<span style="height: 60px;vertical-align: middle;">추가</span>
	                	</button>
				    	</c:when>
				    	<c:otherwise>
	                	<button type="button" onclick="removeField(this)" class="button remove buttonAddField" id="school_addbutton" style="margin-top: 25px;padding-top: 7px;width: auto;display: inline-block;border-top: none;margin-left: 10px;">
	                		<span style="height: 60px;vertical-align: middle;">제거</span>
	                	</button>
				    	</c:otherwise>
				   		 </c:choose>
                	</c:forEach>
			    	</c:when>
				    	<c:otherwise>
				    	
    		        <div id="skillAutoComplete" class="input input-search-wrap is-label" data-comp_type="jkAc" style="margin-top: 25px;">
		                <label id="" for="RF_FIELD">모집분야</label>
		                <input type="text" class="RF_FIELD" id="RF_FIELD" name="RF_FIELD" data-type="Skill_Name" data-comp_type="jkAcInput" autocomplete="off" maxlength="50">
		            </div>
                	<button type="button" onclick="addField(this)" class="button buttonAddField" id="school_addbutton" style="margin-top: 25px;padding-top: 7px;width: auto;display: inline-block;border-top: none;margin-left: 10px;">
                		<span style="height: 60px;vertical-align: middle;">추가</span>
                	</button>
				    	</c:otherwise>
				    </c:choose>
                	
                	
		        </div>
		
		        <span class="devOtherUnivMajorTemplateArea">
		    
		    
		</span>
		
		        <div class="row devGradPaperRow" style="display:none;">
		            <div class="textarea is-label">
		                <label for="lbl_education_contents">졸업/논문작품</label>
		                <textarea name="UnivSchool[c946].Grad_Paper_Name" cols="30" rows="10" id="UnivSchool_Grad_Paper_Name_c946" data-maxlength="150"></textarea>
		            </div>
		        </div>
		        <div class="formFooter">
		            <div class="menu">
		                
		                
		            </div>
		        </div>
		    </div>
		</div>
		        
		
				
				
				    </div>
				</div>
				
				
				
		 <h2 class="header">상세요강</h2>		<!-- 자기소개서 -->
    <textarea name="R_INFO" id="summernote" cols="30" rows="10" placeholder="해당내용을 입력하세요." class="spellcheck"><c:out value="${ recruitDetail.r_INFO}" /></textarea>
				<!-- 자기소개서END -->
				<!-- sidebar -->
				<div class="fixedMenu media-size-small fixed" id="FixedMenuView">
    <div class="container" style="width:240px">
        <h2 class="header" style="
    display: block;
    border-bottom: 1px solid #ddd;
">채용 항목</h2>
        <ul class="list fixedMenuButtons">
            
            <li>
            	<a href="javascript:void(0)" class="button buttonCertificate selected"><span>직무,산업</span></a>
				</li>
            
            <li>
                <a href="javascript:void(0)" class="button buttonCareer selected"><span>지원자격</span></a>
            </li>
            
            <li>
                <a href="javascript:void(0)" class="button buttonLearn selected"><span>근무조건</span></a>
            </li>
            
            
            
            
            <li>
                <a href="javascript:void(0)" class="button buttonPortfolio selected"><span>접수기간/모집분야</span></a>
            </li>
            
            <li>
                <a href="javascript:void(0)" class="button buttonIntroduction selected"><span>상세요강</span></a>
            </li>
            
        </ul>
        <input data-val="true" data-val-required="JobTypeInputStat 필드가 필요합니다." id="InputStat_JobTypeInputStat" name="InputStat.JobTypeInputStat" type="hidden" value="True">
        <input data-val="true" data-val-required="SkillInputStat 필드가 필요합니다." id="InputStat_SkillInputStat" name="InputStat.SkillInputStat" type="hidden" value="True">
        <input class="dev-essential" data-privacy="학력" data-val="true" data-val-required="SchoolInputStat 필드가 필요합니다." id="InputStat_SchoolInputStat" name="InputStat.SchoolInputStat" type="hidden" value="True">
        <input class="dev-essential" data-privacy="경력" data-val="true" data-val-required="CareerInputStat 필드가 필요합니다." id="InputStat_CareerInputStat" name="InputStat.CareerInputStat" type="hidden" value="True">
        <input class="dev-optional" data-privacy="인턴·대외활동" data-val="true" data-val-required="SocialInputStat 필드가 필요합니다." id="InputStat_SocialInputStat" name="InputStat.SocialInputStat" type="hidden" value="True">
        <input class="dev-optional" data-privacy="교육" data-val="true" data-val-required="EduInputStat 필드가 필요합니다." id="InputStat_EduInputStat" name="InputStat.EduInputStat" type="hidden" value="True">
        <input class="dev-optional" data-privacy="수상" data-val="true" data-val-required="AwardInputStat 필드가 필요합니다." id="InputStat_AwardInputStat" name="InputStat.AwardInputStat" type="hidden" value="True">
        <input class="dev-optional" data-privacy="자격증" data-val="true" data-val-required="LicenseInputStat 필드가 필요합니다." id="InputStat_LicenseInputStat" name="InputStat.LicenseInputStat" type="hidden" value="True">
        <input class="dev-optional" data-privacy="해외경험" data-val="true" data-val-required="TrainingInputStat 필드가 필요합니다." id="InputStat_TrainingInputStat" name="InputStat.TrainingInputStat" type="hidden" value="True">
        <input class="dev-optional" data-privacy="어학" data-val="true" data-val-required="LanguageInputStat 필드가 필요합니다." id="InputStat_LanguageInputStat" name="InputStat.LanguageInputStat" type="hidden" value="False">
        <input class="dev-optional" data-privacy="포트폴리오" data-val="true" data-val-required="PortfolioInputStat 필드가 필요합니다." id="InputStat_PortfolioInputStat" name="InputStat.PortfolioInputStat" type="hidden" value="True">
        <input class="dev-optional" data-privacy="취업우대·병역" data-val="true" data-val-required="UserAdditionInputStat 필드가 필요합니다." id="InputStat_UserAdditionInputStat" name="InputStat.UserAdditionInputStat" type="hidden" value="False">
        <input class="dev-optional" data-privacy="자기소개서" data-val="true" data-val-required="UserIntroduceInputStat 필드가 필요합니다." id="InputStat_UserIntroduceInputStat" name="InputStat.UserIntroduceInputStat" type="hidden" value="True">
    </div>

        

    <button type="button" class="button buttonComplete"><span>채용등록</span></button>
    <div class="notifacation">저장 되었습니다.</div>

    <div class="save-time"></div>
</div>
				<!-- sidebar END -->
            </div>
        </div>
    </form>
 </div>
 
<div id="criteo-tags-div" style="display: none;"></div><div id="criteo-tags-div" style="display: none;"></div><div id="criteo-tags-div" style="display: none;"></div><div id="criteo-tags-div" style="display: none;"></div></body></html>