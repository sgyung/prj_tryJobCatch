 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN -->
<script type="text/javascript">
$(function(){
		
	    // 마우스 아웃 이벤트 핸들러 (옵션)
		$('#serviceNav').on('mouseover', function() {
	        // 'open-active' 클래스를 추가합니다.
	        $('#headNavBar').addClass('open-active');
	    });
	    $('#serviceNav').on('mouseout', function(event) {
	        // 'open-active' 클래스를 제거합니다.
	        $("#headNavBar").removeClass('open-active');
	    });
		$('.lyNavArea').on('mouseover', function() {
	        // 'open-active' 클래스를 추가합니다.
	        $('#headNavBar').addClass('open-active');
	    });
	    $('.lyNavArea').on('mouseout', function(event) {
	        // 'open-active' 클래스를 제거합니다.
	        $("#headNavBar").removeClass('open-active');
	    });
	    
	    //로그인시 마이메뉴 hover이벤트
	    $("#myMenu").hover(
    		function(){
	    		$(this).addClass("open");
    		},
    		function(){
	    		$(this).removeClass("open");
    		}
	    )
	    
})//ready

function submitFrm() {
	// 검색어 입력란의 값을 가져옵니다.
    var keyword = document.getElementById("stext").value;

    // 입력된 검색어가 비어있는지 확인합니다.
    if (keyword.trim() === "") {
        alert("검색어를 입력해주세요.");
        event.preventDefault();
        return;
    }
        $("#searchFrm").submit();    	
}

</script>    
   
    
<div id="headerWrap" class="gnbTheme1260 devGnbContainer ">
    <div id="header" class="">
        <!--신입공채 메뉴일경우 클래스 start-sub 추가 -->
        <!-- // headInner -->
        <div class="headInner">
            <h1 class="jkLogo" style="height:120px">
                <a href="http://211.63.89.133/prj_tryJobCatch/main.do">
                 <img height="100%" src="http://211.63.89.133/prj_tryJobCatch/common/images/logo/logo.gif" width= "100%" alt="tryJobCatch">
                </a>
            </h1>


<!-- // search -->
<div class="search">
    <h2 class="skip">검색</h2>
    <form name="global_seek" id="searchFrm" autocomplete="off" action="http://211.63.89.133/prj_tryJobCatch/search_corperation.do" target="_self">
        <fieldset>
            <legend>Smart Match 통합검색</legend>
            <div class="smKey">
                <input type="text" id="stext" title="검색어 입력" name="keyword" placeholder="NEW JOB, NEW ME" maxlength="30">
                <input type="submit" value="검색" class="submit spGnb" id="common_search_btn" onclick="submitFrm()">
            </div>
        </fieldset>
    </form>
</div>
<!-- search // -->


        </div>
        <!-- headInner // -->

        <div id="headNavBar" class="headNavBar dev-headNavBar">
            <div class="navInner dev-navInner">
                
                <div class="jkNavArea dev-jkNavArea">
                    <h2 class="skip">주요서비스</h2>
                    <ul id="serviceNav" class="serviceNav dev-serviceNav">
                        <!-- 메뉴 활성화 클래스 navFixed 마우스 오버시 active 클래스 추가 -->
                        <li id="gnbGi" class="navItem ">
                            <a href="http://211.63.89.133/prj_tryJobCatch/recruitment.do" class="linkItem" onclick=""><span class="spNav"><span class="txIr">채용정보</span></span></a>
                        </li>
                        <li id="gnbStart" class="navItem ">
                            <a href="http://211.63.89.133/prj_tryJobCatch/review_home.do" class="linkItem" ><span class="spNav"><span class="txIr">기업리뷰</span></span></a>
                        </li>
                        <li id="gnbHh" class="navItem hh ">
                            <a href="#void" class="linkItem"><span class="spNav"><span class="txIr">채용등록</span></span></a>
                        </li>
                        <li id="gnbSalary" class="navItem salary ">
                            <a href="http://211.63.89.133/prj_tryJobCatch/noticeList.do" class="linkItem" onclick="GA_Event('공통_PC', 'gnb', '기업·연봉');">
                                <span class="spNav"><span class="txIr">고객센터</span></span></a>
                        </li>
                    </ul>
                    <!-- my 홈일경우 클래스 myPage -->
                    <ul id="devMyPage" class="userNav">


<c:choose>
<c:when test="${ empty sessionScope.M_ID }">

	<ul class="userNav">
        <li class="userNav-item login">
            <a href="http://211.63.89.133/prj_tryJobCatch/member/loginFrm.do" class="txt-button login-button" >로그인</a>
        </li>
        <li class="userNav-item join">
            <a href="http://211.63.89.133/prj_tryJobCatch/member/memberJoinFrm.do" class="txt-button join-button">회원가입</a>
        </li>
    </ul>

</c:when>
<c:otherwise>
<!-- login complete -->
<ul id="devMyPage" class="userNav">
<ul class="userNav" style="">

<li class="userNav-item notification devLiNotification">
    <div class="popup-notification" id="js-notiLayer"></div>
</li>
    <li id="myMenu" class="userNav-item my member">
        <a href="http://211.63.89.133/prj_tryJobCatch/member/mypageHome.do" class="btnMyOpen txt-button ico-cp">
        <span class="spGnb"></span>
        <span class="user-name">${ sessionScope.M_NAME } 님</span>
        <span class="skip">열기</span></a>
        <div class="lyMyArea">
            <div class="myInner">
                <div class="myLists">
                <c:choose>
                <c:when test="${ sessionScope.login_type eq 'M' }">
                    <ul style="padding: 0px">
                        <li><a href="http://211.63.89.133/prj_tryJobCatch/member/mypageHome.do" ><span class="tx">개인회원 홈</span></a></li>
                        <li><a href="http://211.63.89.133/prj_tryJobCatch/member/resumeList.do" ><span class="tx">이력서 관리</span></a></li>
                        <li><a href="http://211.63.89.133/prj_tryJobCatch/member/applyList.do" ><span class="tx">입사지원 현황</span></a></li>
                        <li><a href="http://211.63.89.133/prj_tryJobCatch/member/mbrModifyFrm.do" ><span class="tx">개인정보 수정</span></a></li>
                    </ul>
                </c:when>
                <c:otherwise>
                    <ul style="padding: 0px">
                        <li><a href="http://211.63.89.133/prj_tryJobCatch/company/coMyPageHome.do" ><span class="tx">기업회원 홈</span></a></li>
                        <li><a href="#" ><span class="tx">채용 관리</span></a></li>
                        <li><a href="#" ><span class="tx">입사지원 현황</span></a></li>
                        <li><a href="#" ><span class="tx">개인정보 수정</span></a></li>
                    </ul>
                    </c:otherwise>
                  </c:choose>
                </div>
                <div class="lyRow">
                    <div class="btnRowWrap">
                        <a href="http://211.63.89.133/prj_tryJobCatch/member/logout.do" class="btnLogOut" >로그아웃</a>
                    </div>
                </div>
            </div>
            <span class="icnArr spGnb"></span>
        </div>
    </li>
</ul>

</ul>    
<!--  -->
</c:otherwise>
</c:choose>

                    </ul>
                </div>
            </div>
            <div class="lyNavArea">

<h3 class="skip">채용정보 세부메뉴</h3>
<div class="lyNavWrap">
    <div class="lyNavInner side">
        <div class="lyRow row01">
            <div class="lyCol col5h">
                <div class="colItem">
                    <strong class="titArea">
                        <a href="recruitment.do" class="tit gnbGi">채용정보<i class="line_line_arrow_right"></i></a>
                    </strong>
                </div>
            </div>

            <div class="lyCol col5h">
                <div class="colItem">
                    <strong class="titArea">
                        <a href="http://211.63.89.133/prj_tryJobCatch/review_home.do" class="tit onepick" onclick="GA_Event('공통_PC', 'lnb', '전체서비스_이직은원픽');">기업리뷰<i class="line_line_arrow_right"></i></a>
                    </strong>
                    <div class="listBx">
                        <ul class="list-col">
                            <li><a href="http://211.63.89.133/prj_tryJobCatch/review_home.do"onclick="GA_Event('공통_PC', 'lnb', '이직은 원픽_합격축하금 공고');">기업리뷰 홈</a></li>
                            <li><a href="http://211.63.89.133/prj_tryJobCatch/review_home.do" onclick="GA_Event('공통_PC', 'lnb', '이직은 원픽_원픽서비스안내');">My 기업리뷰</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <div class="lyCol col5h">
                <div class="colItem">
                    <strong class="titArea">
                        <a href="http://211.63.89.133/prj_tryJobCatch/noticeList.do" class="tit onepick" onclick="GA_Event('공통_PC', 'lnb', '전체서비스_이직은원픽');">고객센터<i class="line_line_arrow_right"></i></a>
                    </strong>
                    <div class="listBx">
                        <ul class="list-col">
                            <li><a href="http://211.63.89.133/prj_tryJobCatch/noticeList.do" onclick="GA_Event('공통_PC', 'lnb', '공지사항');"><i class="emoji32_loudspeaker"></i>공지사항</a></li>
                            <li><a href="https://www.jobkorea.co.kr/help/faq/user" onclick="GA_Event('공통_PC', 'lnb', '고객센터');"><i class="emoji32_headset"></i>문의사항</a></li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
            </div>
        </div>
    </div>
</div>