<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info = "" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="http://192.168.10.134/prj_tryJobCatch/common/images/logo/favicon.png">
<!-- bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- bootstrap CDN-->
<link href="//i.jobkorea.kr/deploy/pc/dist/css/personal/layout/footer-sv-202311031048.css" rel="stylesheet" type="text/css" />

 	<link href="//i.jobkorea.kr/deploy/pc/dist/css/personal/common/gnb-sv-202311061312.css" rel="stylesheet" type="text/css" />
    <link href="//i.jobkorea.kr/deploy/pc/dist/css/personal/components/banner_promotion-sv-202306261612.css" rel="stylesheet" type="text/css" />
    <link href="//i.jobkorea.kr/deploy/pc/dist/css/personal/components/notification-sv-202304070431.css" rel="stylesheet" type="text/css" />
    <link href="//i.jobkorea.kr/deploy/pc/dist/css/personal/layout/footer-sv-202311031048.css" rel="stylesheet" type="text/css" />
    <link href="//i.jobkorea.kr/deploy/pc/dist/css/personal/pages/main/banner-sv-202309011650.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css"> <!-- ui쪽 서버 파일로 변경예정 -->
    <link href="//i.jobkorea.kr/deploy/pc/dist/css/personal/pages/main/main-sv-202311031048.css" rel="stylesheet" type="text/css" />
    <link href="//i.jobkorea.kr/deploy/pc/dist/css/mtu/mtu_popup-sv-202308211127.css" rel="stylesheet" type="text/css" />
    <link href="//i.jobkorea.kr/content/css/ver_2/rcr/rcr-sv-202310111400.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" href="https://i.jobkorea.kr/content/css/join/flow/flow.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />


    <link href="//i.jobkorea.kr/content/css/ver_2/common-sv-202311091305.css" rel="stylesheet" type="text/css" />
    <link href="//i.jobkorea.kr/deploy/pc/dist/css/personal/common/gnb-sv-202311061312.css" rel="stylesheet" type="text/css" />
    <link href="//i.jobkorea.kr/content/css/ver_2/jobs/part-sv-202308080257.css" rel="stylesheet" type="text/css" />
    <link href="//i.jobkorea.kr/content/css/ver_2/event/banner.promotion-sv-202211241151.css" rel="stylesheet" type="text/css" />
    <link href="//i.jobkorea.kr/deploy/pc/dist/css/corporate/pages/service/celebrate/celebrate-sv-202311061312.css" rel="stylesheet" type="text/css" />
    
    <script src="/NET/bundles/JK5cript?v=kt6fvRQVnlFhtrZQRB60lIBi5ru4auyenJ3cQsNF3hg1"></script>

    
    <link rel="stylesheet" href="https://i.jobkorea.kr/content/css/join/flow/flow.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN -->
<style type="text/css">

</style>
<script type="text/javascript">
$(function(){
	
})//ready
</script>


</head>
<body class="byWd byNm" cz-shortcut-listen="true" style="">

<script type="text/javascript" src="/NET/Scripts/Gnb/Landing_Banner.js?ver=35"></script>


<!--// GNB 개편 시작 -->
<div id="headerWrap" class="gnbTheme1260 devGnbContainer ">
    <div id="header" class="">
        <!--신입공채 메뉴일경우 클래스 start-sub 추가 -->
        <!-- // headInner --><!-- 로고 추가 -->
        <div class="headInner">
            <h1 class="jkLogo" onclick="GA_Event('공통_PC', '헤더', '잡코리아로고');">
                <a href="https://www.jobkorea.co.kr">
                <img alt="logo" src="http://192.168.10.134/prj_tryJobCatch/common/images/logo/logo.png">
                </a>
            </h1>


<!-- // search -->
<div class="search">
    <h2 class="skip">검색</h2>
    <form name="global_seek" id="AKCFrm" autocomplete="off" action="/Search/" onsubmit="return GoMainTotalSearch();" target="_self">
        <fieldset>
            <legend>Smart Match 통합검색</legend>
            <div class="smKey">
                <input type="text" id="stext" title="검색어 입력" name="stext" placeholder="NEW JOB, NEW ME" maxlength="30">
                <!-- 기존 자동완성 들어갈 영역 // -->
                <input type="submit" value="검색" class="submit spGnb" id="common_search_btn" onclick="GA_Event('공통_PC', '검색', '검색_' + document.getElementById('stext').value);">
            </div>
        </fieldset>
    </form>
</div>
<!-- search // -->

        </div>
        <!-- headInner // -->

        <div id="headNavBar" class="headNavBar">
            <div class="navInner">

<!-- 전체보기 버튼 클릭시 active 클래스 추가 -->
<div class="allArea">
    <h2 class="skip">전체서비스</h2>
    <button type="button" class="btnAllService" onclick="GA_Event('공통_PC', 'gnb', '전체서비스');">
        <span class="spGnb">
            <span class="txIr">전체서비스 열기</span>
            <div class="menu-ham">
                <svg xmlns="http://www.w3.org/2000/svg" width="18" height="14" viewBox="0 0 18 14" fill="none">
                    <path class="line1" d="M0 0.75C0 0.335786 0.335786 0 0.75 0H16.75C17.1642 0 17.5 0.335786 17.5 0.75C17.5 1.16421 17.1642 1.5 16.75 1.5H0.75C0.335786 1.5 0 1.16421 0 0.75Z" fill="#171717"></path>
                    <path class="line2" d="M0 6.75C0 6.33579 0.335786 6 0.75 6H16.75C17.1642 6 17.5 6.33579 17.5 6.75C17.5 7.16421 17.1642 7.5 16.75 7.5H0.75C0.335786 7.5 0 7.16421 0 6.75Z" fill="#171717"></path>
                    <path class="line3" d="M0.75 12C0.335786 12 0 12.3358 0 12.75C0 13.1642 0.335786 13.5 0.75 13.5H16.75C17.1642 13.5 17.5 13.1642 17.5 12.75C17.5 12.3358 17.1642 12 16.75 12H0.75Z" fill="#171717"></path>
                </svg>
            </div>
        </span>
    </button>
    <!-- // 전체보기 레이어 -->
    <div class="lyNavArea" id="devGnbAllServiceMenu"></div>
    <!-- 전체보기 레이어 // -->
</div>

                <div class="jkNavArea">
                    <h2 class="skip">주요서비스</h2>
                    <ul class="serviceNav">
                        <!-- 메뉴 활성화 클래스 navFixed 마우스 오버시 active 클래스 추가 -->
                        <li id="gnbGi" class="navItem gi">
                            <a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;localorder=1" class="linkItem" onclick="GA_Event('공통_PC', 'gnb', '채용정보');"><span class="spNav"><span class="txIr">채용정보</span></span></a>
<!-- // 채용정보 레이어 -->
<div class="lyNavArea">
    <h3 class="skip">채용정보 세부메뉴</h3>
    <div class="lyNavWrap">
        <div class="lyNavInner side" style="padding-right: 0%">
            <div class="lyRow row01">

                <div class="lyCol col2">
                    <div class="colItem">
                        <strong class="titArea">
                            <a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty" class="tit" onclick="GA_Event('공통_PC', 'lnb', '채용_직무별');">직무별<span class="spGnb"></span></a>
                        </strong>

                        <div class="listBx listBx-col">

                            <ul class="list-col">
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10026" onclick="GA_Event('공통_PC', 'lnb', '직무별_기획·전략');">기획·전략</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10028" onclick="GA_Event('공통_PC', 'lnb', '직무별_인사·HR');">인사·HR</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10030" onclick="GA_Event('공통_PC', 'lnb', '직무별_마케팅·광고·MD');">마케팅·광고·MD</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10032" onclick="GA_Event('공통_PC', 'lnb', '직무별_디자인');">디자인</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10034" onclick="GA_Event('공통_PC', 'lnb', '직무별_운전·운송·배송');">운전·운송·배송</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10036" onclick="GA_Event('공통_PC', 'lnb', '직무별_고객상담·TM');">고객상담·TM</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10038" onclick="GA_Event('공통_PC', 'lnb', '직무별_식·음료');">식·음료</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10040" onclick="GA_Event('공통_PC', 'lnb', '직무별_엔지니어링·설계');">엔지니어링·설계</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10042" onclick="GA_Event('공통_PC', 'lnb', '직무별_교육');">교육</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10044" onclick="GA_Event('공통_PC', 'lnb', '직무별_의료·바이오');">의료·바이오</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10046" onclick="GA_Event('공통_PC', 'lnb', '직무별_공공·복지');">공공·복지</a></li>
                            </ul>

                            <ul class="list-col">
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10027" onclick="GA_Event('공통_PC', 'lnb', '직무별_법무·사무·총무');">법무·사무·총무</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10029" onclick="GA_Event('공통_PC', 'lnb', '직무별_회계·세무');">회계·세무</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10031" onclick="GA_Event('공통_PC', 'lnb', '직무별_개발·데이터');">개발·데이터</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10033" onclick="GA_Event('공통_PC', 'lnb', '직무별_물류·무역');">물류·무역</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10035" onclick="GA_Event('공통_PC', 'lnb', '직무별_영업');">영업</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10037" onclick="GA_Event('공통_PC', 'lnb', '직무별_금융·보험');">금융·보험</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10039" onclick="GA_Event('공통_PC', 'lnb', '직무별_고객서비스·리테일');">고객서비스·리테일</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10041" onclick="GA_Event('공통_PC', 'lnb', '직무별_제조·생산');">제조·생산</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10043" onclick="GA_Event('공통_PC', 'lnb', '직무별_건축·시설');">건축·시설</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty&amp;dutyCtgr=10045" onclick="GA_Event('공통_PC', 'lnb', '직무별_미디어·문화·스포츠');">미디어·문화·스포츠</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="lyCol col4">
                    <div class="colItem">
                        <strong class="titArea"><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=industry" class="tit" onclick="GA_Event('공통_PC', 'lnb', '채용_산업별');">산업별<span class="spGnb"></span></a></strong>

                        <div class="listBx">
                            <ul>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=industry&amp;industryCtgr=10001" onclick="GA_Event('공통_PC', 'lnb', '산업별_서비스업');">서비스업</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=industry&amp;industryCtgr=10002" onclick="GA_Event('공통_PC', 'lnb', '산업별_금융·은행업');">금융·은행업</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=industry&amp;industryCtgr=10007" onclick="GA_Event('공통_PC', 'lnb', '산업별_IT·정보통신업');">IT·정보통신업</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=industry&amp;industryCtgr=10010" onclick="GA_Event('공통_PC', 'lnb', '산업별_판매·유통업');">판매·유통업</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=industry&amp;industryCtgr=10009" onclick="GA_Event('공통_PC', 'lnb', '산업별_제조·생산·화학업');">제조·생산·화학업</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=industry&amp;industryCtgr=10011" onclick="GA_Event('공통_PC', 'lnb', '산업별_교육업');">교육업</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=industry&amp;industryCtgr=10003" onclick="GA_Event('공통_PC', 'lnb', '산업별_건설업');">건설업</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=industry&amp;industryCtgr=10004" onclick="GA_Event('공통_PC', 'lnb', '산업별_의료·제약업');">의료·제약업</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=industry&amp;industryCtgr=10005" onclick="GA_Event('공통_PC', 'lnb', '산업별_미디어·광고업');">미디어·광고업</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=industry&amp;industryCtgr=10006" onclick="GA_Event('공통_PC', 'lnb', '산업별_문화·예술·디자인업');">문화·예술·디자인업</a></li>
                                    <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=industry&amp;industryCtgr=10008" onclick="GA_Event('공통_PC', 'lnb', '산업별_기관·협회');">기관·협회</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="lyCol col4 row02">
                    <div class="colItem">
                        <strong class="titArea"><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;localorder=1" class="tit" onclick="GA_Event('공통_PC', 'lnb', '채용_지역별');">지역별<span class="spGnb"></span></a></strong>
                        <div class="listBx">
                            <ul class="colList joblistArea">
                                        <li class="begin"><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;local=I000" onclick="GA_Event('공통_PC', 'lnb', '지역별_서울');">서울</a></li>
                                        <li class=""><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;local=B000" onclick="GA_Event('공통_PC', 'lnb', '지역별_경기');">경기</a></li>
                                        <li class=""><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;local=K000" onclick="GA_Event('공통_PC', 'lnb', '지역별_인천');">인천</a></li>
                                        <li class="begin"><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;local=G000" onclick="GA_Event('공통_PC', 'lnb', '지역별_대전');">대전</a></li>
                                        <li class=""><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;local=1000" onclick="GA_Event('공통_PC', 'lnb', '지역별_세종');">세종</a></li>
                                        <li class=""><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;local=O000" onclick="GA_Event('공통_PC', 'lnb', '지역별_충남');">충남</a></li>
                                        <li class="begin"><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;local=P000" onclick="GA_Event('공통_PC', 'lnb', '지역별_충북');">충북</a></li>
                                        <li class=""><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;local=E000" onclick="GA_Event('공통_PC', 'lnb', '지역별_광주');">광주</a></li>
                                        <li class=""><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;local=L000" onclick="GA_Event('공통_PC', 'lnb', '지역별_전남');">전남</a></li>
                                        <li class="begin"><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;local=M000" onclick="GA_Event('공통_PC', 'lnb', '지역별_전북');">전북</a></li>
                                        <li class=""><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;local=F000" onclick="GA_Event('공통_PC', 'lnb', '지역별_대구');">대구</a></li>
                                        <li class=""><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;local=D000" onclick="GA_Event('공통_PC', 'lnb', '지역별_경북');">경북</a></li>
                                        <li class="begin"><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;local=H000" onclick="GA_Event('공통_PC', 'lnb', '지역별_부산');">부산</a></li>
                                        <li class=""><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;local=J000" onclick="GA_Event('공통_PC', 'lnb', '지역별_울산');">울산</a></li>
                                        <li class=""><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;local=C000" onclick="GA_Event('공통_PC', 'lnb', '지역별_경남');">경남</a></li>
                                        <li class="begin"><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;local=A000" onclick="GA_Event('공통_PC', 'lnb', '지역별_강원');">강원</a></li>
                                        <li class=""><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;local=N000" onclick="GA_Event('공통_PC', 'lnb', '지역별_제주');">제주</a></li>
                                        <li class=""><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;local=Q000" onclick="GA_Event('공통_PC', 'lnb', '지역별_전국');">전국</a></li>

                            </ul>
                        </div>
                    </div>

                    
                </div>

                <div class="lyCol col4 row02">
                    <div class="colItem">
                        <strong class="titArea"><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=cotype1&amp;cotype=1,2,3" class="tit" onclick="GA_Event('공통_PC', 'lnb', '채용_기업별');">기업별<span class="spGnb"></span></a></strong>
                        <div class="listBx">
                            <ul>
                                <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=cotype1&amp;cotype=1,2,3" onclick="GA_Event('공통_PC', 'lnb', '기업별_대기업');">대기업</a></li>
                                <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=cotype2&amp;cotype=4,5" onclick="GA_Event('공통_PC', 'lnb', '기업별_중견·강소기업');">중견·강소기업</a></li>
                                <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=cotype3&amp;cotype=6" onclick="GA_Event('공통_PC', 'lnb', '기업별_외국계기업');">외국계기업</a></li>
                                <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=cotype4&amp;cotype=8" onclick="GA_Event('공통_PC', 'lnb', '기업별_공기업·공사');">공기업·공사</a></li>
                                <li><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=cotype5&amp;cotype=11,12,13,14" onclick="GA_Event('공통_PC', 'lnb', '기업별_상장기업');">상장기업</a></li>
                            </ul>
                        </div>
                    </div>

                    
                </div>
            </div>

            <button type="button" class="btnCloseNav spGnb">채용정보 메뉴 닫기</button>
        </div>
    </div>
</div>
<!-- 채용정보 레이어 // -->
                        </li>
                        <li id="gnbSalary" class="navItem salary">
                            <a href="https://www.jobkorea.co.kr/Review/Home" class="linkItem" onclick="GA_Event('공통_PC', 'gnb', '기업·연봉');"><span class="spNav"><span class="txIr">기업리뷰</span></span></a>
<!-- // 연봉 레이어 -->
<div class="lyNavArea">
    <h3 class="skip">기업리뷰 세부메뉴</h3>
    <div class="lyNavWrap">
        <div class="lyNavInner full">
            <div class="lyRow row01">
                <div class="lyCol col4">
                    <div class="colItem">
                        <strong class="titArea"><a href="https://www.jobkorea.co.kr/Review/Home" class="tit" onclick="GA_Event('공통_PC', 'lnb', '기업·연봉_기업리뷰');">기업리뷰<span class="spGnb"></span></a></strong>
                        <div class="listBx">
                            <ul>
                                <li><a href="https://www.jobkorea.co.kr/Review/Home" onclick="GA_Event('공통_PC', 'lnb', '기업리뷰_기업리뷰 홈');">기업리뷰 홈</a></li>
                                <li><a href="https://www.jobkorea.co.kr/Review/Home?compareSchStat=1" onclick="GA_Event('공통_PC', 'lnb', '기업리뷰_리뷰 비교');">기업 리뷰</a></li>
                                <li><a href="javascript:if('' != '' &amp;&amp; '' != 'M'){alert('기업리뷰는 개인회원만 작성이 가능합니다.');}else{location.href='/Review/MyReview';}" onclick="GA_Event('공통_PC', 'lnb', '기업리뷰_MY 기업리뷰');">MY 기업리뷰</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
			</div>
            
            <button type="button" class="btnCloseNav spGnb">기업·연봉 메뉴 닫기</button>

        </div>
    </div>
</div>
<!-- 연봉 레이어 // -->
                        </li>
                        
                        <li id="gnbQna" class="navItem qna lyNull">
                            <a href="https://www.jobkorea.co.kr/User/Qstn/Index" class="linkItem" onclick="GA_Event('공통_PC', 'gnb', '취업톡톡');">
                                <span class="spNav"><span class="txIr">채용등록</span></span>
                            </a>
                        </li>
                        <li id="gnbSalary" class="navItem salary">
                            <a href="https://www.jobkorea.co.kr/Review/Home" class="linkItem" onclick="GA_Event('공통_PC', 'gnb', '기업·연봉');"><span class="spNav"><span class="txIr">고객센터</span></span></a>
<!-- // 연봉 레이어 -->
<div class="lyNavArea">
    <h3 class="skip">고객센터 세부메뉴</h3>
    <div class="lyNavWrap">
        <div class="lyNavInner full">
            <div class="lyRow row01">
                <div class="lyCol col4">
                    <div class="colItem">
                        <strong class="titArea"><a href="https://www.jobkorea.co.kr/Review/Home" class="tit" onclick="GA_Event('공통_PC', 'lnb', '기업·연봉_기업리뷰');">고객센터<span class="spGnb"></span></a></strong>
                        <div class="listBx">
                            <ul>
                                <li><a href="https://www.jobkorea.co.kr/Review/Home" onclick="GA_Event('공통_PC', 'lnb', '기업리뷰_기업리뷰 홈');">FAQ</a></li>
                                <li><a href="https://www.jobkorea.co.kr/Review/Home?compareSchStat=1" onclick="GA_Event('공통_PC', 'lnb', '기업리뷰_리뷰 비교');">공지사항</a></li>
                                <li><a href="javascript:if('' != '' &amp;&amp; '' != 'M'){alert('기업리뷰는 개인회원만 작성이 가능합니다.');}else{location.href='/Review/MyReview';}" onclick="GA_Event('공통_PC', 'lnb', '기업리뷰_MY 기업리뷰');">문의하기</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
             </div>

            <button type="button" class="btnCloseNav spGnb">고객센터 메뉴 닫기</button>

        </div>
    </div>
</div>
<!-- 연봉 레이어 // -->
                        </li>
                    </ul>
                    <!-- my 홈일경우 클래스 myPage -->
                    <ul id="devMyPage" class="userNav">



    <ul class="userNav">
        <li class="userNav-item login">
            <a href="/Login/Login_Tot.asp?rDBName=GG&amp;re_url=/" class="txt-button login-button" onclick="GA_Event('공통_PC', 'gnb', '로그인');">로그인</a>
        </li>
        <li class="userNav-item join">
            <a href="/Join/M_Regist" class="txt-button join-button" onclick="GA_Event('공통_PC', 'gnb', '회원가입');">회원가입</a>
        </li>
    </ul>

                    </ul>
                </div>

            </div>
        </div>
    </div>
</div>

<div class="jkNavDimm"></div>
<!-- GNB 개편 끝 //--><!-- main header 끝 -->

<script src="/NET/bundles/backbone?v=v0-3Qm9SB2AUlk_aeK9GniBVmVTE9yxsGpDYtXZWlYU1"></script>

<script src="/NET/bundles/Gnb?v=JnEyldyQ4JQKsSv2JSofWwnA-lS2Ce07qqJMI25VA6k1"></script>



<script src="//i.jobkorea.kr/content/js/uit.carousel-sv-202005061649.js" type="text/javascript"></script>
<script type="text/javascript" src="/Scripts/User/Mict.js?202311091400"></script>



    <div id="point">
        <div class="pointWrap">
            <div class="point-left point-box">
                

<div class="match-tab tab-wrap">
    <div class="cont-wrap cont-service">
            <!--비회원 Contents Frame -->

<div class="tab-cont personal-contents active">
    <div class="tab-wrap personal-tab">
        <ul class="tab-menu tab-depth2 personal-tab-section active" id="dev-taglist">
            <li class="personal-tab-item active" data-navnumber="1"><a href="javascript:;" id="dev-Cntnt_OrtBNews_V2">채용 속보</a></li>
            <li class="personal-tab-item" data-navnumber="2"><a href="javascript:;" id="dev-Cntnt_AIrecomm">추천</a></li>
        </ul>
        <div class="cont-warp depth2-cont personal-contents-section">
            

            <!--공채속보-->
            <div class="tab-cont personal-contents-item contents-news active" id="dev-cont-Cntnt_OrtBNews_V2" data-contentnumber="1">

<div class="match-slide">
    <div class="swiper-container slide instance-swipwe-1 swiper-container-initialized swiper-container-horizontal">
        <div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
            <div class="swiper-slide swiper-slide-active" style="width: 980px; margin-right: 15px;">
                <ul class="box-lst">
                        <li>
                                <div class="box">
                                        <a href="/Recruit/GI_Read/43272539" class="link clickcnt" data-cntnt-no="12827" data-click-value="2" onclick="mainView.onContsHrefClick(this);" data-rcmdsvcagi-galabel="이번주 공채" target="_blank">
                                            <span class="bdgs">
                                                <span class="ut-bdg a">이번주 공채</span>
                                            </span>
                                            <h4 class="box-tit">2023 체험형 인턴 채용</h4>
                                            <span class="box-bot">
                                                <span class="info-txt">온세미컨덕터코리아㈜</span>
                                                <span class="info-gray">D-8</span>
                                            </span>
                                        </a>
                                </div>
                                <div class="box">
                                        <a href="/Recruit/GI_Read/43255995" class="link clickcnt" data-cntnt-no="12826" data-click-value="2" onclick="mainView.onContsHrefClick(this);" data-rcmdsvcagi-galabel="이번주 공채" target="_blank">
                                            <span class="bdgs">
                                                <span class="ut-bdg a">이번주 공채</span>
                                            </span>
                                            <h4 class="box-tit">2023년 4분기 신입 및 경력사원 채용</h4>
                                            <span class="box-bot">
                                                <span class="info-txt">동광제약</span>
                                                <span class="info-gray">D-9</span>
                                            </span>
                                        </a>
                                </div>
                        </li>
                        <li>
                                <div class="box">
                                        <a href="/Recruit/GI_Read/43277745" class="link clickcnt" data-cntnt-no="12837" data-click-value="2" onclick="mainView.onContsHrefClick(this);" data-rcmdsvcagi-galabel="이번주 공채" target="_blank">
                                            <span class="bdgs">
                                                <span class="ut-bdg a">이번주 공채</span>
                                            </span>
                                            <h4 class="box-tit">2023 각 부문 수시채용</h4>
                                            <span class="box-bot">
                                                <span class="info-txt">샘표식품㈜</span>
                                                <span class="info-gray">D-10</span>
                                            </span>
                                        </a>
                                </div>
                                <div class="box">
                                        <a href="/Recruit/GI_Read/43270257" class="link clickcnt" data-cntnt-no="12836" data-click-value="2" onclick="mainView.onContsHrefClick(this);" data-rcmdsvcagi-galabel="이번주 공채" target="_blank">
                                            <span class="bdgs">
                                                <span class="ut-bdg a">이번주 공채</span>
                                            </span>
                                            <h4 class="box-tit">2023년 신규채용</h4>
                                            <span class="box-bot">
                                                <span class="info-txt">현대제철주식회사</span>
                                                <span class="info-gray">D-11</span>
                                            </span>
                                        </a>
                                </div>
                        </li>
                    <li>
                        <div class="box">
                            
                            
                            <a href="/OnePick/JobList" class="bnr-box devBnrBox" target="_self">
                                <img src="https://i.jobkorea.kr/content/images/personal/main/ps_bnr16.png?202311091400)" alt="원픽 공고에 최종합격하면 합격축하금 드려요.">
                            </a>
                        </div>
                    </li>
                    <li>
                            <div class="box">
                                    <a href="/Recruit/GI_Read/43296241" class="link clickcnt" data-cntnt-no="12839" data-click-value="2" data-rcmdsvcagi-galabel="그룹사 공채" target="_blank">
                                        <span class="bdgs">
                                            <span class="ut-bdg b">그룹사 공채</span>
                                        </span>
                                        <h4 class="box-tit">2024 신입&amp;경력 공개채용</h4>
                                        <span class="box-bot">
                                            <span class="info-txt">㈜윈스</span>
                                            <span class="info-gray">D-10</span>
                                        </span>
                                    </a>
                            </div>
                            <div class="box">
                                    <a href="/Recruit/GI_Read/43241492" class="link clickcnt" data-cntnt-no="12830" data-click-value="2" data-rcmdsvcagi-galabel="그룹사 공채" target="_blank">
                                        <span class="bdgs">
                                            <span class="ut-bdg b">그룹사 공채</span>
                                        </span>
                                        <h4 class="box-tit">각 부문 인재채용</h4>
                                        <span class="box-bot">
                                            <span class="info-txt">㈜동진쎄미켐</span>
                                            <span class="info-gray">D-4</span>
                                        </span>
                                    </a>
                            </div>
                    </li>
                </ul>
            </div>
            <div class="swiper-slide swiper-slide-next" style="width: 980px; margin-right: 15px;">
                <ul class="box-lst">
                        <li>
                                <div class="box">
                                        <a href="/Recruit/GI_Read/43305685" class="link" target="_blank" data-rcmdsvcagi-galabel="최근 시작 공채">
                                            <span class="bdgs">
                                                <span class="ut-bdg c">최근 시작 공채</span>
                                            </span>
                                            <h4 class="box-tit">Cloud 보안 분야 신입/경력직 채용</h4>
                                            <span class="box-bot">
                                                <span class="info-txt">SK쉴더스㈜</span>
                                                <span class="info-gray">D-9</span>
                                            </span>
                                        </a>
                                </div>
                                <div class="box">
                                        <a href="/Recruit/GI_Read/43282837" class="link" target="_blank" data-rcmdsvcagi-galabel="최근 시작 공채">
                                            <span class="bdgs">
                                                <span class="ut-bdg c">최근 시작 공채</span>
                                            </span>
                                            <h4 class="box-tit">SK매직서비스(주) 서비스매니저 신입/경력사원 채용</h4>
                                            <span class="box-bot">
                                                <span class="info-txt">SK매직서비스㈜</span>
                                                <span class="info-gray">D-6</span>
                                            </span>
                                        </a>
                                </div>
                        </li>
                        <li>
                                <div class="box">
                                        <a href="/Recruit/GI_Read/43304210" class="link" target="_blank" data-rcmdsvcagi-galabel="최근 시작 공채">
                                            <span class="bdgs">
                                                <span class="ut-bdg c">최근 시작 공채</span>
                                            </span>
                                            <h4 class="box-tit">웨스틴 조선 서울 식음팀 신입 채용</h4>
                                            <span class="box-bot">
                                                <span class="info-txt">㈜조선호텔앤리조트 웨스틴조선서울</span>
                                                <span class="info-gray">D-29</span>
                                            </span>
                                        </a>
                                </div>
                                <div class="box">
                                        <a href="/Recruit/GI_Read/43303994" class="link" target="_blank" data-rcmdsvcagi-galabel="최근 시작 공채">
                                            <span class="bdgs">
                                                <span class="ut-bdg c">최근 시작 공채</span>
                                            </span>
                                            <h4 class="box-tit">기획 경력사원 채용</h4>
                                            <span class="box-bot">
                                                <span class="info-txt">㈜다우기술</span>
                                                <span class="info-gray">D-9</span>
                                            </span>
                                        </a>
                                </div>
                        </li>
                    <li>
                        <div class="box">
                            <a href="/Top100/?Main_Career_Type=1&amp;Search_Type=1" class="bnr-box devBnrBox" data-rcmdsvc-galabel="일간 채용 TOP100_1">
                                <img src="//i.jobkorea.kr/content/images/personal/main/ps_bnr2.png" alt="채용 TOP100 실시간 인기 채용 공고를 확인해 보세요!">
                            </a>
                        </div>
                    </li>
                    <li>
                            <div class="box">
                                    <a href="/Recruit/GI_Read/43225414" class="link" data-rcmdsvcagi-galabel="마감 임박 공채" target="_blank">
                                        <span class="bdgs">
                                            <span class="ut-bdg d">마감 임박 공채</span>
                                        </span>
                                        <h4 class="box-tit">특판 현장 현장대리인 경력사원 채용(계약직)</h4>
                                        <span class="box-bot">
                                            <span class="info-txt">㈜LX하우시스</span>
                                            <span class="info-gray">오늘마감</span>
                                        </span>
                                    </a>
                            </div>
                            <div class="box">
                                    <a href="/Recruit/GI_Read/43226057" class="link" data-rcmdsvcagi-galabel="마감 임박 공채" target="_blank">
                                        <span class="bdgs">
                                            <span class="ut-bdg d">마감 임박 공채</span>
                                        </span>
                                        <h4 class="box-tit">현장 안전관리자 신입사원 채용</h4>
                                        <span class="box-bot">
                                            <span class="info-txt">㈜LX하우시스</span>
                                            <span class="info-gray">오늘마감</span>
                                        </span>
                                    </a>
                            </div>
                    </li>
                </ul>
            </div>
        </div>
        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
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
</div>
            </div>
            <div class="point-right point-box">
                <div class="notice-wrap" style="margin:0; height: 100%">
    
<h3 class="tit">
    <a href="/help/notice?tab=2" class="ico-arw" target="_blank" onclick="GA_Event('홈_PC', '공지', '공지사항 더보기');">
        공지
    </a>
</h3>
<div class="noti-slide">
    <div class="swiper-container swiper-container-initialized swiper-container-vertical">
        <ul class="swiper-wrapper lst" style="transition-duration: 0ms; transform: translate3d(0px, -88px, 0px);">
                <li class="swiper-slide" data-swiper-slide-index="0" style="height: 22px;">
                    <a href="/help/notice/view?no=14706" onclick="GA_Event('홈_PC', '공지사항', '[공지] 잡코리아 원픽 TVC 이벤트 `서비스/이벤트 알림 설정` 작업');" target="_blank">[공지] 잡코리아 원픽 TVC 이벤트 `서비스/이벤트 알림 설정` 작업</a>
                </li>
                <li class="swiper-slide" data-swiper-slide-index="1" style="height: 22px;">
                    <a href="/help/notice/view?no=14703" onclick="GA_Event('홈_PC', '공지사항', '잡코리아 개인정보처리방침 개정 안내');" target="_blank">잡코리아 개인정보처리방침 개정 안내</a>
                </li>
                <li class="swiper-slide swiper-slide-prev" data-swiper-slide-index="2" style="height: 22px;">
                    <a href="/help/notice/view?no=14702" onclick="GA_Event('홈_PC', '공지사항', '2단계 인증 강화');" target="_blank">2단계 인증 강화</a>
                </li>
                <li class="swiper-slide swiper-slide-active" data-swiper-slide-index="3" style="height: 22px;">
                    <a href="/help/notice/view?no=14701" onclick="GA_Event('홈_PC', '공지사항', '잡코리아 이용약관 개정 안내');" target="_blank">잡코리아 이용약관 개정 안내</a>
                </li>
        <li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="0" style="height: 22px;">
                    <a href="/help/notice/view?no=14706" onclick="GA_Event('홈_PC', '공지사항', '[공지] 잡코리아 원픽 TVC 이벤트 `서비스/이벤트 알림 설정` 작업');" target="_blank">[공지] 잡코리아 원픽 TVC 이벤트 `서비스/이벤트 알림 설정` 작업</a>
                </li></ul>
        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
    <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
</div>
</div>
            </div>
        </div>
    </div>
    <hr>


<h2 class="blind">상품 리스트 영역</h2>
<div id="Prdt_BnnrFirstVVIP">
    <div class="grand_banner_wrap">
        <h3 class="header">채용관</h3>

        <ul class="list list_firstvvip">            
                    <li data-match="{&quot;gno&quot;:43272241,&quot;jobTypes&quot;:&quot;,1000057,1000266,1000267,1000283,1000284,1000285,1000327,1000330,1000331,1000332,1000337,1000338,1000339,1000340,&quot;,&quot;workLocal&quot;:&quot;,I000,J000,L000,O000,Q000,&quot;,&quot;careerTypeCode&quot;:3}" class="branding expand">
                            <a href="/Recruit/Booth_GI_Read/43272241?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" class="card-wrap" target="_blank" data-gno="43272241">
                                <div class="company">
                                    <span class="name">
                                        <div class="image">
                                            <img src="//file1.jobkorea.co.kr/BoothBanner/2023/11/Banner_0V5J7SQ23110909472483.jpg" alt="" onerror="this.src='//file1.jobkorea.co.kr/Mailing/2023/img_600_464_02.png';">
                                            <span class="logo"><img src="//imgs.jobkorea.co.kr/Images/Logo/180/h/o/2615a00azboazwg2_3720w8cwgvskhijaw.gif?p=y&amp;hash=c&amp;upddt=20231109151300" width="180" height="72" alt="" onerror="this.src='//img.jobkorea.co.kr/Images/Logo/180/l/o/logo_none_180.gif';"></span>
                                        </div>
                                    </span> 
                                </div>
                                <div class="description">㈜한국하우톤 각 부문 신입/경력사원 채용 [명문장수 수상기업]</div>
                                <div class="addition">
                                    <div class="summary">
                                        창의적인 글로벌 인재로 성장하며<br>
가치있는 삶을 실현시킵니다.
                                    </div>
                                </div>
                                <div class="button-recruit">채용 바로가기</div> 
                                <div class="extra">
                                    <button type="button" class="btn devScrap45729270 btnScrap" onclick="GA_Event('홈_PC','요약','스크랩_' + ($(this).hasClass('btnScrap_on')?'해제':'등록') + '_㈜한국하우톤_㈜한국하우톤 각 부문 신입/경력사원 채용 [명문장수 수상기업]');doScrap(45729270);SpaceClick(43272241,42);">채용정보 스크랩</button> <div class="dday">D-11</div>
                                </div>
                            </a>
                    </li>
                    <li data-match="{&quot;gno&quot;:43280450,&quot;jobTypes&quot;:&quot;,1000043,1000229,1000232,1000233,1000238,1000239,1000277,1000283,1000284,1000356,1000357,1000359,1000361,1000363,&quot;,&quot;workLocal&quot;:&quot;,A000,B000,D000,F000,G000,I000,K000,O000,Q000,&quot;,&quot;careerTypeCode&quot;:1}" class="branding">
                            <a href="/Recruit/Booth_GI_Read/43280450?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" class="card-wrap" target="_blank" data-gno="43280450">
                                <div class="company">
                                    <span class="name">
                                        <div class="image">
                                            <img src="//file1.jobkorea.co.kr/BoothBanner/2023/09/Banner_Ywlha0c23091117440032.png" alt="" onerror="this.src='//file1.jobkorea.co.kr/Mailing/2023/img_600_464_02.png';">
                                            <span class="logo"><img src="//imgs.jobkorea.co.kr/Images/Logo/180/l/o/2293e00elhvnx07_2020g7bgkgk482eg.gif?p=y&amp;hash=c&amp;upddt=20231111175101" width="180" height="72" alt="" onerror="this.src='//img.jobkorea.co.kr/Images/Logo/180/l/o/logo_none_180.gif';"></span>
                                        </div>
                                    </span> 
                                </div>
                                <div class="description">[삼성에스원] 빌딩시설관리/SI기술/정보보안영업 부문 신입사원 채용</div>
                                <div class="addition">
                                    <div class="summary">
                                        국내 최초의 보안회사로<br>
고객 여러분들의 ‘안전과 안심’을<br>
지켜드리기 위해 노력해 왔습니다.
                                    </div>
                                </div>
                                <div class="button-recruit">채용 바로가기</div> 
                                <div class="extra">
                                    <button type="button" class="btn devScrap45736431 btnScrap" onclick="GA_Event('홈_PC','요약','스크랩_' + ($(this).hasClass('btnScrap_on')?'해제':'등록') + '_㈜에스원_[삼성에스원] 빌딩시설관리/SI기술/정보보안영업 부문 신입사원 채용');doScrap(45736431);SpaceClick(43280450,42);">채용정보 스크랩</button> <div class="dday">D-4</div>
                                </div>
                                    <div class="company-background-image"></div>
                            </a>
                    </li>
                    <li data-match="{&quot;gno&quot;:43270257,&quot;jobTypes&quot;:&quot;,1000055,1000195,1000202,1000203,1000207,1000222,1000236,1000242,1000265,1000266,1000267,1000277,1000279,1000282,1000283,1000326,1000327,1000328,1000331,1000332,1000337,1000338,1000339,1000340,1000343,1000356,1000357,1000358,1000359,1000361,1000366,1000367,&quot;,&quot;workLocal&quot;:&quot;,B000,D000,L000,O000,&quot;,&quot;careerTypeCode&quot;:3}" class="branding">
                            <a href="/Recruit/Booth_GI_Read/43270257?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" class="card-wrap" target="_blank" data-gno="43270257">
                                <div class="company">
                                    <span class="name">
                                        <div class="image">
                                            <img src="//file1.jobkorea.co.kr/BoothBanner/2023/09/Banner_CwAVRZZ23091412361225.jpg" alt="" onerror="this.src='//file1.jobkorea.co.kr/Mailing/2023/img_600_464_02.png';">
                                            <span class="logo"><img src="//imgs.jobkorea.co.kr/Images/Logo/180/i/n/2615r00rdrdkhdm2_3720i8cijcndmheri.gif?p=y&amp;hash=c&amp;upddt=20231109163600" width="180" height="72" alt="" onerror="this.src='//img.jobkorea.co.kr/Images/Logo/180/l/o/logo_none_180.gif';"></span>
                                        </div>
                                    </span> 
                                </div>
                                <div class="description">2023년 현대제철 신규채용<br></div>
                                <div class="addition">
                                    <div class="summary">
                                        사람과 사람 사이에<br>철로 만들어가는 행복한 세상<br>그 세상을 열어갈 인재를 모십니다.
                                    </div>
                                </div>
                                <div class="button-recruit">채용 바로가기</div> 
                                <div class="extra">
                                    <button type="button" class="btn devScrap45727451 btnScrap" onclick="GA_Event('홈_PC','요약','스크랩_' + ($(this).hasClass('btnScrap_on')?'해제':'등록') + '_현대제철주식회사_2023년 현대제철 신규채용');doScrap(45727451);SpaceClick(43270257,42);">채용정보 스크랩</button> <div class="dday">D-11</div>
                                </div>
                                    <div class="company-background-image"></div>
                            </a>
                    </li>
                    <li data-match="{&quot;gno&quot;:43296252,&quot;jobTypes&quot;:&quot;,1000043,1000238,1000239,1000244,1000246,1000283,1000317,1000355,1000356,1000359,1000360,1000361,1000363,1000369,1000371,&quot;,&quot;workLocal&quot;:&quot;,I000,Q000,&quot;,&quot;careerTypeCode&quot;:2}" class="branding">
                            <a href="/Recruit/Booth_GI_Read/43296252?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" class="card-wrap" target="_blank" data-gno="43296252">
                                <div class="company">
                                    <span class="name">
                                        <div class="image">
                                            <img src="//file1.jobkorea.co.kr/BoothBanner/2023/09/Banner_Ywlha0c23091117440032.png" alt="" onerror="this.src='//file1.jobkorea.co.kr/Mailing/2023/img_600_464_02.png';">
                                            <span class="logo"><img src="//imgs.jobkorea.co.kr/Images/Logo/180/l/o/2293e00elhvnx07_2020g7bgkgk482eg.gif?p=y&amp;hash=c&amp;upddt=20231110132700" width="180" height="72" alt="" onerror="this.src='//img.jobkorea.co.kr/Images/Logo/180/l/o/logo_none_180.gif';"></span>
                                        </div>
                                    </span> 
                                </div>
                                <div class="description">[삼성에스원] SI기술, 건물관리,<br>정보보안부문 경력사원 채용</div>
                                <div class="addition">
                                    <div class="summary">
                                        국내 최초의 보안회사로<br>
고객 여러분들의 ‘안전과 안심’을<br>
지켜드리기 위해 노력해 왔습니다.
                                    </div>
                                </div>
                                <div class="button-recruit">채용 바로가기</div> 
                                <div class="extra">
                                    <button type="button" class="btn devScrap45750418 btnScrap" onclick="GA_Event('홈_PC','요약','스크랩_' + ($(this).hasClass('btnScrap_on')?'해제':'등록') + '_㈜에스원_[삼성에스원] SI기술, 건물관리,<br>정보보안부문 경력사원 채용');doScrap(45750418);SpaceClick(43296252,42);">채용정보 스크랩</button> <div class="dday">D-8</div>
                                </div>
                                    <div class="company-background-image"></div>
                            </a>
                    </li>
                    <li data-match="{&quot;gno&quot;:43234751,&quot;jobTypes&quot;:&quot;,1000004,1000277,1000284,1000306,1000311,1000313,1000314,1000316,1000318,1000380,1000406,&quot;,&quot;workLocal&quot;:&quot;,B000,E000,H000,I000,J000,K000,Q000,&quot;,&quot;careerTypeCode&quot;:3}" class="branding">
                            <a href="/Recruit/Booth_GI_Read/43234751?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" class="card-wrap" target="_blank" data-gno="43234751">
                                <div class="company">
                                    <span class="name">
                                        <div class="image">
                                            <img src="//file1.jobkorea.co.kr/BoothBanner/2023/11/Banner_O8OzuJ423110214461614.jpg" alt="" onerror="this.src='//file1.jobkorea.co.kr/Mailing/2023/img_600_464_02.png';">
                                            <span class="logo"><img src="//imgs.jobkorea.co.kr/Images/Logo/180/j/u/2338r00rppgfc2264_3120z9dzbar98222rz.gif?p=y&amp;hash=c&amp;upddt=20231111175101" width="180" height="72" alt="" onerror="this.src='//img.jobkorea.co.kr/Images/Logo/180/l/o/logo_none_180.gif';"></span>
                                        </div>
                                    </span> 
                                </div>
                                <div class="description">쥬비스 다이어트 2024년도 인턴 채용 모집</div>
                                <div class="addition">
                                    <div class="summary">
                                        2002년 설립, 매출 712억,<br>
토탈헬스케어기업, 인원수 400명
                                    </div>
                                </div>
                                <div class="button-recruit">채용 바로가기</div> 
                                <div class="extra">
                                    <button class="btn btnDirect" onclick="javascript:lay_Quick_Open2('45696334');SpaceClick(43234751,42);">즉시지원</button><button type="button" class="btn devScrap45696334 btnScrap" onclick="GA_Event('홈_PC','요약','스크랩_' + ($(this).hasClass('btnScrap_on')?'해제':'등록') + '_㈜쥬비스다이어트_쥬비스 다이어트 2024년도 인턴 채용 모집');doScrap(45696334);SpaceClick(43234751,42);">채용정보 스크랩</button> <div class="dday">D-13</div>
                                </div>
                                    <div class="company-background-image"></div>
                            </a>
                    </li>
                    <li data-match="{&quot;gno&quot;:43276900,&quot;jobTypes&quot;:&quot;,1000041,1000186,1000218,1000229,1000233,1000234,1000236,&quot;,&quot;workLocal&quot;:&quot;,B000,&quot;,&quot;careerTypeCode&quot;:1}" class="branding">
                            <a href="/Recruit/Booth_GI_Read/43276900?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" class="card-wrap" target="_blank" data-gno="43276900">
                                <div class="company">
                                    <span class="name">
                                        <div class="image">
                                            <img src="//file1.jobkorea.co.kr/BoothBanner/2023/11/Banner_ivOs56O23110813593621.jpg" alt="" onerror="this.src='//file1.jobkorea.co.kr/Mailing/2023/img_600_464_02.png';">
                                            <span class="logo"><img src="//imgs.jobkorea.co.kr/Images/Logo/180/d/a/2459q00qjezmvvsnw2_3320naenwztlqacztqn.gif?p=y&amp;hash=c&amp;upddt=20231111175101" width="180" height="72" alt="" onerror="this.src='//img.jobkorea.co.kr/Images/Logo/180/l/o/logo_none_180.gif';"></span>
                                        </div>
                                    </span> 
                                </div>
                                <div class="description">2024 카카오 채용 연계형 겨울 인턴십</div>
                                <div class="addition">
                                    <div class="summary">
                                        카카오에서 새롭게 반짝일 인턴 크루를 기다립니다!<br>
#프로그래밍 #인프라 #서비스비즈
                                    </div>
                                </div>
                                <div class="button-recruit">채용 바로가기</div> 
                                <div class="extra">
                                    <button type="button" class="btn devScrap45733274 btnScrap" onclick="GA_Event('홈_PC','요약','스크랩_' + ($(this).hasClass('btnScrap_on')?'해제':'등록') + '_㈜카카오_2024 카카오 채용 연계형 겨울 인턴십');doScrap(45733274);SpaceClick(43276900,42);">채용정보 스크랩</button> <div class="dday">D-9</div>
                                </div>
                                    <div class="company-background-image"></div>
                            </a>
                    </li>
                    <li data-match="{&quot;gno&quot;:43155063,&quot;jobTypes&quot;:&quot;,1000016,1000277,1000279,1000283,1000284,1000285,&quot;,&quot;workLocal&quot;:&quot;,B000,F000,H000,O000,&quot;,&quot;careerTypeCode&quot;:1}" class="branding">
                            <a href="/Recruit/Booth_GI_Read/43155063?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" class="card-wrap" target="_blank" data-gno="43155063">
                                <div class="company">
                                    <span class="name">
                                        <div class="image">
                                            <img src="//file1.jobkorea.co.kr/BoothBanner/2023/10/Banner_GaU4OwW23102710435081.jpg" alt="" onerror="this.src='//file1.jobkorea.co.kr/Mailing/2023/img_600_464_02.png';">
                                            <span class="logo"><img src="//imgs.jobkorea.co.kr/Images/Logo/180/i/k/2615r00rddmdmsr2_3720m8cmvlkijdmrm.gif?p=y&amp;hash=c&amp;upddt=20231111175101" width="180" height="72" alt="" onerror="this.src='//img.jobkorea.co.kr/Images/Logo/180/l/o/logo_none_180.gif';"></span>
                                        </div>
                                    </span> 
                                </div>
                                <div class="description">2023년 신입사원 채용 (컨설팅 세일즈)</div>
                                <div class="addition">
                                    <div class="summary">
                                        #일본 시가총액 Top2 #영업이익률 50% 이상 #46개국 240개 영업소 #신입사원 초봉 4,500만원
                                    </div>
                                </div>
                                <div class="button-recruit">채용 바로가기</div> 
                                <div class="extra">
                                    <button class="btn btnDirect" onclick="javascript:lay_Quick_Open2('45625558');SpaceClick(43155063,42);">즉시지원</button><button type="button" class="btn devScrap45625558 btnScrap" onclick="GA_Event('홈_PC','요약','스크랩_' + ($(this).hasClass('btnScrap_on')?'해제':'등록') + '_키엔스코리아㈜_2023년 신입사원 채용 (컨설팅 세일즈)');doScrap(45625558);SpaceClick(43155063,42);">채용정보 스크랩</button> <div class="dday">D-1</div>
                                </div>
                                    <div class="company-background-image"></div>
                            </a>
                    </li>
                    <li data-match="{&quot;gno&quot;:43209745,&quot;jobTypes&quot;:&quot;,1000038,1000040,1000043,1000046,1000047,1000185,1000186,1000188,1000194,1000207,1000210,1000213,1000224,1000227,1000231,1000232,1000233,1000234,1000235,1000236,1000237,1000238,1000239,1000242,1000245,1000247,1000266,1000267,1000268,1000277,1000278,1000282,1000283,1000284,1000285,1000313,&quot;,&quot;workLocal&quot;:&quot;,B000,I000,&quot;,&quot;careerTypeCode&quot;:2}" class="branding">
                            <a href="/Recruit/Booth_GI_Read/43209745?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" class="card-wrap" target="_blank" data-gno="43209745">
                                <div class="company">
                                    <span class="name">
                                        <div class="image">
                                            <img src="//file1.jobkorea.co.kr/BoothBanner/2023/09/Banner_SzCvy4e23091516050642.png" alt="" onerror="this.src='//file1.jobkorea.co.kr/Mailing/2023/img_600_464_02.png';">
                                            <span class="logo"><img src="//imgs.jobkorea.co.kr/Images/Logo/180/i/n/2293d00dari5339_2020j7bjc86532dj.gif?p=y&amp;hash=c&amp;upddt=20231111175101" width="180" height="72" alt="" onerror="this.src='//img.jobkorea.co.kr/Images/Logo/180/l/o/logo_none_180.gif';"></span>
                                        </div>
                                    </span> 
                                </div>
                                <div class="description">2023년도 부문별 경력 인재모집<br></div>
                                <div class="addition">
                                    <div class="summary">
                                        IT기술이 가진 무한한 가능성<br>
리테일 산업의 미래를 만들어 나가는곳<br>
여러분의 지원을 기다립니다
                                    </div>
                                </div>
                                <div class="button-recruit">채용 바로가기</div> 
                                <div class="extra">
                                    <button type="button" class="btn devScrap45673964 btnScrap" onclick="GA_Event('홈_PC','요약','스크랩_' + ($(this).hasClass('btnScrap_on')?'해제':'등록') + '_㈜신세계아이앤씨_2023년도 부문별 경력 인재모집');doScrap(45673964);SpaceClick(43209745,42);">채용정보 스크랩</button> <div class="dday dday_always">상시채용</div>
                                </div>
                                    <div class="company-background-image"></div>
                            </a>
                    </li>
                    <li data-match="{&quot;gno&quot;:34208668,&quot;jobTypes&quot;:&quot;,1000046,1000185,1000186,1000187,1000188,1000193,1000201,1000202,1000216,1000217,1000220,1000224,1000229,1000230,1000231,1000232,1000233,1000234,1000235,1000236,1000237,1000239,1000241,1000242,1000244,1000245,1000247,1000255,1000256,1000266,1000277,1000282,1000283,1000284,1000285,1000387,1000388,&quot;,&quot;workLocal&quot;:&quot;,I000,&quot;,&quot;careerTypeCode&quot;:3}" class="branding">
                            <a href="/Recruit/Booth_GI_Read/34208668?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" class="card-wrap" target="_blank" data-gno="34208668">
                                <div class="company">
                                    <span class="name">
                                        <div class="image">
                                            <img src="//file1.jobkorea.co.kr/BoothBanner/2023/08/Banner_DhyJKig23080815211161.png" alt="" onerror="this.src='//file1.jobkorea.co.kr/Mailing/2023/img_600_464_03.png';">
                                            <span class="logo"><img src="//imgs.jobkorea.co.kr/Images/Logo/180/w/o/2615t00twwgqqqq2_3720w8cwgtwazijtw.gif?p=y&amp;hash=c&amp;upddt=20231111175101" width="180" height="72" alt="" onerror="this.src='//img.jobkorea.co.kr/Images/Logo/180/l/o/logo_none_180.gif';"></span>
                                        </div>
                                    </span> 
                                </div>
                                <div class="description">각 부문별 경력/신입 인재영입<br></div>
                                <div class="addition">
                                    <div class="summary">
                                        설립년도 : 2011.03.10 (13년차) <br>
매출액 : 2조 9,515억 (2022년 기준)<br>
                                    </div>
                                </div>
                                <div class="button-recruit">채용 바로가기</div> 
                                <div class="extra">
                                    <button type="button" class="btn devScrap37630131 btnScrap" onclick="GA_Event('홈_PC','요약','스크랩_' + ($(this).hasClass('btnScrap_on')?'해제':'등록') + '_㈜우아한형제들_각 부문별 경력/신입 인재영입');doScrap(37630131);SpaceClick(34208668,42);">채용정보 스크랩</button> <div class="dday dday_always">상시채용</div>
                                </div>
                                    <div class="company-background-image"></div>
                            </a>
                    </li>
                    <li data-match="{&quot;gno&quot;:43189151,&quot;jobTypes&quot;:&quot;,1000052,1000053,1000054,1000057,1000233,1000277,1000279,1000282,1000283,1000284,1000326,1000327,1000328,1000330,1000332,1000333,1000336,1000337,1000338,1000339,1000341,&quot;,&quot;workLocal&quot;:&quot;,B000,K000,&quot;,&quot;careerTypeCode&quot;:3}" class="branding">
                            <a href="/Recruit/Booth_GI_Read/43189151?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" class="card-wrap" target="_blank" data-gno="43189151">
                                <div class="company">
                                    <span class="name">
                                        <div class="image">
                                            <img src="//file1.jobkorea.co.kr/BoothBanner/2023/10/Banner_aXdNlZN23102716463428.jpg" alt="" onerror="this.src='//file1.jobkorea.co.kr/Mailing/2023/img_600_464_03.png';">
                                            <span class="logo"><img src="//imgs.jobkorea.co.kr/Images/Logo/180/w/t/2615t00twmvhemv2_3720k8ckhjlvscntk.gif?p=y&amp;hash=c&amp;upddt=20231108105800" width="180" height="72" alt="" onerror="this.src='//img.jobkorea.co.kr/Images/Logo/180/l/o/logo_none_180.gif';"></span>
                                        </div>
                                    </span> 
                                </div>
                                <div class="description">2023년 신입/경력 각부문 모집<br></div>
                                <div class="addition">
                                    <div class="summary">
                                        생산,생산관리,기술영업,PLC제어,PC제어,진공장비개발,자동화개발,연구소/공정기술개발
                                    </div>
                                </div>
                                <div class="button-recruit">채용 바로가기</div> 
                                <div class="extra">
                                    <button class="btn btnDirect" onclick="javascript:lay_Quick_Open2('45656100');SpaceClick(43189151,42);">즉시지원</button><button type="button" class="btn devScrap45656100 btnScrap" onclick="GA_Event('홈_PC','요약','스크랩_' + ($(this).hasClass('btnScrap_on')?'해제':'등록') + '_㈜제4기한국_2023년 신입/경력 각부문 모집');doScrap(45656100);SpaceClick(43189151,42);">채용정보 스크랩</button> <div class="dday">D-2</div>
                                </div>
                                    <div class="company-background-image"></div>
                            </a>
                    </li>
                    <li data-match="{&quot;gno&quot;:43240196,&quot;jobTypes&quot;:&quot;,1000038,1000229,1000230,1000231,1000232,1000233,1000234,1000239,1000244,1000245,&quot;,&quot;workLocal&quot;:&quot;,B000,I000,&quot;,&quot;careerTypeCode&quot;:1}" class="branding">
                            <a href="/Recruit/Booth_GI_Read/43240196?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" class="card-wrap" target="_blank" data-gno="43240196">
                                <div class="company">
                                    <span class="name">
                                        <div class="image">
                                            <img src="//file1.jobkorea.co.kr/BoothBanner/2023/09/Banner_bJOxjVa23091114394929.png" alt="" onerror="this.src='//file1.jobkorea.co.kr/Mailing/2023/img_600_464_03.png';">
                                            <span class="logo"><img src="//imgs.jobkorea.co.kr/Images/Logo/180/m/i/2293u00uwloriuw_2020d7bdaqpgk2ud.gif?p=y&amp;hash=c&amp;upddt=20231111175101" width="180" height="72" alt="" onerror="this.src='//img.jobkorea.co.kr/Images/Logo/180/l/o/logo_none_180.gif';"></span>
                                        </div>
                                    </span> 
                                </div>
                                <div class="description">2023년 하반기 신입사원 채용<br></div>
                                <div class="addition">
                                    <div class="summary">
                                        (주)미라콤아이앤씨에서 스마트팩토리사업을 이끌어갈 인재를 모집합니다.<br>
채용 홈페이지에서 온라인 접수
                                    </div>
                                </div>
                                <div class="button-recruit">채용 바로가기</div> 
                                <div class="extra">
                                    <button type="button" class="btn devScrap45700992 btnScrap" onclick="GA_Event('홈_PC','요약','스크랩_' + ($(this).hasClass('btnScrap_on')?'해제':'등록') + '_㈜미라콤아이앤씨_2023년 하반기 신입사원 채용');doScrap(45700992);SpaceClick(43240196,42);">채용정보 스크랩</button> <div class="dday">D-4</div>
                                </div>
                                    <div class="company-background-image"></div>
                            </a>
                    </li>
                    <li data-match="{&quot;gno&quot;:43244041,&quot;jobTypes&quot;:&quot;,1000014,1000016,1000224,1000265,1000267,1000268,1000270,1000273,1000277,1000278,1000284,1000285,1000326,1000327,1000329,1000361,1000362,1000363,1000413,&quot;,&quot;workLocal&quot;:&quot;,B000,P000,&quot;,&quot;careerTypeCode&quot;:3}" class="">
                            <div class="company">
                                <span class="name">
                                    <a href="https://www.jobkorea.co.kr/Recruit/Booth_GI_Read/43244041?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" onclick="Job_DB_window(this.href,1000,500);SpaceClick(43244041,42);return false;" target="_blank"><span class="logo"><img src="//imgs.jobkorea.co.kr/Images/Logo/180/y/o/2976u00ukcjwzlstpxx_3320kbfkgtppnkgai2uk.gif?p=y&amp;hash=c&amp;upddt=20231111175101" width="180" height="72" alt="" onerror="this.src='//img.jobkorea.co.kr/Images/Logo/180/l/o/logo_none_180.gif';"></span>용마로지스㈜</a>
                                </span>
                            </div>
                            <div class="description"><a href="https://www.jobkorea.co.kr/Recruit/Booth_GI_Read/43244041?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" onclick="Job_DB_window(this.href,1000,500);SpaceClick(43244041,42);return false;" target="_blank">2023년 11월, 각 부문별<br>신입 및 경력 채용</a></div>
                            <div class="extra"><button type="button" class="btn devScrap45704498 btnScrap" onclick="GA_Event('홈_PC','요약','스크랩_' + ($(this).hasClass('btnScrap_on')?'해제':'등록') + '_용마로지스㈜_2023년 11월, 각 부문별<br>신입 및 경력 채용');doScrap(45704498);SpaceClick(43244041,42);">채용정보 스크랩</button> <div class="dday">D-9</div></div>
                            <div class="company-background-image"><img src="https://file1.jobkorea.co.kr//banner/images/26물류운송03.jpg" alt="용마로지스㈜ 썸네일" onerror="this.src='//file1.jobkorea.co.kr/banner/images/100006303.jpg';"></div>
                    </li>
                    <li class="item_adagency" data-gno="0">
                        <a href="https://www.jobkorea.co.kr/theme/venture" onclick="PrivateLink(88173, this.href);PrivateClick(88173, 42); return false;" target="_blank">
                            <img src="https://imgs.jobkorea.co.kr/img1/ADLink/Banner/Venture_PC_Space42.png?20231025164000" alt="벤처기업 공동채용 우수인재 모집">
                        </a>
                    </li>
                    <li data-match="" class="">
                            <div class="company">
                                <span class="name">
                                    <a href="https://jrs.jobkorea.co.kr/hanatrust" onclick="bannerWin(this.href,'18','45677292','511894');SpaceClick(43213430,42); return false;" target="_blank"><span class="logo"><img src="//imgs.jobkorea.co.kr/Images/Logo/180/h/a/2615a00azijzpwg2_3720q8cqqqqqqheaq.gif?p=y&amp;hash=c&amp;upddt=20231111175101" width="180" height="72" alt="" onerror="this.src='//img.jobkorea.co.kr/Images/Logo/180/l/o/logo_none_180.gif';"></span>㈜하나자산신탁</a>
                                </span>
                            </div>
                            <div class="description"><a href="https://jrs.jobkorea.co.kr/hanatrust" onclick="bannerWin(this.href,'18','45677292','511894');SpaceClick(43213430,42); return false;" target="_blank">2023년 하반기 신입사원 채용<br></a></div>
                            <div class="extra"><button type="button" class="btn devScrap45677292 btnScrap" onclick="GA_Event('홈_PC','요약','스크랩_' + ($(this).hasClass('btnScrap_on')?'해제':'등록') + '_㈜하나자산신탁_2023년 하반기 신입사원 채용');doScrap(45677292);SpaceClick(43213430,42);">채용정보 스크랩</button> <div class="dday">D-3</div></div>
                            <div class="company-background-image"><img src="https://file1.jobkorea.co.kr//banner/images/46부동산중개06.jpg" alt="㈜하나자산신탁 썸네일" onerror="this.src='//file1.jobkorea.co.kr/banner/images/100006303.jpg';"></div>
                    </li>
                    <li data-match="{&quot;gno&quot;:43232887,&quot;jobTypes&quot;:&quot;,1000001,1000201,1000202,1000248,1000255,1000284,1000285,1000286,1000287,1000288,1000302,1000303,1000311,1000356,1000359,1000361,1000363,1000389,&quot;,&quot;workLocal&quot;:&quot;,I000,K000,N000,&quot;,&quot;careerTypeCode&quot;:1}" class="">
                            <div class="company">
                                <span class="name">
                                    <a href="https://www.jobkorea.co.kr/Recruit/Booth_GI_Read/43232887?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" onclick="Job_DB_window(this.href,1000,500);SpaceClick(43232887,42);return false;" target="_blank"><span class="logo"><img src="//imgs.jobkorea.co.kr/Images/Logo/180/s/h/2615c00cnrdheaz2_3720a8cazheqqjlca.gif?p=y&amp;hash=c&amp;upddt=20231111175101" width="180" height="72" alt="" onerror="this.src='//img.jobkorea.co.kr/Images/Logo/180/l/o/logo_none_180.gif';"></span>㈜호텔신라</a>
                                </span>
                            </div>
                            <div class="description"><a href="https://www.jobkorea.co.kr/Recruit/Booth_GI_Read/43232887?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" onclick="Job_DB_window(this.href,1000,500);SpaceClick(43232887,42);return false;" target="_blank">2023년 호텔신라 4급 신입사원 채용<br></a></div>
                            <div class="extra"><button type="button" class="btn devScrap45694616 btnScrap" onclick="GA_Event('홈_PC','요약','스크랩_' + ($(this).hasClass('btnScrap_on')?'해제':'등록') + '_㈜호텔신라_2023년 호텔신라 4급 신입사원 채용');doScrap(45694616);SpaceClick(43232887,42);">채용정보 스크랩</button> <div class="dday">D-4</div></div>
                            <div class="company-background-image"><img src="https://file1.jobkorea.co.kr//banner/images/01호텔여행항공06.jpg" alt="㈜호텔신라 썸네일" onerror="this.src='//file1.jobkorea.co.kr/banner/images/100006303.jpg';"></div>
                    </li>
                    <li data-match="{&quot;gno&quot;:43089629,&quot;jobTypes&quot;:&quot;,1000041,1000046,1000185,1000186,1000187,1000207,1000210,1000217,1000218,1000219,1000220,1000221,1000224,1000229,1000231,1000232,1000233,1000255,1000256,1000277,1000282,&quot;,&quot;workLocal&quot;:&quot;,I000,&quot;,&quot;careerTypeCode&quot;:3}" class="">
                            <div class="company">
                                <span class="name">
                                    <a href="https://www.jobkorea.co.kr/Recruit/Booth_GI_Read/43089629?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" onclick="Job_DB_window(this.href,1000,500);SpaceClick(43089629,42);return false;" target="_blank"><span class="logo"><img src="//imgs.jobkorea.co.kr/Images/Logo/180/m/i/2615o00ouijtwcn2_3720r8crdijrddmor.gif?p=y&amp;hash=c&amp;upddt=20231111175101" width="180" height="72" alt="" onerror="this.src='//img.jobkorea.co.kr/Images/Logo/180/l/o/logo_none_180.gif';"></span>㈜헥토이노베이션</a>
                                </span>
                            </div>
                            <div class="description"><a href="https://www.jobkorea.co.kr/Recruit/Booth_GI_Read/43089629?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" onclick="Job_DB_window(this.href,1000,500);SpaceClick(43089629,42);return false;" target="_blank">헥토이노베이션 직군별 인재 모집(서비스기획/사업기획/개발/UX/UI 등)</a></div>
                            <div class="extra"><button type="button" class="btn devScrap45567606 btnScrap" onclick="GA_Event('홈_PC','요약','스크랩_' + ($(this).hasClass('btnScrap_on')?'해제':'등록') + '_㈜헥토이노베이션_헥토이노베이션 직군별 인재 모집(서비스기획/사업기획/개발/UX/UI 등)');doScrap(45567606);SpaceClick(43089629,42);">채용정보 스크랩</button> <div class="dday">D-19</div></div>
                            <div class="company-background-image"><img src="https://imgs.jobkorea.co.kr/img3/_thumb/286x0/Company/Visual_Co/images/2023/9/JK_CO_i3sTBhI23090713410097_2101524.jpg" alt="㈜헥토이노베이션 썸네일" onerror="this.src='//file1.jobkorea.co.kr/banner/images/100006303.jpg';"></div>
                    </li>
                    <li data-match="{&quot;gno&quot;:43173214,&quot;jobTypes&quot;:&quot;,1000014,1000192,1000193,1000265,&quot;,&quot;workLocal&quot;:&quot;,A000,B000,C000,L000,M000,O000,P000,&quot;,&quot;careerTypeCode&quot;:4}" class="">
                            <div class="company">
                                <span class="name">
                                    <a href="https://www.jobkorea.co.kr/Recruit/Booth_GI_Read/43173214?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" onclick="Job_DB_window(this.href,1000,500);SpaceClick(43173214,42);return false;" target="_blank"><span class="logo"><img src="//imgs.jobkorea.co.kr/Images/Logo/180/c/o/2338u00uszbwqbvfc_3120x9dxwledigh2ux.gif?p=y&amp;hash=c&amp;upddt=20231111175101" width="180" height="72" alt="" onerror="this.src='//img.jobkorea.co.kr/Images/Logo/180/l/o/logo_none_180.gif';"></span>쿠팡로지스틱스서비스</a>
                                </span>
                            </div>
                            <div class="description"><a href="https://www.jobkorea.co.kr/Recruit/Booth_GI_Read/43173214?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" onclick="Job_DB_window(this.href,1000,500);SpaceClick(43173214,42);return false;" target="_blank">[월 최대 330만 가능/경력무관]쿠팡CLS 모바일캠프리더(MCL) 채용</a></div>
                            <div class="extra"><button type="button" class="btn devScrap45641941 btnScrap" onclick="GA_Event('홈_PC','요약','스크랩_' + ($(this).hasClass('btnScrap_on')?'해제':'등록') + '_쿠팡로지스틱스서비스_[월 최대 330만 가능/경력무관]쿠팡CLS 모바일캠프리더(MCL) 채용');doScrap(45641941);SpaceClick(43173214,42);">채용정보 스크랩</button> <div class="dday">D-4</div></div>
                            <div class="company-background-image"><img src="https://file1.jobkorea.co.kr//banner/images/26물류운송03.jpg" alt="쿠팡로지스틱스서비스 썸네일" onerror="this.src='//file1.jobkorea.co.kr/banner/images/100006303.jpg';"></div>
                    </li>
                    <li data-match="{&quot;gno&quot;:42946065,&quot;jobTypes&quot;:&quot;,1000055,1000185,1000239,1000283,1000326,1000327,1000330,1000332,1000337,1000339,1000340,&quot;,&quot;workLocal&quot;:&quot;,B000,J000,&quot;,&quot;careerTypeCode&quot;:2}" class="">
                            <div class="company">
                                <span class="name">
                                    <a href="https://www.jobkorea.co.kr/Recruit/Booth_GI_Read/42946065?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" onclick="Job_DB_window(this.href,1000,500);SpaceClick(42946065,42);return false;" target="_blank"><span class="logo"><img src="//imgs.jobkorea.co.kr/Images/Logo/180/h/y/2976n00nmfedqaikg29_3320ubfukcjpnrdmh2nu.gif?p=y&amp;hash=c&amp;upddt=20231111175101" width="180" height="72" alt="" onerror="this.src='//img.jobkorea.co.kr/Images/Logo/180/l/o/logo_none_180.gif';"></span>현대자동차㈜</a>
                                </span>
                            </div>
                            <div class="description"><a href="https://www.jobkorea.co.kr/Recruit/Booth_GI_Read/42946065?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" onclick="Job_DB_window(this.href,1000,500);SpaceClick(42946065,42);return false;" target="_blank">현대자동차 경력직 채용 연구개발, 생산/제조 부문</a></div>
                            <div class="extra"><button type="button" class="btn devScrap45441732 btnScrap" onclick="GA_Event('홈_PC','요약','스크랩_' + ($(this).hasClass('btnScrap_on')?'해제':'등록') + '_현대자동차㈜_현대자동차 경력직 채용 연구개발, 생산/제조 부문');doScrap(45441732);SpaceClick(42946065,42);">채용정보 스크랩</button> <div class="dday dday_always">상시채용</div></div>
                            <div class="company-background-image"><img src="https://file1.jobkorea.co.kr//banner/images/100005502.jpg" alt="현대자동차㈜ 썸네일" onerror="this.src='//file1.jobkorea.co.kr/banner/images/100006303.jpg';"></div>
                    </li>
                    <li data-match="{&quot;gno&quot;:43232233,&quot;jobTypes&quot;:&quot;,1000011,1000207,1000209,1000210,1000211,1000212,1000354,1000355,1000366,&quot;,&quot;workLocal&quot;:&quot;,I000,&quot;,&quot;careerTypeCode&quot;:2}" class="">
                            <div class="company">
                                <span class="name">
                                    <a href="https://www.jobkorea.co.kr/Recruit/Booth_GI_Read/43232233?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" onclick="Job_DB_window(this.href,1000,500);SpaceClick(43232233,42);return false;" target="_blank"><span class="logo"><img src="//imgs.jobkorea.co.kr/Images/Logo/180/a/a/2976p00pnai362_2320p6apnvv36pp.gif?p=y&amp;hash=c&amp;upddt=20231111175101" width="180" height="72" alt="" onerror="this.src='//img.jobkorea.co.kr/Images/Logo/180/l/o/logo_none_180.gif';"></span>신한자산신탁㈜</a>
                                </span>
                            </div>
                            <div class="description"><a href="https://www.jobkorea.co.kr/Recruit/Booth_GI_Read/43232233?Oem_Code=C1&amp;productType=FirstVVIP&amp;logpath=0" onclick="Job_DB_window(this.href,1000,500);SpaceClick(43232233,42);return false;" target="_blank">2023년 신한자산신탁 경력직 공개채용</a></div>
                            <div class="extra"><button type="button" class="btn devScrap45694073 btnScrap" onclick="GA_Event('홈_PC','요약','스크랩_' + ($(this).hasClass('btnScrap_on')?'해제':'등록') + '_신한자산신탁㈜_2023년 신한자산신탁 경력직 공개채용');doScrap(45694073);SpaceClick(43232233,42);">채용정보 스크랩</button> <div class="dday">D-4</div></div>
                            <div class="company-background-image"><img src="https://file1.jobkorea.co.kr//banner/images/11은행금융06.jpg" alt="신한자산신탁㈜ 썸네일" onerror="this.src='//file1.jobkorea.co.kr/banner/images/100006303.jpg';"></div>
                    </li>
                    

<hr>
        </ul>
    </div>
</div>
<hr>

    <button class="go_top"><span class="txt">위로 가기</span></button>

<div id="footer" class="footer footer--main">
    <div class="footer__wrap">

        <div class="footer__notice">
                <h3 class="blind">공지사항</h3>
                <dl class="footer__notice-wrap clear">
                    <dt class="footer__notice-title"><a href="https://www.jobkorea.co.kr/help/notice" onclick="GA_Event('공통_PC', 'footer', '공지사항');">공지사항</a></dt>
                </dl>
        </div>

        <div class="footer__service">
            <ul>
                <li><a href="https://www.jobkorea.co.kr/service_jk/provision/provision_gg.asp" target="_blank">이용약관</a></li>
                <li><a href="https://www.jobkorea.co.kr/service/PolicyPrivacy" target="_blank"><strong>개인정보처리방침</strong></a></li>
                <li><a href="https://www.jobkorea.co.kr/service/ProvisionLOC" target="_blank"><strong>위치기반서비스이용약관</strong></a></li>
                <li><a href="http://company.jobkorea.co.kr/network/default.asp#Partners" target="_blank">제휴문의</a></li>
                <li><a href="https://www.jobkorea.co.kr/help/faq/user" target="_blank">고객센터</a></li>
            </ul>
        </div>

        <div class="footer__help">
            <h3 class="blind">고객센터</h3>
            <dl class="footer__help-wrap footer__help-wrap--working-hour">
                <dt class="footer__help-title">고객센터</dt>
                <dd class="footer__help-text">0000-0000</dd>
                <dd class="footer__help-text">(평일 <span class="tahoma">09:00 ~ 19:00</span>  토요일 <span class="tahoma">09:00 ~ 15:00</span>)</dd>
            </dl>
            <dl class="footer__help-wrap footer__help-wrap--fax">
                <dt class="footer__help-title">FAX</dt>
                <dd class="footer__help-text">00-123-1234</dd>
            </dl>
            <ul class="footer__sns">
                <li class="footer__sns-item"><a href="https://blog.naver.com/jobkorea1" target="_blank" title="블로그" class="footer__sns-item--blog"><span class="skip">블로그</span></a></li>
                <li class="footer__sns-item"><a href="https://m.post.naver.com/my.nhn?memberNo=9028903" target="_blank" title="포스트" class="footer__sns-item--post"><span class="skip">포스트</span></a></li>
                <li class="footer__sns-item"><a href="https://www.facebook.com/jobkorea" target="_blank" title="페이스북" class="footer__sns-item--facebook"><span class="skip">페이스북</span></a></li>
                <li class="footer__sns-item"><a href="https://www.instagram.com/jobkorea_albamon/" target="_blank" title="인스타그램" class="footer__sns-item--instagram"><span class="skip">인스타그램</span></a></li>
                <li class="footer__sns-item"><a href="https://www.youtube.com/channel/UCOrdY3p46GJh_CYacfwYieg" target="_blank" title="유튜브" class="footer__sns-item--youtube"><span class="skip">유튜브</span></a></li>
            </ul>
        </div>
    </div>
</div>

<script src="/resources/lib/jquery/jquery-1.10.2.min.js"></script>
<script src="/resources/lib/underscore/underscore.min.js"></script>
<script src="/resources/lib/jkmon/dist/jk.pc.min.js?202311091400"></script>
<script src="/resources/js/common/dist/jk.common.min.js?202311091400"></script>
    
    
    <script type="text/javascript" src="/Scripts/Main/Common.js?202311091400"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>



    <script type="text/javascript" src="/NET/Scripts/JK_Cookie.js"></script>
    <script src="//i.jobkorea.kr/content/js/ua-parser.min-sv-202005061649.js" type="text/javascript"></script>


    <script type="text/javascript" src="/NET/Scripts/GI/OnPass_Quick.js?202311091400"></script>
    <script type="text/javascript" src="/NET/Scripts/GI/OnPass_Pool.js?202311091400"></script>
    <script type="text/javascript" src="/NET/Scripts/GI/Opt_Trace.js?202311091400"></script>
    <script type="text/javascript" src="/NET/Scripts/JK_IP_Secure_Main.js?202311091400"></script>
    <script type="text/javascript" src="/NET/Scripts/Member/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
    <script src="https://apis.google.com/js/client:platform.js" gapi_processed="true"></script>
    <script src="https://appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js"></script>
    
    <script type="text/javascript" src="/NET/Scripts/Member/kakao-1.36.3.min.js"></script>
    <script type="text/javascript" src="/NET/Scripts/Member/SNS.js?202311091400"></script>
    <script type="text/javascript" src="/NET/Scripts/CapsLockChk.js?202311091400"></script>


    <!-- carousel plugin -->
    <script src="//i.jobkorea.kr/content/js/swiper-4.3.3.min-sv-202304070200.js" type="text/javascript"></script>

    <!-- sidebar scroll plugin -->
    <script src="//i.jobkorea.kr/content/js/starter/jquery.nanoscroller-sv-202101271834.js" type="text/javascript"></script> 

    <!-- carouFredSel plugin -->
    <script src="//i.jobkorea.kr/content/js/plugin/jquery.carouFredSel-6.2.1-packed-sv-202005061649.js" type="text/javascript"></script>

    <!--알림 티커-->
    <script src="//i.jobkorea.kr/content/javascript/pc/dist/common/notification/ui.common.notification.min-sv-202005061649.js" type="text/javascript"></script>

    <script src="//i.jobkorea.kr/deploy/pc/dist/js/personal/main/ui.personal.main-sv-202308080257.js" type="text/javascript"></script>
    <script src="/NET/bundles/Main?v=ihoxCMguePXCOAdceW3IcvOKU3nqxYkI0AnNOcpAcFc1"></script>

    <script src="/resources/js/public/dist/jk.public.main.min.js?v=202311091400"></script>
    <script src="/resources/js/public/dist/jk.public.main.contents.min.js?v=202311091400"></script>
    <script src="/resources/js/user/dist/jk.user.mypage.min.js?v=202311091400"></script>


<ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" style="display: none !important;" data-ad-status="unfilled"><div id="aswift_0_host" tabindex="0" title="Advertisement" aria-label="Advertisement" style="border: none; height: 0px; width: 0px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-block;"><iframe id="aswift_0" name="aswift_0" browsingtopics="true" style="left:0;position:absolute;top:0;border:0;width:undefinedpx;height:undefinedpx;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allow="attribution-reporting" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-2252464458280030&amp;output=html&amp;adk=1812271804&amp;adf=3025194257&amp;lmt=1699693096&amp;plat=3%3A16%2C4%3A16%2C9%3A32776%2C16%3A8388608%2C17%3A32%2C24%3A32%2C25%3A32%2C30%3A1081344%2C32%3A32%2C41%3A32%2C42%3A32&amp;format=0x0&amp;url=https%3A%2F%2Fwww.jobkorea.co.kr%2F&amp;ea=0&amp;pra=5&amp;wgl=1&amp;easpi=0&amp;asro=0&amp;asiscm=1&amp;aslmt=0.4&amp;asamt=-1&amp;asedf=0&amp;asefa=1&amp;aseiel=1~2&amp;ascmds=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTE5LjAuNjA0NS4xMDUiLG51bGwsMCxudWxsLCI2NCIsW1siR29vZ2xlIENocm9tZSIsIjExOS4wLjYwNDUuMTA1Il0sWyJDaHJvbWl1bSIsIjExOS4wLjYwNDUuMTA1Il0sWyJOb3Q_QV9CcmFuZCIsIjI0LjAuMC4wIl1dLDBd&amp;dt=1699693096428&amp;bpp=1&amp;bdt=1319&amp;idt=67&amp;shv=r20231106&amp;mjsv=m202311020101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3De694e610696ceeca-221d80e981e500fb%3AT%3D1699510675%3ART%3D1699510675%3AS%3DALNI_MY81yHlHaGxhuI2sZjVA-DymgEphQ&amp;gpic=UID%3D00000c82aa33f39c%3AT%3D1699510675%3ART%3D1699510675%3AS%3DALNI_MaNK6ufgCCHFtFiLUh6dkAzOYyasA&amp;nras=1&amp;correlator=7395430670401&amp;frm=20&amp;pv=2&amp;ga_vid=2002034609.1699510675&amp;ga_sid=1699693097&amp;ga_hid=2033781565&amp;ga_fc=1&amp;u_tz=540&amp;u_his=11&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_sd=1&amp;dmc=8&amp;adx=-12245933&amp;ady=-12245933&amp;biw=1903&amp;bih=931&amp;scr_x=0&amp;scr_y=0&amp;eid=44759876%2C44759927%2C44795921%2C44807462%2C31078297%2C44807764%2C44808148%2C21065725%2C31078663%2C31078665%2C31078668%2C31078670&amp;oid=2&amp;pvsid=895478695289213&amp;tmod=1758882367&amp;uas=0&amp;nvt=1&amp;fsapi=1&amp;ref=https%3A%2F%2Fwww.jobkorea.co.kr%2FOnePick%2FJobList%3FOrd%3DGcmCodeAmtDesc%26utm_source%3Dgoogle%26utm_medium%3Dcpc%26utm_campaign%3Dpc_%25EB%25B8%258C%25EB%259E%259C%25EB%2593%259C_tcpa%26utm_content%3Dpc_%25EB%25B8%258C%25EB%259E%259C%25EB%2593%259C_tcpa_%25EC%259B%2590%25ED%2594%25BD%25EA%25B3%25B5%25EA%25B3%25A0(%25EA%25B8%25B0%25EC%2588%25A0)%26utm_term%3D%25EC%259E%25A1%2520%25EC%25BD%2594%25EB%25A6%25AC%25EC%2595%2584%26cmpid%3Dsa_goo&amp;fc=1920&amp;brdim=0%2C0%2C0%2C0%2C1920%2C0%2C1920%2C1040%2C1920%2C931&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=32768&amp;bc=31&amp;td=1&amp;psd=W251bGwsbnVsbCxudWxsLDNd&amp;nt=1&amp;ifi=1&amp;uci=a!1&amp;fsb=1&amp;dtd=107" data-google-container-id="a!1" data-load-complete="true"></iframe></div></ins><iframe width="1" height="1" scrolling="no" frameborder="0" style="display:none" src="https://asia.creativecdn.com/ig-membership?ntk=1Im9Xsc_dLayGLf_2i7_bi7-lp-2dSBpJ6z0GBBPb0DN0rfAEO_xQZQ5EkIL7FcAGHdIlA6nSKofCvyl6ER-HtuqKOcADUROfh69ao-RZgs"></iframe><iframe width="1" height="1" scrolling="no" frameborder="0" style="display:none" src="https://asia.creativecdn.com/topics-membership?ntk=IBdCUifHOsQ4JfSptcCwIMBSAM5PC_v7OEJJRS3BqgnQMCyQIzTsHse9XCK_9Gju1HZPcTfwyNAafbEOPYbWdw"></iframe><div id="criteo-tags-div" style="display: none;"></div><iframe src="https://www.google.com/recaptcha/api2/aframe" width="0" height="0" style="display: none;"></iframe></body>
</html>