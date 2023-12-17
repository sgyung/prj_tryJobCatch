<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="footer" class="footer footer--medium">
    
<div class="footer__wrap">

    <div class="footer__advertisement clear">
            <h3 class="blind">배너</h3>
            <p class="footer__advertisement--text"><iframe width="195" height="35" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" src="https://yellow.contentsfeed.com/RealMedia/ads/adstream_sx.ads/jobkorea/sub@Frame1" title="광고"></iframe></p>
            <p class="footer__advertisement--image"><iframe width="495" height="110" noresize="" scrolling="no" frameborder="0" marginheight="0" marginwidth="0" src="https://yellow.contentsfeed.com/RealMedia/ads/adstream_sx.ads/jobkorea/sub@Bottom" title="광고"></iframe></p>
            <p class="footer__advertisement--text"><iframe width="195" height="35" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" src="https://yellow.contentsfeed.com/RealMedia/ads/adstream_sx.ads/jobkorea/sub@Frame2" title="광고"></iframe></p>
    </div>
    <div class="footer__notice">



    <h3 class="blind">공지사항</h3>
    <dl class="footer__notice-wrap clear">
        <dt class="footer__notice-title"><a href="https://www.jobkorea.co.kr/help/notice">공지사항</a></dt>
        <dd class="footer__notice-text">
        	 <a href="#void" onclick="noticeDetail('${ sessionScope.noticeList.get(0).n_id }')"><c:out value="${ sessionScope.noticeList.get(0).n_title }"/></a>
        </dd>
        
    </dl>


    </div>

    <div class="footer__service">
        <h3 class="blind">잡코리아 서비스 링크</h3>
        <ul>
            <li><a href="http://company.jobkorea.co.kr/" target="_blank">회사소개</a></li>
            
            <li><a href="https://www.jobkorea.co.kr/service_jk/provision/provision_gg.asp" target="_blank">이용약관</a></li>
            <li><a href="https://www.jobkorea.co.kr/service_jk/privacy.asp" target="_blank"><strong>개인정보처리방침</strong></a></li>
            
            
            
            <li><a href="https://www.jobkorea.co.kr/help/faq/user" target="_blank">고객센터</a></li>
        </ul>
    </div>

    <div class="footer__help">
        <h3 class="blind">고객센터</h3>
        <dl class="footer__help-wrap footer__help-wrap--working-hour">
            <dt class="footer__help-title">고객센터</dt>
            <dd class="footer__help-text"><span>0000-0000</span></dd>
            <dd class="footer__help-text">(평일 <span>09:00 ~ 19:00</span>  토요일 <span>09:00 ~ 15:00</span>)</dd>
        </dl>
        <dl class="footer__help-wrap footer__help-wrap--fax">
            <dt class="footer__help-title"><span>FAX</span></dt>
            <dd class="footer__help-text"><span>00-000-0000</span></dd>
        </dl>
        <dl class="footer__help-wrap footer__help-wrap--email">
            <dt class="footer__help-title"><span>Email</span></dt>
            <dd class="footer__help-text"><a href="#" class="footer__help-link">tryJobCatch@tryJobCatch.co.kr</a></dd>
        </dl>
        

        
    </div>

    <p class="copyright">
        © <strong><a href="http://company.jobkorea.co.kr/" target="_blank">JOBKOREA</a></strong> LLC. All rights reserved.
    </p>
</div>
</div>