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
<section class="secLnb" style="margin-bottom:450px">
    <h1 class="skip">기업회원 서비스 메뉴</h1>
    <div class="lnbGroup">
        <h2 class="lnbTit"><a href="http://localhost/prj_tryJobCatch/company/coMyPageHome.do" >기업정보 홈</a></h2>
    </div>
    <div class="lnbGroup">
        <h2 class="lnbTit">채용 관리</h2>
        <ul>
            <li><a href="http://localhost/prj_tryJobCatch/company/coRegistRecruitmentFrm.do" target="_blank" >채용 등록</a></li>
            <li>
                <a href="http://localhost/prj_tryJobCatch/company/coRecruitmentList.do" >채용 현황</a>
            </li>
            
            
        </ul>
    </div>
    <div class="lnbGroup">
        <h2 class="lnbTit">기업정보 관리</h2>
        <ul>
            <li><a href="/Text_User/User_Info_Mng.asp" onclick="GA_Event('마이페이지_PC', '사이드메뉴', '회원정보 수정')">기업정보 수정</a></li>
            <li><a href="/Text_User/User_PWD_Mng.asp" onclick="GA_Event('마이페이지_PC', '사이드메뉴', '비밀번호 변경')">비밀번호 변경</a></li>
            
        </ul>
    </div>
</section>