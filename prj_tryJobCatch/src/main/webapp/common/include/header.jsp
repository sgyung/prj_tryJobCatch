<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<div class="lyCol col4">
                    <div class="colItem">
                        <strong class="titArea">
                            <a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=duty" class="tit" onclick="GA_Event('공통_PC', 'lnb', '채용_직무별');">직무별</a>
                        </strong>
                    </div>
                </div>

            <div class="lyCol col4">
                    <div class="colItem">
                        <strong class="titArea"><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=industry" class="tit" onclick="GA_Event('공통_PC', 'lnb', '채용_산업별');">산업별</a></strong>
                    </div>

            </div>
            <div class="lyCol col4">
            	<div class="colItem">
                        <strong class="titArea"><a href="https://www.jobkorea.co.kr/recruit/joblist?menucode=local&amp;localorder=1" class="tit" onclick="GA_Event('공통_PC', 'lnb', '채용_지역별');">지역별</a></strong>
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
            <a href="member/loginFrm.do" class="txt-button login-button" onclick="GA_Event('공통_PC', 'gnb', '로그인');">로그인</a>
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
<!-- GNB 개편 끝 //--><!-- main header 끝 --></html>