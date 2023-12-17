<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko"><head>
            <title>MY페이지</title>


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link rel="SHORTCUT ICON" href="/favicon.ico?202311281400">

<meta name="title" content="MY페이지│잡코리아">
<meta name="writer" content="잡코리아">
<meta name="description" content="구직활동을 종합적으로 관리하고, 나만의 맞춤화된 서비스를 이용하세요.">
<meta name="keywords" content="jobkorea, 구인, 구직, 취업, 등록, 신문기사, 고용, 대기업, 채용, 기업, 검색, 컴퓨터, 정보통신, 웹마스터, 네트웍, 서버관리, 웹 디자인, 웹 마케팅, 컨텐트개발, 정보검색/사서직, 인터넷영업, 서버구축, 데이터베이스, 디자인, 편집디자인, MAC 편집, 제품 디자인, 산업 디자인, CAD, CAM, 웹 디자인, 캐릭터, 애니메이션, 프로그래머, 정보제공(IP/CP), 기술 영업, 통신 기술, 시스템 분석/설계, 정보통신강사, 하드웨어, 사무직, 관리직, 경리, 회계, 재무, 마케팅, 영업, 무역, 해외영업, 사무직, 기획, 총무, 인사, 홍보, 비서직, 프리랜서/아르바이트, 장애인, 외국인업체, 자원봉사, 노무직,잡코리아, JOKOREA, 헤드헌팅, 파견·대행, 아웃소싱, 인재파견, 채용대행, 위탁도급, 파견임시, 교육, 교육과정, 교육정보, 교육기관, 취업박람회, 채용박람회">
<meta name="verify-v1" content="wfOOCE9Vtx+Z5etOXJnS9LU03yGpBxkK74T/yU63Xqs=">

        <meta name="Robots" content="noindex,nofollow">


<meta property="og:site_name" content="MY페이지│잡코리아">
<meta property="og:title" content="MY페이지│잡코리아">
<meta property="og:description" content="구직활동을 종합적으로 관리하고, 나만의 맞춤화된 서비스를 이용하세요.">
<meta property="og:image" content="//file1.jobkorea.co.kr/banner/share/share_img_01.png">
<meta property="og:url" content="https://www.jobkorea.co.kr">
<meta property="og:type" content="website">


<style>
    .async-hide {
        opacity: 0 !important
    }
</style>

<link href="https://i.jobkorea.kr/content/css/ver_2/event/banner.promotion-sv-202211241151.css" rel="stylesheet" type="text/css">

<link href="//i.jobkorea.kr/content/css/ver_2/common-sv-202311301113.css" rel="stylesheet" type="text/css">
<link href="//i.jobkorea.kr/deploy/pc/dist/css/personal/common/gnb.css" rel="stylesheet" type="text/css">
<link href="//i.jobkorea.kr/deploy/pc/dist/css/mtu/mtu_common-sv-202311151322.css" rel="stylesheet" type="text/css">
<link href="//i.jobkorea.kr/content/css/ver_2/mtu/mtu_tpl-sv-202006091259.css" rel="stylesheet" type="text/css">
<link href="//i.jobkorea.kr/content/css/ver_2/mtu/mtu_style-sv-202311281234.css" rel="stylesheet" type="text/css">
<link href="//i.jobkorea.kr/deploy/pc/dist/css/mtu/mtu_popup-sv-202308211127.css" rel="stylesheet" type="text/css">
<link href="//i.jobkorea.kr/content/css/components/notification/1.0.0/notification-sv-202005061649.css" rel="stylesheet" type="text/css">
<link href="//i.jobkorea.kr/deploy/pc/dist/css/personal/layout/footer-sv-202311031048.css" rel="stylesheet" type="text/css">
<link href="//i.jobkorea.kr/deploy/pc/dist/css/components/tooltip.css?v=202311281400" rel="stylesheet" type="text/css">
<link href="//i.jobkorea.kr//content/css/ver_2/modules/swiper/4.3.3/swiper.min.css?v=202311281400" rel="stylesheet" type="text/css">
    
    <link href="https://i.jobkorea.kr/content/css/ver_2/mtu/mtu_popup-sv-202311201246.css" rel="stylesheet" type="text/css">
    
    <script src="https://www.jobkorea.co.kr/NET/bundles/jquery?v=FVs3ACwOLIVInrAl5sdzR2jrCDmVOWFbZMY6g6Q0ulE1"></script>

    <script src="https://www.jobkorea.co.kr/NET/bundles/backbone?v=v0-3Qm9SB2AUlk_aeK9GniBVmVTE9yxsGpDYtXZWlYU1"></script>

    <script type="text/javascript" src="https://www.jobkorea.co.kr/Scripts/json2.js"></script>
    <script type="text/javascript" src="https://www.jobkorea.co.kr/Scripts/jquery.cookie.min.js"></script>
    <script type="text/javascript" src="https://i.jobkorea.kr/content/js/jk_uit.js?202311281400"></script>
    <script src="https://i.jobkorea.kr/content/js/swiper-4.3.3.min-sv-202304070200.js" type="text/javascript"></script>
    <script src="https://i.jobkorea.kr/content/js/uit_mypage-sv-202311091305.js" type="text/javascript"></script>
    <script type="text/javascript" src="https://i.jobkorea.kr/content/js/starter/jquery.nanoscroller.js?202311281400"></script>
    <script type="text/javascript" src="https://i.jobkorea.kr/content/js/sidebar.min.js?202311281400"></script>
    
    <link rel="stylesheet" href="https://i.jobkorea.kr/content/css/join/flow/flow.css">
    <!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN -->
<script type="text/javascript">
$(function(){
	//수정완료,실패 메세지
	var msg = "${ msg }";
	if( msg != ""){
		alert( msg );
	}
	
	//사진 추가/수정
	$(".btnModify").click(function(){
		var leftPosition = (window.screen.width / 2) - (700 / 2);
		var topPosition = (window.screen.height / 2) - (500 / 2);
			
		var uploadImgWindow = window.open('http://localhost/prj_tryJobCatch/member/uploadImgFrm.do', '이미지 등록', 'width=700,height=500,left=' + leftPosition + ',top=' + topPosition);
		
		//사진 추가,수정 완료
		$(uploadImgWindow).on("beforeunload", function(){
			var imgPath 
			$.ajax({
				url : "http://localhost/prj_tryJobCatch/member/refreshImage.do",
				type : "POST",
				error : function(xhr){
					alert(xhr.status)
				},
				success : function( img ){
					imgPath = "http://localhost/prj_tryJobCatch/common/images/mbrImages/" + img
					checkImg(imgPath);
				},
			})//ajax
		})
	})//click
	//이미지 파일 업로드 완료 체크
	function checkImg(imgPath){
		$('<img>', {
	        src: imgPath,
	        error: function (jqXHR) {
	        	if(jqXHR.status == undefined){
	        		 setTimeout(function () {
	                     checkImg(imgPath);
	                 }, 1000);
	        	}
	        },
	        load: function () {
				$("#mbrImg").attr("src", imgPath)
	        }
	    });
	}
	
})//readly
</script>
    
</head>
<jsp:include page="../../../common/include/header.jsp"/>
<%-- <c:import url="/common/include/header.jsp" /> --%>
<body id="secMtu" class="mtuHome" style="" cz-shortcut-listen="true">
	<div id="skipNavigation">
		<p></p>
	</div>
	<hr>


<input type="hidden" name="MemId" id="MemId" value="average8294">
<input type="hidden" name="MemTypeCode" id="MemTypeCode" value="M">

<!--// GNB 개편 시작 -->


<div class="jkNavDimm"></div>
<!-- GNB 개편 끝 //-->

<script src="https://www.jobkorea.co.kr/NET/bundles/backbone?v=v0-3Qm9SB2AUlk_aeK9GniBVmVTE9yxsGpDYtXZWlYU1"></script><div id="criteo-tags-div" style="display: none;"></div><div id="criteo-tags-div" style="display: none;"></div>

<script src="https://www.jobkorea.co.kr/NET/bundles/Gnb?v=JnEyldyQ4JQKsSv2JSofWwnA-lS2Ce07qqJMI25VA6k1"></script>



<script src="https://i.jobkorea.kr/content/js/uit.carousel-sv-202005061649.js" type="text/javascript"></script>
<script type="text/javascript" src="https://www.jobkorea.co.kr/Scripts/User/Mict.js?202311281400"></script>

	<div id="wrap">
		<section id="container">
			<h1 class="skip">개인회원 서비스</h1>
			
    
<section class="my-content-banner" id="topBannerFinance" style="display:none">
    <div class="content-line-banner t1">
        <a href="https://www.jobkorea.co.kr/Theme/special_finance" target="_blank" class="line-banner-image image-finance">
            <img src="https://file2.jobkorea.co.kr/Net/Mng/DownFile/FileUrl?file_No=546798" alt="이직을 고민중인 금융직 경력자라면? 금융 전문가 채용관 바로가기">
        </a>
        <button class="line-banner-close" data-type="topBannerFinance">
            <span>닫기</span>
        </button>
    </div>
</section>

<section class="my-content">
    <h1 class="skip">프로필</h1>
    <div class="my-content-top">
        <div class="my-profile-wrap info">
            <h2 class="skip">프로필</h2>

                <div class="my-profile devPhotoBtns btns">
                    <div class="pie-chart" style="background: conic-gradient(rgb(0, 42, 255) 100%, rgb(0, 42, 255) 60%, rgb(244, 244, 244) 100%, rgb(244, 244, 244) 100%);">
                        <div class="profile-img"><p class="img">
                        	<c:if test="${ not empty mbrProfile.m_PIC }">
		                        <img id="mbrImg" src="http://localhost/prj_tryJobCatch/common/images/mbrImages/${mbrProfile.m_PIC}" alt="회원사진" style="width:100%">
                        	</c:if>
                        </p>
                        </div>
                    </div>
                    <button class="profile-btn btnModify" type="button"><span class="skip">사진편집</span></button>
                </div>
            
        </div>
        <div class="my-info-wrap">
            <div class="my-status-wrap">
                <div class="my-status-top">
                    <!--
                        [UI, DEV] 이력서 업데이트
                        이력서 미완성일 경우 status-incomplete 추가
                    -->

                    
                <!-- 포지션 제안 설정 영역 -->
                </div>
                <!-- /포지션 제안 설정 영역 -->
                <div class="user-status-title">
                		<c:choose>
                			<c:when test="${ not empty mbrProfile.MR_TITLE }">
		                        <h1><strong><c:out value="${ mbrProfile.MR_TITLE } " /></strong> 💻</h1>
                			</c:when>
                			<c:otherwise>
		                        <h1><strong>이력서를 등록해보세요. ↓</strong></h1>
                			</c:otherwise>
                		</c:choose>

                </div>
                <div class="my-status-box">
                                <p class="status">
                                	<c:choose>
                                		<c:when test="${ not empty mbrProfile.MR_REGISTRATION_DATE }">
		                                    <a href="http://localhost/prj_tryJobCatch/member/resumeList.do" target="_blank">
		                                        최근 이력서 작성일 : ${mbrProfile.MR_REGISTRATION_DATE}
		                                    </a>
	                                    </c:when>
	                                    <c:otherwise>
		                                    <a href="http://localhost/prj_tryJobCatch/member/resumeRegistFrm.do" target="_blank">
		                                        이력서 등록하기
		                                    </a>
	                                    </c:otherwise>
                                	</c:choose>
                                </p>
                </div>
                        
                
                
            </div>
        </div>
    </div>
        <div class="my-content-bottom">
            <h2 class="skip">주요활동내역</h2>
            <ul class="my-active-list">
                <li class="list">
                    <a class="box" href="http://localhost/prj_tryJobCatch/member/applyList.do" >
                        <p class="title">
                            지원현황
                            <strong class="count"><c:out value="${ requestScope.applyCnt }" /></strong>
                        </p>
                    </a>
                </li>

                <li class="list">
                    <a class="box" href="http://localhost/prj_tryJobCatch/member/resumeList.do" >
                        <p class="title">
                            이력서 현황
                            <strong class="count"><c:out value="${ requestScope.resumeCnt }" /></strong>
                        </p>
                    </a>
                </li>

                <li class="list">
                    <a class="box" href="/User/PositionOffer?tabStat=1#dev-tab-position" onclick="GA_Event('마이페이지_PC', '나의지원현황', '포지션제안')">
                        <p class="title">
                            MY 기업리뷰
                            <strong class="count"><c:out value="${ requestScope.reviewCnt }" /></strong>
                        </p>
                    </a>

                </li>

                <li class="list">
                    <a class="box" href="/User/Scrap/Index" >
                        <p class="title">
                            MY 문의
                            <strong class="count"><c:out value="${ requestScope.inquireCnt }" /></strong>
                        </p>
                    </a>

                </li>

                <li class="list">
                    <a class="box" href="http://localhost/prj_tryJobCatch/member/resumeRegistFrm.do" >
                        <p class="title">
                            이력서 등록하기 &gt;
                            
                        </p>
                    </a>
                </li>
            </ul>
        </div>
</section>


			<section class="content">


<input type="hidden" id="CareerLevel" value="1">

    <!-- 건강보험공단 배너 -->
    <div class="topContent healthBanner">
        <div class="IconWrap">
            <a href="/User/Resume/Write?healthBanner=1" target="_blank" class="health-link" onclick="GA_Event('마이페이지_PC', '상단배너', '건강보험공단 경력 불러오기')">
                <img src="//i.jobkorea.kr/content/images/Text_User/resume/banner_health.png" alt="">
            </a>
        </div>
    </div>
    <!-- // 건강보험공단 배너 -->


			</section>
			<hr>
			


<!--// Lnb Area -->
<!-- [개발] 메뉴 선택시 a.on 추가 -->
<c:import url="http://localhost/prj_tryJobCatch/common/include/sidebar.jsp" />

<hr>
<!-- Lnb Area //-->
		</section>
	</div>
	<!-- 맞춤 채용 조건 등록 팝업 -->
	<div id="PopUpMatch"></div>
	
	    
        

	

<div style="position:absolute; left:-5000px; overflow:hidden; display:none;">
	


</div>
<div style="position:absolute; left:-5000px; overflow:hidden; display:none;">
    
</div>



<c:import url="/common/include/footer_mypage.jsp"/>

<%-- <jsp:include page="../../../common/include/footer_mypage.jsp"/> --%>


</body></html>