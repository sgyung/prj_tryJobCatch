<%@page import="kr.co.sist.user.main.domain.MainNoticeDomain"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="kr.co.sist.user.main.domain.MainDomain"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info = "" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge; chrome=1">
    <title>TryJobCatch</title>

    <meta property="al:web:url" content="https://www.jobkorea.co.kr/">

    <script type="text/javascript" src="/NET/Scripts/EchoScriptV2.js"></script>

<c:import url="/common/css/user_page.css"/>
    
    <script src="/resources/lib/jquery/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/NET/Scripts/EchoScriptV2.js"></script>
    <script src="/Scripts/json2.js"></script>
    <script type="text/javascript" src="/resources/lib/datastory/dslog.js?ver=1.1" id="dslog_tag"></script> 

<style>
    .async-hide {
        opacity: 0 !important
    }
</style>
<script async="" src="https://www.googleoptimize.com/optimize.js?id=OPT-TD4G95J"></script>
<!-- End Google Tag Manager -->
<!-- Google Ad Manager -->
<script data-ad-client="ca-pub-2252464458280030" async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js" data-checked-head="true"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN -->
<script type="text/javascript">
$(function(){
	// 다음 버튼 클릭 이벤트 핸들러
	$('.swiper-button-next').on('click', function() {

	    // 현재 translate3d 값에서 숫자 부분 추출
	    var currentTranslate = parseInt($('.swiper-wrapper').css('transform').match(/matrix\(\d+, (\d+), \d+, \d+, (\d+), \d+\)/)[2]);

	    // 슬라이드 너비(1133px)만큼 이동
	    var newTranslate = currentTranslate - 1133;

	    // 새로운 transform 값 적용
	    $('.swiper-wrapper').css('transform', 'translate3d(' + newTranslate + 'px, 0px, 0px)');

	    // 현재 활성화된 슬라이드를 찾습니다.
	    var currentSlide = $('.swiper-slide-active');

	    // 다음 슬라이드가 있는 경우에만 클래스 변경
	    if (currentSlide.next('.swiper-slide').length) {
	        // 다음 슬라이드를 찾습니다.
	        var nextSlide = currentSlide.next('.swiper-slide');

	        // 현재 활성화된 슬라이드의 클래스를 수정합니다.
	        currentSlide.removeClass('swiper-slide-active').addClass('swiper-slide-prev');

	        // 다음 슬라이드의 클래스를 수정합니다.
	        nextSlide.removeClass('swiper-slide-next').addClass('swiper-slide-active');

	        // 이전 버튼의 aria-disabled 속성을 false로 변경합니다.
	        $('.swiper-button-prev').attr('aria-disabled', 'false');

	        // 다음 버튼의 aria-disabled 속성을 true로 변경합니다.
	        $('.swiper-button-next').attr('aria-disabled', 'true');
	        
	        $('.swiper-button-prev').removeClass('swiper-button-disabled');
	        $('.swiper-button-next').addClass('swiper-button-disabled');
	    }
	});

	// 이전 버튼 클릭 이벤트 핸들러
	$('.swiper-button-prev').on('click', function() {
	    // 현재 translate3d 값에서 숫자 부분 추출
	    var transformValue = $('.swiper-wrapper').css('transform');
		var match = transformValue.match(/matrix\(\d+, (\d+), \d+, \d+, (\d+), \d+\)/);

		// match가 null이 아닌지 확인하고, null이 아니라면 배열의 두 번째 요소를 사용합니다.
		var currentTranslate = match ? parseInt(match[2]) : 0;

	    // 새로운 transform 값 적용
	    $('.swiper-wrapper').css('transform', 'translate3d(' + currentTranslate + 'px, 0px, 0px)');

	    // 현재 활성화된 슬라이드를 찾습니다.
	    var currentSlide = $('.swiper-slide-active');

	    // 이전 슬라이드가 있는 경우에만 클래스 변경
	    if (currentSlide.prev('.swiper-slide').length) {
	        // 이전 슬라이드를 찾습니다.
	        var prevSlide = currentSlide.prev('.swiper-slide');

	        // 현재 활성화된 슬라이드의 클래스를 수정합니다.
	        currentSlide.removeClass('swiper-slide-active').addClass('swiper-slide-next');

	        // 이전 슬라이드의 클래스를 수정합니다.
	        prevSlide.removeClass('swiper-slide-prev').addClass('swiper-slide-active');

	        // 이전 버튼의 aria-disabled 속성을 true로 변경합니다.
	        $('.swiper-button-prev').attr('aria-disabled', 'true');

	        // 다음 버튼의 aria-disabled 속성을 false로 변경합니다.
	        $('.swiper-button-next').attr('aria-disabled', 'false');
	        
	        $('.swiper-button-next').removeClass('swiper-button-disabled');
	        $('.swiper-button-prev').addClass('swiper-button-disabled');
	    }
	});
	
})//ready



</script>

</head>    
<body class="byWd byNm" style="" cz-shortcut-listen="true">
    
    
    <div class="all-notification">
        <div class="component-notification"></div>
        
    </div>

<script type="text/javascript" src="/NET/Scripts/Gnb/Landing_Banner.js?ver=35"></script>

<input type="hidden" name="MemId" id="MemId" value="">
<input type="hidden" name="MemTypeCode" id="MemTypeCode" value="">

<c:import url="/common/include/header.jsp"/>

<script src="/NET/bundles/backbone?v=v0-3Qm9SB2AUlk_aeK9GniBVmVTE9yxsGpDYtXZWlYU1"></script>

<script src="/NET/bundles/Gnb?v=TKzFL-3gGAO283km6wdCFW9wNbFgp1NdxEXNBUfQYv41"></script>

<script src="//i.jobkorea.kr/content/js/uit.carousel-sv-202005061649.js" type="text/javascript"></script>
<script type="text/javascript" src="/Scripts/User/Mict.js?202312041400"></script>

    <div id="point" class="point">
        

    <div class="pointWrap">
        <div class="point-left point-box">
                <!--비회원 Contents Frame -->

    <ul class="tab-menu personal-tab-section">
        <li class="personal-tab-item active" data-navnumber="1"><a href="javascript:;" id="dev-Cntnt_OrtBNews_V2"><i class="emoji32_fire"></i>공채속보</a></li>
        
    </ul>
    <div class="cont-wrap depth2-cont personal-contents-section">
        <!--공채속보-->
        <div class="tab-cont personal-contents-item contents-news active" id="dev-cont-Cntnt_OrtBNews_V2" data-contentnumber="1">

<div class="match-slide">
    <div class="swiper-container slide instance-swipwe-1 swiper-container-horizontal">
        <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
            <div class="swiper-slide swiper-slide-active" style="width: 1118px; margin-right: 15px;">
                <ul class="box-lst">
<%
List<MainDomain> list = (List<MainDomain>)request.getAttribute("bannerList");
for(int i = 0; i < list.size(); i++){
	System.out.println(list.get(i).toString());
	if( i == 4){
%>
                </ul>
            </div>
            <div class="swiper-slide swiper-slide-next" style="width: 1118px; margin-right: 15px;">
                <ul class="box-lst">		
<%
	}
%>
                            <li>                            
                            <article class="box">
                                <div class="image">
                                    <img src="http://localhost/prj_tryJobCatch/common/images/company_logo/<%=list.get(i).getCm_co_logo() %>" style="height: 100% ;width: 100%"alt="<%=list.get(i).getCm_co_name() %>" onerror="this.style.display='none'">
                                </div>
                                <div class="texts">
                                    <h3><%=list.get(i).getCm_co_name() %></h3>
                                    <h4><%=list.get(i).getR_title() %></h4>
                                    <div class="sub no-money">
                                    <p><i class="emoji_coin"></i><span>합격축하금 <span>0</span><span>만원</span></span></p>
                                        <p><span class="info-gray"><c:out value="<%=list.get(i).getD_day() %>"/></span></p>
                                    </div>
                                </div>
                                <p class="chips primary">이번주 공채</p>
                                <a class="entire link clickcnt" href="#void" onclick="recruitmentDetail('<%= list.get(i).getR_id() %>')" target="_blank" data-rcmdsvcagi-galabel="이번주 공채" data-cntnt-no="12898" data-click-value="2" onclick="mainView.onContsHrefClick(this)">링크이동</a>
                            </article>
                        </li>                        
<%
}
%>
                </ul>
            </div>
        </div>
    <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
    <div class="btn-control">
        <div class="swiper-button-prev instance-prev1 swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true"></div>
        <div class="swiper-button-next instance-next1" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"></div>
    </div>
</div>
        </div>
        <!--//공채속보-->
    </div>
        </div>
    </div>


    </div>
    <hr>


<h2 class="blind">상품 리스트 영역</h2>
<div id="Prdt_BnnrFirstVVIP">
    <div class="grand_banner_bg">
        <div class="grand_banner_wrap">
            <h3 class="header">채용관</h3>
            <ul class="list list_firstvvip">
<% List<MainDomain> recruitmentList = (List<MainDomain>)request.getAttribute("recruitmentList");
for(int i = 0; i < recruitmentList.size(); i++){ 
	if(i == 0){
%>
                    <li data-match="{&quot;gno&quot;:43447713,&quot;jobTypes&quot;:&quot;,1000038,1000040,1000043,1000046,1000047,1000185,1000186,1000188,1000194,1000207,1000210,1000213,1000224,1000227,1000231,1000232,1000233,1000234,1000235,1000236,1000237,1000238,1000239,1000242,1000245,1000247,1000266,1000267,1000268,1000277,1000278,1000282,1000283,1000284,1000285,1000313,&quot;,&quot;workLocal&quot;:&quot;,B000,I000,&quot;,&quot;careerTypeCode&quot;:2}" class="branding expand">
                            <a href="#void"  onclick="recruitmentDetail('<%= recruitmentList.get(i).getR_id() %>')" class="card-wrap" target="_blank" data-gno="43447713">
                                <div class="company">
                                    <span class="name">
                                        <div class="image">
                                            <img src="http://localhost/prj_tryJobCatch/common/images/company/<%=recruitmentList.get(i).getCm_co_pic() %>" alt="" >
                                            <span class="logo"><img src="http://localhost/prj_tryJobCatch/common/images/company_logo/<%=recruitmentList.get(i).getCm_co_logo() %>" width="180" height="72" alt="" ></span>
                                        </div>
                                    </span> 
                                </div>
                                <div class="description"><%=recruitmentList.get(i).getR_title() %><br></div>
                                <div class="addition">
                                    <div class="summary">
                                        IT기술이 가진 무한한 가능성<br>
리테일 산업의 미래를 만들어 나가는곳<br>
여러분의 지원을 기다립니다
                                    </div>
                                </div>
                                <div class="button-recruit">채용 바로가기</div> 
                                <div class="extra">
                                    <div class="dday">~<%= recruitmentList.get(i).getR_end_date() %></div>
                                </div>
                            </a>
                    </li>
<%		
	}else if(i > 0 && i < 5){
%>
                    <li data-match="{&quot;gno&quot;:43456819,&quot;jobTypes&quot;:&quot;,1000016,1000185,1000194,1000216,1000217,1000219,1000224,1000265,1000267,1000268,1000269,1000277,1000278,1000279,1000284,1000285,1000313,&quot;,&quot;workLocal&quot;:&quot;,B000,E000,G000,H000,I000,&quot;,&quot;careerTypeCode&quot;:3}" class="branding">
                            <a href="#void" onclick="recruitmentDetail('<%= recruitmentList.get(i).getR_id() %>')" class="card-wrap" target="_blank" data-gno="43456819">
                                <div class="company">
                                    <span class="name">
                                        <div class="image">
                                            <img src="http://localhost/prj_tryJobCatch/common/images/company/<%=recruitmentList.get(i).getCm_co_pic() %>" alt="" >
                                            <span class="logo"><img src="http://localhost/prj_tryJobCatch/common/images/company_logo/<%=recruitmentList.get(i).getCm_co_logo() %>" width="180" height="72" alt="" ></span>
                                        </div>
                                    </span> 
                                </div>
                                <div class="description"><%= recruitmentList.get(i).getR_title() %><br/></div>
                                <div class="addition">
                                    <div class="summary">
                                        꿈을 이룰 열정적인<br>
DREAM-MAKERS를 기다립니다!
                                    </div>
                                </div>
                                <div class="button-recruit">채용 바로가기</div> 
                                <div class="extra">
                                    <div class="dday">~<%= recruitmentList.get(i).getR_end_date() %></div>
                                </div>
                                    <div class="company-background-image"></div>
                            </a>
                    </li>
<%
} else if(i > 4){
%>
                    
                    <li data-match="{&quot;gno&quot;:43357032,&quot;jobTypes&quot;:&quot;,1000013,1000046,1000291,1000292,1000294,1000381,&quot;,&quot;workLocal&quot;:&quot;,I000,&quot;,&quot;careerTypeCode&quot;:1}" class="">
                            <div class="company">
                                <span class="name">
                                    <a href="#void" onclick="recruitmentDetail('<%= recruitmentList.get(i).getR_id() %>')" target="_blank">
                                    <span class="logo">
                                    <img src="http://localhost/prj_tryJobCatch/common/images/company_logo/<%=recruitmentList.get(i).getCm_co_logo() %>" width="180" height="72" alt="" >
                                    </span><%= recruitmentList.get(i).getCm_co_name() %></a>
                                </span>
                            </div>
                            <div class="description">
                            <a href="" onclick="recruitmentDetail('<%= recruitmentList.get(i).getR_id() %>')" target="_blank"><%= recruitmentList.get(i).getR_title() %></a>
                            </div>
                            <div class="extra">
                            <div class="dday">~<%= recruitmentList.get(i).getR_end_date() %></div></div>
                            <div class="company-background-image"><img src="https://file1.jobkorea.co.kr//banner/images/100005602.jpg" alt="" onerror="this.src='//file1.jobkorea.co.kr/banner/images/100006303.jpg';"></div>
                    </li>
                  
<%
	}
}	
%>                    
            </ul>
        </div>
    </div>
</div>
<hr>

<ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" style="display: none !important;" data-ad-status="unfilled"><div id="aswift_0_host" tabindex="0" title="Advertisement" aria-label="Advertisement" style="border: none; height: 0px; width: 0px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-block;"><iframe id="aswift_0" name="aswift_0" browsingtopics="true" style="left:0;position:absolute;top:0;border:0;width:undefinedpx;height:undefinedpx;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allow="attribution-reporting" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-2252464458280030&amp;output=html&amp;adk=1812271804&amp;adf=3025194257&amp;lmt=1701684345&amp;plat=1%3A1024%2C2%3A1024%2C3%3A2097152%2C4%3A2097152%2C9%3A32776%2C16%3A8388608%2C17%3A32%2C24%3A32%2C25%3A32%2C30%3A1081344%2C32%3A32%2C41%3A32%2C42%3A32&amp;format=0x0&amp;url=https%3A%2F%2Fwww.jobkorea.co.kr%2F&amp;ea=0&amp;pra=5&amp;wgl=1&amp;easpi=0&amp;asro=0&amp;asiscm=1&amp;aslmt=0.4&amp;asamt=-1&amp;asedf=0&amp;asefa=1&amp;aseiel=1~2&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTE5LjAuNjA0NS4xNjAiLG51bGwsMCxudWxsLCI2NCIsW1siR29vZ2xlIENocm9tZSIsIjExOS4wLjYwNDUuMTYwIl0sWyJDaHJvbWl1bSIsIjExOS4wLjYwNDUuMTYwIl0sWyJOb3Q_QV9CcmFuZCIsIjI0LjAuMC4wIl1dLDBd&amp;dt=1701684344592&amp;bpp=5&amp;bdt=907&amp;idt=432&amp;shv=r20231129&amp;mjsv=m202311280101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3De694e610696ceeca-221d80e981e500fb%3AT%3D1699510675%3ART%3D1699510675%3AS%3DALNI_MY81yHlHaGxhuI2sZjVA-DymgEphQ&amp;gpic=UID%3D00000c82aa33f39c%3AT%3D1699510675%3ART%3D1699510675%3AS%3DALNI_MaNK6ufgCCHFtFiLUh6dkAzOYyasA&amp;nras=1&amp;correlator=3689624236433&amp;frm=20&amp;pv=2&amp;ga_vid=1907109562.1701626643&amp;ga_sid=1701684345&amp;ga_hid=1206653861&amp;ga_fc=1&amp;u_tz=540&amp;u_his=6&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_sd=1&amp;dmc=8&amp;adx=-12245933&amp;ady=-12245933&amp;biw=1903&amp;bih=579&amp;scr_x=0&amp;scr_y=803&amp;eid=44759876%2C44759927%2C31079714%2C31079929%2C44795921%2C31078297%2C44807764%2C44808148%2C44808284%2C44809072%2C31078663%2C31078665%2C31078668%2C31078670&amp;oid=2&amp;pvsid=1922921745808812&amp;tmod=2073075519&amp;uas=0&amp;nvt=2&amp;fsapi=1&amp;ref=https%3A%2F%2Fwww.jobkorea.co.kr%2Frecruit%2Fjoblist%3Fmenucode%3Dlocal%26localorder%3D1&amp;fc=1920&amp;brdim=0%2C0%2C0%2C0%2C1920%2C0%2C1920%2C1040%2C1920%2C579&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=32768&amp;bc=31&amp;td=1&amp;psd=W251bGwsbnVsbCxudWxsLDNd&amp;nt=1&amp;ifi=1&amp;uci=a!1&amp;fsb=1&amp;dtd=449" data-google-container-id="a!1" data-load-complete="true"></iframe></div></ins>

    <button class="go_top" style="display: inline-block;"><span class="txt">위로 가기</span></button>

<c:import url="/common/include/footer.jsp"/>
 


<img src="https://inv-nets.admixer.net/adxcm.aspx?ssp=6E7A3339-2644-4CC5-B66F-0AE67E575508&amp;id=wP45YLSQMZFsfT5z43M-RKYCpIUKiKfLLTSN-h9rQaQ" width="1" height="1" scrolling="no" frameborder="0" style="display:none"><iframe width="1" height="1" scrolling="no" frameborder="0" style="display:none" src="https://asia.creativecdn.com/ig-membership?ntk=1Im9Xsc_dLayGLf_2i7_bi7-lp-2dSBpJ6z0GBBPb0DN0rfAEO_xQZQ5EkIL7FcAGHdIlA6nSKofCvyl6ER-HtuqKOcADUROfh69ao-RZgs"></iframe><iframe width="1" height="1" scrolling="no" frameborder="0" style="display:none" src="https://asia.creativecdn.com/topics-membership?ntk=IBdCUifHOsQ4JfSptcCwIMBSAM5PC_v7OEJJRS3BqgnQMCyQIzTsHse9XCK_9Gju1HZPcTfwyNAafbEOPYbWdw"></iframe><div id="criteo-tags-div" style="display: none;"></div><iframe height="0" width="0" title="Criteo DIS iframe" style="display: none;"></iframe><iframe allow="join-ad-interest-group" data-tagging-id="G-GQWHSF87P4" data-load-time="1701684628453" height="0" width="0" style="display: none; visibility: hidden;" src="https://td.doubleclick.net/td/ga/rul?tid=G-GQWHSF87P4&amp;gacid=385676172.1699510674&amp;gtm=45je3bt0v890431961&amp;dma=0&amp;gcd=11l1l1l1l1&amp;aip=1&amp;fledge=1&amp;z=1390195668"></iframe><iframe src="https://www.google.com/recaptcha/api2/aframe" width="0" height="0" style="display: none;"></iframe></body><iframe id="google_esf" name="google_esf" src="https://googleads.g.doubleclick.net/pagead/html/r20231129/r20190131/zrt_lookup_fy2021.html" style="display: none;"></iframe></html>