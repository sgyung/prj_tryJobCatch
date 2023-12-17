<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
 <!-- carousel plugin -->
<script src="//i.jobkorea.kr/content/js/swiper-4.3.3.min-sv-202304070200.js" type="text/javascript"></script>

<script src="/resources/lib/jquery/jquery-1.10.2.min.js"></script>
<script src="/resources/lib/underscore/underscore.min.js"></script>
<script src="/resources/lib/jkmon/dist/jk.pc.min.js?202312041400"></script>
<script src="/resources/js/common/dist/jk.common.min.js?202312041400"></script>
    
    
    <script type="text/javascript" src="/Scripts/Main/Common.js?202312041400"></script>
    


    <script type="text/javascript" src="/NET/Scripts/JK_Cookie.js"></script>
    <script src="//i.jobkorea.kr/content/js/ua-parser.min-sv-202005061649.js" type="text/javascript"></script>

    <script src="/NET/bundles/JK5criptExceptJquery?v=itln6aVGMhJeF3t-DTPgqXCdYZpWPxzOjYBkBoQqiHE1"></script>

   

    <!-- sidebar scroll plugin -->
    <script src="//i.jobkorea.kr/content/js/starter/jquery.nanoscroller-sv-202101271834.js" type="text/javascript"></script> 

    <!-- carouFredSel plugin -->
    <script src="//i.jobkorea.kr/content/js/plugin/jquery.carouFredSel-6.2.1-packed-sv-202005061649.js" type="text/javascript"></script>

    <!--알림 티커-->
    <script src="//i.jobkorea.kr/content/javascript/pc/dist/common/notification/ui.common.notification.min-sv-202005061649.js" type="text/javascript"></script>

    <script src="//i.jobkorea.kr/deploy/pc/dist/js/personal/main/ui.personal.main-sv-202311301113.js" type="text/javascript"></script>

    <!-- 201709 개편 //-->
    <script src="/NET/bundles/Main?v=ihoxCMguePXCOAdceW3IcvOKU3nqxYkI0AnNOcpAcFc1"></script>


    
    <script src="/resources/js/public/dist/jk.public.main.min.js?v=202312041400"></script>
    <script src="/resources/js/public/dist/jk.public.main.contents.min.js?v=202312041400"></script>
    <script src="/resources/js/user/dist/jk.user.mypage.min.js?v=202312041400"></script>

    
<div id="footer" class="footer footer--main">
    <div class="footer__wrap">
        <div class="footer__notice">
            <div class="notice-wrap">
                <h3 class="blind">공지사항</h3>
                <dl class="footer__notice-wrap clear">
                    <dt class="footer__notice-title"><a href="" >공지사항<i class="system_system_arrow_right"></i></a></dt>
                    <div class="footer__notice-text">
                        <div class="noti-slide">
                            <div class="swiper-container swiper-container-vertical">
                                <ul class="swiper-wrapper lst" style="transition-duration: 0ms; transform: translate3d(0px, -48px, 0px);">
                                
					<c:forEach var="noticeList" items="${ sessionScope.noticeList }">
						 <li class="swiper-slide" style="height: 24px;">
                    <a href="#void" onclick="noticeDetail('${ noticeList.n_id }')"><c:out value="${ noticeList.n_title }"/></a>
                	</li>
					</c:forEach>
                                        </ul>
 
                            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                            </div>

                        </div>
                    </div>
                </dl>
            </div>
        </div>

        <div class="footer__service">
            <h3 class="blind">잡코리아 서비스 링크</h3>
            <ul style="text-align: center;">
                <li><a href="https://www.jobkorea.co.kr/service/ProvisionGG" target="_blank" onclick="GA_Event('공통_PC', 'footer', '이용약관');">이용약관</a></li>
                <li><a href="https://www.jobkorea.co.kr/service/PolicyPrivacy" target="_blank" onclick="GA_Event('공통_PC', 'footer', '개인정보처리방침');"><strong>개인정보처리방침</strong></a></li>
                <li><a href="https://www.jobkorea.co.kr/service/ProvisionLOC" target="_blank" onclick="GA_Event('공통_PC', 'footer', '위치기반서비스이용약관');"><strong>위치기반서비스이용약관</strong></a></li>
                <li><a href="https://www.jobkorea.co.kr/help/faq/user" target="_blank" onclick="GA_Event('공통_PC', 'footer', '고객센터');">고객센터</a></li>
            </ul>
        </div>

        <div class="footer__help" style="text-align: center;">
            <h3 class="blind">고객센터</h3>
            <dl class="footer__help-wrap footer__help-wrap--working-hour">
                <dt class="footer__help-title">고객센터</dt>
                <dd class="footer__help-text">1231-1234</dd>
                <dd class="footer__help-text">
                    (평일 <span class="tahoma">09:00 ~ 19:00</span> 토요일 <span class="tahoma">09:00 ~ 15:00</span>)
                </dd>
            </dl>
            <dl class="footer__help-wrap footer__help-wrap--fax">
                <dt class="footer__help-title">FAX</dt>
                <dd class="footer__help-text">00-123-1231</dd>
            </dl>
            <dl class="footer__help-wrap footer__help-wrap--email">
                <dt class="footer__help-title">Email</dt>
                <dd class="footer__help-text">
                    <a href="mailto:helpdesk@jobkorea.co.kr" class="footer__help-link">tryjobcatch@tryjobcatch.co.kr</a>
                </dd>
            </dl>
            <ul class="footer__sns">
            </ul>
        </div>

        <!-- 메인에서만 노출 -->
        <div class="footer__company" style="text-align: center;">
            <div class="footer__company-item footer__company-item--ceo">대표 : ㅇㅇㅇ</div>
            <div class="footer__company-item footer__company-item--business">
                사업자등록번호 : <span>
                    000-00-00000<a href="javascript:window.open('http://www.ftc.go.kr/bizCommPop.do?wrkr_no=1108134859','bizCommPop','width=1000,height=700;')" class="business-button">사업자정보 확인 &gt;</a>
                </span>
            </div>
            <div class="footer__company-item footer__company-item--address">주소 : 서울시 강남구 역삼동 한독빌딩 8층</div>
            <br>
            <div class="footer__company-item footer__company-item--report">통신판매업 신고번호 : 0000-서울서초-0000호</div>
            <div class="footer__company-item footer__company-item--job">직업정보제공사업 신고번호 : 서울청 제0000-00호</div>
            <div class="footer__company-item footer__company-item--job">유료직업소개업 등록번호 : 제0000-0000000-00-0-00000호</div>
            <br>
            <div class="copyright" style="text-align: center;">
                © <strong><a href="http://company.jobkorea.co.kr/" target="_blank">TryJobCatch</a></strong> LLC. All rights
                reserved.
            </div>
        </div>
    </div>
</div>