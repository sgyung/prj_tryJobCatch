<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN -->
<style type="text/css">

</style>
<script type="text/javascript">
$(function(){
	
})//ready
</script>
<section class="secLnb">
    <h1 class="skip">개인회원 서비스 메뉴</h1>
    <div class="lnbGroup">
        <h2 class="lnbTit"><a href="/User/MyPage" onclick="GA_Event('마이페이지_PC', '사이드메뉴', '개인회원 홈')">개인회원 홈</a></h2>
    </div>
    <div class="lnbGroup">
        <h2 class="lnbTit">이력서 관리</h2>
        <ul>
            <li><a href="http://localhost/prj_tryJobCatch/member/resumeRegistFrm.do" target="_blank" >이력서 등록</a></li>
            <li>
                <a href="http://localhost/prj_tryJobCatch/member/resumeList" >이력서 현황</a>
            </li>
            
            
            
        </ul>
    </div>
    <div class="lnbGroup">
        <h2 class="lnbTit">입사지원 관리</h2>
        <ul>
            <li><a href="/User/ApplyMng" onclick="GA_Event('마이페이지_PC', '사이드메뉴', '입사지원 현황')">입사지원 현황</a></li>
            
            
            
        </ul>
    </div>
    
    
    <div class="lnbGroup">
        <h2 class="lnbTit">콘텐츠 관리</h2>
        <ul>
            <li><a href="/Review/MyReview" onclick="GA_Event('마이페이지_PC', '사이드메뉴', 'MY기업리뷰'); BrazeCallPageInto('기업리뷰진입');">MY 기업리뷰</a></li>
            <li><a href="/Starter/AptitudeTest/JatTest" onclick="GA_Event('마이페이지_PC', '사이드메뉴', '인적성 검사')">MY 문의</a></li>
        </ul>
    </div>
    <div class="lnbGroup">
        <h2 class="lnbTit">회원정보 관리</h2>
        <ul>
            <li><a href="http://localhost/prj_tryJobCatch/member/mbrModifyFrm.do" >회원정보 수정</a></li>
            <li><a href="http://localhost/prj_tryJobCatch/member/mbrModifyPassFrm.do" >비밀번호 변경</a></li>
            
        </ul>
    </div>
</section>