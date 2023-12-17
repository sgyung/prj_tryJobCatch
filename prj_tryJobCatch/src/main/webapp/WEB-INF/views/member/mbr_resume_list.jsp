<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko"><head>
            <title>tryJobCatch</title>


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link rel="SHORTCUT ICON" href="/favicon.ico?202311281400">

    <link rel="canonical" href="https://www.jobkorea.co.kr">
    <link rel="alternate" href="https://m.jobkorea.co.kr" media="only screen and (max-width: 640px)">
    <link rel="alternate" href="ios-app://569092652/https/m.jobkorea.co.kr">
    <link rel="alternate" href="android-app://com.jobkorea.app/https/m.jobkorea.co.kr">

        <meta name="Robots" content="noindex,nofollow">


<meta property="og:site_name" content="MY페이지│잡코리아">
<meta property="og:title" content="MY페이지│잡코리아">
<meta property="og:description" content="구직활동을 종합적으로 관리하고, 나만의 맞춤화된 서비스를 이용하세요.">
<meta property="og:image" content="//file1.jobkorea.co.kr/banner/share/share_img_01.png">
<meta property="og:url" content="https://www.jobkorea.co.kr">
<meta property="og:type" content="website">

<script type="text/javascript" src="/Scripts/EchoScriptV2.js"></script>


    <script type="text/javascript" src="/resources/lib/datastory/dslog.js?ver=1.1" id="dslog_tag"></script> 

<style>
    .async-hide {
        opacity: 0 !important
    }
</style>


<link href="//i.jobkorea.kr/content/css/ver_2/event/banner.promotion-sv-202211241151.css" rel="stylesheet" type="text/css">

<link href="//i.jobkorea.kr/content/css/ver_2/common-sv-202311091305.css" rel="stylesheet" type="text/css">
<link href="//i.jobkorea.kr/deploy/pc/dist/css/personal/common/gnb-sv-202311201607.css" rel="stylesheet" type="text/css">
<link href="//i.jobkorea.kr/deploy/pc/dist/css/mtu/mtu_common-sv-202311151322.css" rel="stylesheet" type="text/css">
<link href="//i.jobkorea.kr/content/css/ver_2/mtu/mtu_tpl-sv-202006091259.css" rel="stylesheet" type="text/css">
<link href="//i.jobkorea.kr/content/css/ver_2/mtu/mtu_style-sv-202311281234.css" rel="stylesheet" type="text/css">
<link href="//i.jobkorea.kr/deploy/pc/dist/css/mtu/mtu_popup-sv-202308211127.css" rel="stylesheet" type="text/css">
<link href="//i.jobkorea.kr/content/css/components/notification/1.0.0/notification-sv-202005061649.css" rel="stylesheet" type="text/css">
<link href="//i.jobkorea.kr/deploy/pc/dist/css/personal/layout/footer-sv-202311031048.css" rel="stylesheet" type="text/css">
<link href="//i.jobkorea.kr/deploy/pc/dist/css/components/tooltip.css?v=202311281400" rel="stylesheet" type="text/css">
<link href="//i.jobkorea.kr//content/css/ver_2/modules/swiper/4.3.3/swiper.min.css?v=202311281400" rel="stylesheet" type="text/css">
    
    <link href="//i.jobkorea.kr/content/css/ver_2/mtu/mtu_popup-sv-202311201246.css" rel="stylesheet" type="text/css">
    

    <script src="/NET/bundles/backbone?v=v0-3Qm9SB2AUlk_aeK9GniBVmVTE9yxsGpDYtXZWlYU1"></script>

    <script type="text/javascript" src="/Scripts/json2.js"></script>
    <script type="text/javascript" src="/Scripts/jquery.cookie.min.js"></script>
    <script type="text/javascript" src="https://i.jobkorea.kr/content/js/jk_uit.js?202311281400"></script>
    <script src="//i.jobkorea.kr/content/js/swiper-4.3.3.min-sv-202304070200.js" type="text/javascript"></script>
    <script src="//i.jobkorea.kr/content/js/uit_mypage-sv-202311091305.js" type="text/javascript"></script>
    <script type="text/javascript" src="https://i.jobkorea.kr/content/js/starter/jquery.nanoscroller.js?202311281400"></script>
    <script type="text/javascript" src="https://i.jobkorea.kr/content/js/sidebar.min.js?202311281400"></script>
    
    <link rel="stylesheet" href="https://i.jobkorea.kr/content/css/join/flow/flow.css">


<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN -->
<script >
$(function(){
	var msg = "${ msg }";
	if( msg != "" ){
		alert(msg);
	}
	
	$(".resumeDeleteBtn").click(function(){
		if(confirm("삭제 하시겠습니까?")){
			var resumeId = $(this).siblings(".resumeId").val();
			location.href="http://localhost/prj_tryJobCatch/member/removeResume.do?mr_id="+resumeId;
		}//end if
	})//click
})
</script>
    
</head>
<jsp:include page="../../../common/include/header.jsp"/>
<body id="secMtu" class="mtuHome" style="" cz-shortcut-listen="true">
	<div id="skipNavigation">
		<p></p>
	</div>
	<hr>

<!--// GNB 개편 시작 -->


<div class="jkNavDimm"></div>
<!-- GNB 개편 끝 //-->

<script src="/NET/bundles/backbone?v=v0-3Qm9SB2AUlk_aeK9GniBVmVTE9yxsGpDYtXZWlYU1"></script><div id="criteo-tags-div" style="display: none;"></div><div id="criteo-tags-div" style="display: none;"></div><div id="criteo-tags-div" style="display: none;"></div><div id="criteo-tags-div" style="display: none;"></div>
<script src="/NET/bundles/Gnb?v=JnEyldyQ4JQKsSv2JSofWwnA-lS2Ce07qqJMI25VA6k1"></script>
<script src="//i.jobkorea.kr/content/js/uit.carousel-sv-202005061649.js" type="text/javascript"></script>
<script type="text/javascript" src="/Scripts/User/Mict.js?202311281400"></script>
<script src="//i.jobkorea.kr/content/js/swiper-4.3.3.min-sv-202304070200.js" type="text/javascript"></script>
<script type="text/javascript" src="/scripts/starter/StarterAction.js?202311281400"></script>



	<div id="wrap">
		<section id="container">

<section class="content">
				<script src="/NET/bundles/JK5cript?v=kt6fvRQVnlFhtrZQRB60lIBi5ru4auyenJ3cQsNF3hg1"></script>


<div class="modal modal-spinner" role="dialog" aria-hidden="true" style="display:none;"></div>
<div class="contWrap ResumeMngCont">
    
    <div class="hdWrap">
        <h2 class="hd_1">이력서 관리</h2>
    </div>
    <div class="btnBx"><a href="http://localhost/prj_tryJobCatch/member/resumeRegistFrm.do" class="btn btnBl mtuSpImgBefore" target="_blank"><span>이력서 등록</span></a></div>
    <div>
    <div class="tableList">
        <div clas="">
            <div class="listSortArea">
                <div class="col col01">이력서 제목</div>
                <div class="col col02">이력서 관리</div>
            </div>
            <c:choose>
              	<c:when test="${ not empty resumeList }">
              	<c:forEach var="resume" items="${ resumeList }" >
                   	<div class="mtuList">
                		<ul>
                     		<li class="ing">
                          	<div class="col col01">
                              <div class="tit"><a href="http://localhost/prj_tryJobCatch/member/resumeDetail.do?mr_id=${resume.MR_ID}" target="_blank" style="color:black; font-weight:bold"><c:out value="${ resume.MR_TITLE }" /></a></div>
                              <div class="date"><c:out value="${ resume.MR_REGISTRATION_DATE }" /></div>
                         	 </div>
                         	 <div class="col col02">
                              <!-- checkbox -->
                              <div class="btnCell"><a class="btn background" href="http://localhost/prj_tryJobCatch/member/modifyResumeFrm.do?mr_id=${ resume.MR_ID }" target="_blank">수정하기</a></div>
                              <div class="btnCell">
                              	<button id="resumeDeleteBtn" class="btn resumeDeleteBtn" type="button" >
                              		<span>삭제</span>
                              	</button>
                          		<input type="hidden" class="resumeId" value="${ resume.MR_ID }" />
                             	</div> 
                         	 </div>
                     		 </li>
                       </ul>
		            </div>
                     </c:forEach>
                   	</c:when>
                   	<c:otherwise>
                    	<div class="mtuList">
                			<ul>
                    			<li class="ing" style="padding:30px">
                    			<div style="text-align:center">등록된 이력서가 없습니다.<br/><a href="http://localhost/prj_tryJobCatch/member/resumeRegistFrm.do" class="btn btnBl mtuSpImgBefore" target="_self" style="margin-top:5px"><span>이력서 등록</span></a></div>
                    			</li>
                   		   </ul>
		           		</div>
                   	</c:otherwise>
                    </c:choose>
            
        </div>

        
        
        <!-- TIP -->
        <div class="mtuTip">
            <strong class="skip">이용 TIP</strong>
            <ul class="tipList">
                <li>입사지원을 한 후 해당 이력서의 내용을 수정해도 <em>이전에 지원한 이력서의 내용은 바뀌지 않으므로</em> 회사마다 이력서 내용을 다르게 지원할 수 있습니다.</li>
            </ul>
        </div>
        <div id="devResumeEmail" name="devResumeEmail" style="position:absolute; top:100px; left:70px; z-index:9999; display:none;">
            <iframe id="devResumeEmailIfrm" name="devResumeEmailIfrm" width="593" height="450" marginwidth="0" marginheight="0" frameborder="no" scrolling="no" title="이력서 이메일전송 레이어"></iframe>
        </div>
    </div>







    
			</div></div></section>
<c:import url="http://localhost/prj_tryJobCatch/common/include/sidebar.jsp" />
<hr>
<!-- Lnb Area //-->
		</section>
	</div>
    <script type="text/javascript" src="/Scripts/jquery.cookie.min.js?ver=202311281400"></script>
    <script type="text/javascript" src="/Scripts/Main/Common.js?ver=202311281400"></script>
    <script type="text/javascript" src="/Scripts/GI/OnPass_Quick.js?ver=202311281400"></script>
    <script type="text/javascript" src="/Scripts/GI/OnPass_Booking.js?ver=202311281400"></script>
    <script type="text/javascript" src="/Scripts/GI/OnPass_Pool.js?ver=202311281400"></script>
    <script type="text/javascript" src="/Scripts/HeadHunting/jk_uit_forRequest.js?ver=202311281400"></script>
    <script type="text/javascript" src="/Scripts/User/mypage.js?ver=202311281400"></script>
    <script type="text/javascript" src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
    <script type="text/javascript" src="/Scripts/User/MICT.js?ver=202311281400"></script>


    <script src="https://i.jobkorea.kr/content/js/jk_uit.js"></script>
    <script src="//i.jobkorea.kr/content/javascript/pc/dist/user/ui.user.min-sv-202308080257.js" type="text/javascript"></script>

    <script src="/resources/lib/underscore/underscore.min.js"></script>
    <script src="/resources/lib/jkmon/dist/jk.pc.min.js"></script>
    <script src="/resources/js/common/dist/jk.common.min.js?ver=202311281400"></script>
    <script type="text/javascript" src="/resources/js/user/dist/jk.user.positionOffer.js?v=202311281400"></script>
    <script src="/resources/js/user/dist/jk.user.profile.js?date=202311281400"></script>
    
    <script type="text/javascript" src="/Scripts/backbone.min.js"></script>
    <script src="/NET/bundles/ResumeReg?v=hJl2SBdx2iZyQB-r4APUQoGQG3FlT_1sBz7Ay35oBBo1"></script>

    <script src="/Scripts/User/Resume/itemtemplate.js?v=20171019001"></script>






<iframe height="0" width="0" title="Criteo DIS iframe" style="display: none;"></iframe><iframe height="0" width="0" title="Criteo DIS iframe" style="display: none;"></iframe><iframe height="0" width="0" title="Criteo DIS iframe" style="display: none;"></iframe><iframe height="0" width="0" title="Criteo DIS iframe" style="display: none;"></iframe></body></html>