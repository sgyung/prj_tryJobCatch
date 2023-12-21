<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko"><head>
    
                <title>문의·신고 : tryJobCatch</title>


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link rel="SHORTCUT ICON" href="/favicon.ico?202311281400">

    <link rel="canonical" href="https://www.jobkorea.co.kr/help/inquiry">
    <link rel="alternate" href="https://m.jobkorea.co.kr/help/inquiry" media="only screen and (max-width: 640px)">
    <link rel="alternate" href="ios-app://569092652/https/m.jobkorea.co.kr/help/inquiry">
    <link rel="alternate" href="android-app://com.jobkorea.app/https/m.jobkorea.co.kr/help/inquiry">



<meta name="title" content="채용, 공채, 취업, 공고, 구인, 구직 정보는 잡코리아">
<meta name="writer" content="잡코리아">
<meta name="description" content="다양한 업종, 직종의 신입공채 및 경력채용, 일반 채용공고를 잡코리아에서 찾으실 수 있습니다.">
<meta name="keywords" content="채용 정보, 업종, 직종, 직무, 구인, 구직, 경력, 채용, 공고, 잡코리아">
<meta name="verify-v1" content="wfOOCE9Vtx+Z5etOXJnS9LU03yGpBxkK74T/yU63Xqs=">



<meta property="og:site_name" content="채용, 공채, 취업, 공고, 구인, 구직 정보는 잡코리아">
<meta property="og:title" content="채용, 공채, 취업, 공고, 구인, 구직 정보는 잡코리아">
<meta property="og:description" content="다양한 업종, 직종의 신입공채 및 경력채용, 일반 채용공고를 잡코리아에서 찾으실 수 있습니다.">
<meta property="og:image" content="//file1.jobkorea.co.kr/banner/share/share_img_01.png">
<meta property="og:url" content="https://www.jobkorea.co.kr/help/inquiry">
<meta property="og:type" content="website">



    
    

<link href="//i.jobkorea.kr/content/css/ver_2/event/banner.promotion-sv-202211241151.css" rel="stylesheet" type="text/css">

<link href="//i.jobkorea.kr/content/css/ver_2/common-sv-202311091305.css" rel="stylesheet" type="text/css"><link href="//i.jobkorea.kr/deploy/pc/dist/css/personal/common/gnb-sv-202311201607.css" rel="stylesheet" type="text/css"><link href="//i.jobkorea.kr/content/css/ver_2/mtc/mtc_lounge-sv-202309071428.css" rel="stylesheet" type="text/css"><link href="//i.jobkorea.kr/content/css/ver_2/help/help-sv-202210061217.css" rel="stylesheet" type="text/css"><link href="//i.jobkorea.kr/deploy/pc/dist/css/personal/layout/footer-sv-202311031048.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="/resources/lib/datastory/dslog.js?ver=1.1" id="dslog_tag"></script> 


<style>
    .async-hide {
        opacity: 0 !important
    }
</style>
<script data-ad-client="ca-pub-2252464458280030" async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    
    <script src="/NET/bundles/jquery?v=FVs3ACwOLIVInrAl5sdzR2jrCDmVOWFbZMY6g6Q0ulE1"></script>

 <!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN -->
<script>
$(function(){
	var msg = "${ msg }"
	if( msg != "" ){
		alert(msg);
	}	
	//문의,신고 등록
	$("#registBtn").click(function(){
		//문의 제목
		var title = $("#I_TITLE").val();
		//문의 내용
		var content = $("#I_CONTENT").val();
		if( title.length > 60 ){
			alert("문의제목은 60자 이하로 입력해주세요.")
			return;
		}
		if( content.length > 500){
			alert("내용은 500자 이하로 입력해주세요.");
			return;
		}
		
		if( title.trim() == "" ){
			alert("제목을 입력해주세요.");
			return;
		}
		if( content.trim() == "" ){
			alert("내용을 입력해주세요.");
			return;
		}
		
		
		$("#form").submit();
	})//click
})//readdy
</script>

</head>
<body id="secHelp" class="helpMain" style="" cz-shortcut-listen="true">
    
    <hr>

<c:import url="/common/include/header.jsp"/>




<input type="hidden" name="MemId" id="MemId" value="average8294">
<input type="hidden" name="MemTypeCode" id="MemTypeCode" value="M">

<!--// GNB 개편 시작 -->


<div class="jkNavDimm"></div>
<!-- GNB 개편 끝 //-->

<script src="/NET/bundles/backbone?v=v0-3Qm9SB2AUlk_aeK9GniBVmVTE9yxsGpDYtXZWlYU1"></script>

<script src="/NET/bundles/Gnb?v=JnEyldyQ4JQKsSv2JSofWwnA-lS2Ce07qqJMI25VA6k1"></script>



<script src="//i.jobkorea.kr/content/js/uit.carousel-sv-202005061649.js" type="text/javascript"></script>
<script type="text/javascript" src="/Scripts/User/Mict.js?202311281400"></script>





    



<div id="adTopWrap">
    <div id="adLeftWing" style="display:none">
        <h3 class="blind">배너</h3>
        <iframe width="90" height="154" noresize="" scrolling="no" frameborder="0" marginheight="0" marginwidth="0" src="https://yellow.contentsfeed.com/RealMedia/ads/adstream_sx.ads/jobkorea/sub@Left" title="광고"></iframe>
    </div>

    <div id="adRightWing" style="top:5px">        
        <h3 class="blind">배너</h3>        
        <iframe width="120" height="600" noresize="" scrolling="no" frameborder="0" marginheight="0" marginwidth="0" src="https://yellow.contentsfeed.com/RealMedia/ads/adstream_sx.ads/jobkorea/sub@TopRight" title="광고"></iframe>        

        
        
    </div>
</div>


    

<style type="text/css">
    .lugSpanFile {
        cursor: pointer;
        display: inline-block;
        width: 70%;
        height: 16px;
    }
</style>
<script src="/Scripts/Corp/Lounge/Inquiry.js?202311281400"></script>

    <div id="wrap">
        <div id="container" class="sideTrue">
<div id="content">
    <h1 class="skip">고객센터 메뉴</h1>


<section class="secLnb" style="height: 500px;
    border-bottom: 1px solid #dce1eb;">
    <h1><span class="skip">고객센터 메뉴 - </span><a class="lnbTit" href="http://211.63.89.133/prj_tryJobCatch/noticeList.do">고객센터</a></h1>
    
    <div class="lnbGroup">
        <ul>
            <li><a href="http://211.63.89.133/prj_tryJobCatch/noticeList.do" class="">공지사항</a></li>
            
        </ul>
    </div>
    <div class="lnbGroup">
        <ul>
            <li><a href="http://211.63.89.133/prj_tryJobCatch/member/questionFrm.do" class="on">문의∙신고</a></li>
            
        </ul>
    </div>

    
</section>

    <section class="content helpSecCont">
        <div class="loungeContent inquiryContent">
            <div class="topHdWrap">
                <h2 class="lug_hd_2">문의·신고</h2>
            </div>

            <!--// 문의하기 -->
            <div class="inquiryFormWrap">




<!--// tap menu -->
<div class="mtcTplTab">
	<ul class="tabItems">
		<li class="on"><a href="http://211.63.89.133/prj_tryJobCatch/member/questionFrm.do">문의·신고</a></li>
		<li class=""><a href="http://211.63.89.133/prj_tryJobCatch/member/qnaList.do">문의·신고 내역</a></li>
	</ul>
</div>
<!-- tap menu //-->
                <div class="inquiryForm">
                    <form id="form" action="http://211.63.89.133/prj_tryJobCatch/member/registQuestion.do" method="post">
                        <input name="__RequestVerificationToken" type="hidden" value="FxmtQkxsSik3PtqWkeQCB1ISZ5Uosd8Elyv7uEHPfYfz-YMbgBYDHaWfeQ--X0Xk19Qs08Sx63pNzy2JsM29V8O6yzShwYFuTLjdXVASCiI1">
                        <fieldset>
                            <legend>문의하기 입력</legend>
                            <div class="tbInquiryBx">
                                <div class="tbRow">
                                    <div class="tbCell tbTh">
                                        문의제목 <em>(필수)</em>
                                    </div>
                                    <div class="tbCell">
                                        <input name="I_TITLE" id="I_TITLE" type="text" style="width: 505px;height:30px;border: 1px solid #ddd;padding: 0px 10px;">
                                    </div>
                                </div>
                                <div class="tbRow">
                                    <div class="tbCell tbTh">
                                        <label for="lb_inq_2">내용 <em>(필수)</em></label>
                                    </div>
                                    <div class="tbCell">
                                        <textarea name="I_CONTENT" id="I_CONTENT" title="내용을 입력하세요." class="txArea"></textarea>
                                    </div>
                                </div>
                                

                                
                            </div>
                            
                            

                            <div class="inquiryBtn">
                                <button type="button" id="registBtn" class="btnInq">등록하기</button>
                            </div>
                        </fieldset>
                    </form>
                </div>

            </div>
            <!-- 문의하기 //-->
        </div>
    </section>
    <iframe name="frameUpload" width="0" height="0" title="빈 프레임"></iframe>
</div>
          <div style="display:none; position: absolute; right: 0px; top: 0px; opacity: 0; filter: alpha(opacity=0);">
              
              <form class="devFileForm" method="post" action="https://file2.jobkorea.co.kr/Net/Help/FileAttachAjax" enctype="multipart/form-data" target="frameUpload" accept-charset="utf-8">
                  <input type="hidden" name="url" value="https://www.jobkorea.co.kr/help/inquiry/upload">
                  <input type="hidden" name="isDelete" value="false">
                  <input type="hidden" name="delFileName">
                  <input type="file" name="file" id="fi_1" title="첨부파일" accept=".doc,.docx,.ppt,.pptx,.xls,.xlsx,.hwp,.jpg,.jpeg,.gif,.png,.pdf,.zip" disabled="">
              </form>
          </div>
          <div style="display:none; position: absolute; right: 0px; top: 0px; opacity: 0; filter: alpha(opacity=0);">
              
              <form class="devFileForm" method="post" action="https://file2.jobkorea.co.kr/Net/Help/FileAttachAjax" enctype="multipart/form-data" target="frameUpload" accept-charset="utf-8">
                  <input type="hidden" name="url" value="https://www.jobkorea.co.kr/help/inquiry/upload">
                  <input type="hidden" name="isDelete" value="false">
                  <input type="hidden" name="delFileName">
                  <input type="file" name="file" id="fi_2" title="첨부파일" accept=".doc,.docx,.ppt,.pptx,.xls,.xlsx,.hwp,.jpg,.jpeg,.gif,.png,.pdf,.zip" disabled="">
              </form>
          </div>
          <div style="display:none; position: absolute; right: 0px; top: 0px; opacity: 0; filter: alpha(opacity=0);">
              
              <form class="devFileForm" method="post" action="https://file2.jobkorea.co.kr/Net/Help/FileAttachAjax" enctype="multipart/form-data" target="frameUpload" accept-charset="utf-8">
                  <input type="hidden" name="url" value="https://www.jobkorea.co.kr/help/inquiry/upload">
                  <input type="hidden" name="isDelete" value="false">
                  <input type="hidden" name="delFileName">
                  <input type="file" name="file" id="fi_3" title="첨부파일" accept=".doc,.docx,.ppt,.pptx,.xls,.xlsx,.hwp,.jpg,.jpeg,.gif,.png,.pdf,.zip" disabled="">
              </form>
          </div>
</div>
</div> 


        
        

    

<div style="position:absolute; left:-5000px; overflow:hidden; display:none;">
	




</div>
<div style="position:absolute; left:-5000px; overflow:hidden; display:none;">
    

</div>


    <script type="text/javascript" src="/Scripts/json2.js"></script>
    <script type="text/javascript" src="/Scripts/jquery.cookie.min.js"></script>
    <script type="text/javascript" src="https://i.jobkorea.kr/content/js/jk_uit.js?20161025"></script>

    
     
    <script type="application/json" id="codeData">
        [{"no":101,"name":"회원가입/탈퇴","level":2,"parentNo":100,"sortNo":1},{"no":102,"name":"회원정보 수정","level":2,"parentNo":100,"sortNo":2},{"no":103,"name":"아이디/비밀번호 찾기","level":2,"parentNo":100,"sortNo":3},{"no":106,"name":"KED 정보 노출설정변경","level":2,"parentNo":100,"sortNo":6},{"no":107,"name":"메일링수신문의","level":2,"parentNo":100,"sortNo":7},{"no":199,"name":"기타/미분류","level":2,"parentNo":100,"sortNo":8},{"no":201,"name":"이력서 등록/수정","level":2,"parentNo":200,"sortNo":1},{"no":202,"name":"인재정보 등록설정","level":2,"parentNo":200,"sortNo":2},{"no":203,"name":"기타/미분류","level":2,"parentNo":200,"sortNo":99},{"no":204,"name":"첨부파일 등록/관리","level":2,"parentNo":200,"sortNo":3},{"no":301,"name":"채용정보 검색","level":2,"parentNo":300,"sortNo":1},{"no":302,"name":"입사지원 관련","level":2,"parentNo":300,"sortNo":2},{"no":399,"name":"기타/미분류","level":2,"parentNo":300,"sortNo":99},{"no":401,"name":"채용공고 등록/관리","level":2,"parentNo":400,"sortNo":1},{"no":402,"name":"지원자 관리","level":2,"parentNo":400,"sortNo":2},{"no":403,"name":"인재관리","level":2,"parentNo":400,"sortNo":3},{"no":499,"name":"기타/미분류","level":2,"parentNo":400,"sortNo":99},{"no":502,"name":"채용광고 상품","level":2,"parentNo":500,"sortNo":2},{"no":503,"name":"인재검색 서칭서비스","level":2,"parentNo":500,"sortNo":3},{"no":504,"name":"문자/인적성/기타 서비스","level":2,"parentNo":500,"sortNo":4},{"no":505,"name":"쿠폰/충전금/e-머니","level":2,"parentNo":500,"sortNo":5},{"no":506,"name":"세금계산서","level":2,"parentNo":500,"sortNo":6},{"no":507,"name":"환불/결제오류","level":2,"parentNo":500,"sortNo":7},{"no":599,"name":"기타/미분류","level":2,"parentNo":500,"sortNo":99},{"no":601,"name":"사이트 오류 ","level":2,"parentNo":600,"sortNo":1},{"no":603,"name":"불량정보/기업 신고","level":2,"parentNo":600,"sortNo":3},{"no":604,"name":"불량구직자 신고","level":2,"parentNo":600,"sortNo":4},{"no":699,"name":"기타/미분류","level":2,"parentNo":600,"sortNo":99},{"no":701,"name":"기타/미분류","level":2,"parentNo":700,"sortNo":99},{"no":702,"name":"이벤트/행사","level":2,"parentNo":700,"sortNo":1},{"no":703,"name":"제휴/제안","level":2,"parentNo":700,"sortNo":2},{"no":704,"name":"포털사이트 웹문서 삭제","level":2,"parentNo":700,"sortNo":3},{"no":801,"name":"답변필요","level":2,"parentNo":800,"sortNo":1},{"no":802,"name":"조율중","level":2,"parentNo":800,"sortNo":2},{"no":803,"name":"예약확정","level":2,"parentNo":800,"sortNo":3},{"no":804,"name":"면접종료","level":2,"parentNo":800,"sortNo":4},{"no":805,"name":"면접취소","level":2,"parentNo":800,"sortNo":5}]
    </script>
    <script type="text/javascript" src="/Scripts/jquery.form.min.js"></script>
    <script type="text/javascript" src="/Scripts/backbone.min.js"></script>
    <script type="text/javascript" src="/Scripts/Common/JK5cript.js"></script>
    <script type="text/javascript">var fromCode = '0';</script>
    <!--<script type="text/javascript" src="/Scripts/Help/inquiry_index.min.js?20170510"></script>-->
<c:import url="/common/include/footer_mypage.jsp"/>

<div id="criteo-tags-div" style="display: none;"></div><div id="criteo-tags-div" style="display: none;"></div></body></html>