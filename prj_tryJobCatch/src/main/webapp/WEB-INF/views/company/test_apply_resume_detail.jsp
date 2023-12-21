<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko"><head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge; chrome=1">
    <title>이력서 미리보기</title>

<link href="https://i.jobkorea.kr/content/css/ver_2/common-sv-202311091305.css" rel="stylesheet" type="text/css">
<link href="https://i.jobkorea.kr/content/css/ver_2/text_user/resume/header-sv-202307041411.css" rel="stylesheet" type="text/css">
<link href="https://i.jobkorea.kr/content/css/ver_2/text_user/resume/view.css?v=202311281400" rel="stylesheet" type="text/css">
    
   <script src="https://teralog.techhub.co.kr/trk?la_tp=pv&amp;la_gc=TR10148105490&amp;la_uid=&amp;la_fid=261fc0dc98663dc7e246c5a4a307aa1f&amp;la_sid=&amp;la_infl=&amp;la_pa1=&amp;la_pa2=&amp;la_dccs=UTF-8&amp;la_r=1498084425&amp;la_crsd_gc=&amp;la_sv=59647be&amp;la_dcrf=INTNL_REF&amp;la_dcurl=https%3A%2F%2Fwww.jobkorea.co.kr%2FUser%2FResume%2FPreView%3FrNo%3D25332716&amp;la_dcttl=%EC%9D%B4%EB%A0%A5%EC%84%9C%20%EB%AF%B8%EB%A6%AC%EB%B3%B4%EA%B8%B0&amp;la_ib=&amp;la_is=&amp;la_callback=_LA.CB"></script>
   <script src="https://teralog.techhub.co.kr/ckie"></script>
   <script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-H72LM07GXG&amp;cx=c&amp;_slc=1"></script>
   <script async="" src="https://www.google-analytics.com/analytics.js"></script>
   <script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
   <script src="https://sas.nsm-corp.com/sa-w.js?gc=TR10148105490&amp;rd=1701328020255"></script>
   <script type="text/javascript" async="" src="https://tags.creativecdn.com/l3NDK8jaO0RovnP18psC.js"></script>
   <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
   <script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-GQWHSF87P4&amp;l=dataLayer&amp;cx=c"></script>
   <script type="text/javascript" src="https://js.appboycdn.com/web-sdk/3.5/appboy.min.js" async=""></script>
   <script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-WL56D3L"></script>
   <script type="text/javascript" src="/resources/lib/datastory/dslog.js?ver=1.1" id="dslog_tag"></script> 




<style>
    .async-hide {
        opacity: 0 !important
    }
</style>
<script async="" src="https://www.googleoptimize.com/optimize.js?id=OPT-TD4G95J"></script>
<!-- End Google Tag Manager -->
<!-- Google Ad Manager -->
<script data-ad-client="ca-pub-2252464458280030" async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

    
</head>
<body class="resume resume-preview" style="" cz-shortcut-listen="true">
    
    <div class="resume-page">
        <div class="resume-view-wrapper">
            <div class="resume-header">
                <h1 class="header">이력서</h1>
                
            </div>
            <div class="resume-view-container">
                <div class="resume-subject">${ resume.resumeTitle}</div>
                
        


<div class="base profile image">
    <div class="container">
            <div class="photo">
            	<c:if test="${ not empty mbrInfo.m_pic}" >
            	<img name="user_photo"
            	src="http://http://211.63.89.133/prj_tryJobCatch/common/images/mbrImages/${mbrInfo.m_pic  }">
            	</c:if>
            </div>
        <div class="info-container">
            <div class="info-general">
                <div class="item name">${ mbrInfo.m_name }</div>
                <div class="item sex">${ mbrInfo.m_gender eq 'M' ? '남' : '여' }</div>
                <div class="item year">${ mbrInfo.m_bday }</div>
            </div>
            <div class="info-detail">
                            <div class="item">
                                <div class="label">휴대폰</div>
                                <div class="value">${ mbrInfo.m_tel }</div>
                            </div>
                        <div class="item">
                            <div class="label">Email</div>
                            <div class="value">
                                <a href="#">${ mbrInfo.m_email }</a>
                            </div>
                        </div>
                            
                        <div class="item item-full">
                            <div class="label">주소</div>
                            <div class="value">(${mbrInfo.m_zip})${ mbrInfo.m_addr }</div><br/>
                            <div class="value">${mbrInfo.m_detail_addr }</div>
                        </div>


            </div>
        </div>
    </div>
    
    
<div class="summary col-4">

            <div class="item ">
                <div class="header">학력</div>
                <c:if test="${ not empty resume.academicAbility }" >
                <c:forEach var="item" items="${resume.academicAbility}" varStatus="i">
                <c:if test="${ i.last }" >
	                <div class="description ellipsis">${ item.AA_SCHOOL_NAME }</div>
	                <div class="options">
	                    <div class="option">${ item.AA_SCHOOL_DIVISION }</div>
	                    <div class="option">${ item.AA_GRADUATION_CONDITION }</div>
	                    <div class="option">${ not empty item.AA_DEGREE? item.AA_DEGREE : '' }</div>
	                  
	                </div>
                </c:if>
                </c:forEach>
                </c:if>
            </div>

                <div class="item">
                    <div class="header">경력</div>
                    <c:if test="${ not empty resume.career }" >
                    <c:forEach var="item" items="${resume.career}" varStatus="i">
                    <c:if test="${i.last }" >
                        <div class="description ellipsis">${ item.c_CO_NAME }</div>
	                    <div class="options">
    	                    <div class="option">${ item.c_EMP_CONDITION eq 'Y' ? '재직중' : '퇴사'}</div>
    	                    <div class="option">${ item.c_JOIN_DATE}</div>
        	                <div class="option">${ item.c_EMP_CONDITION eq 'N' ? item.c_RETIREMENT_DATE : ''}</div>
            	        </div>
           	        </c:if>
           	        </c:forEach>
                	</c:if>
                	</div>
                	
        <div class="item">
            <div class="header">인턴·대외활동 / 해외경험</div>
            <div class="description ellipsis">dfdf</div>
            <div class="description ellipsis">일본 해외경험</div>
        </div>

        <div class="item">
            <div class="header">자격증 / 어학</div>
            <div class="description ellipsis">정보처리기사</div>
            <div class="description ellipsis">일본어-회화가능</div>
        </div>
</div>
</div>


    <div class="base skill">
        <div class="keyword-wrap">
            <div class="keyword-box">
                <div class="keyword-list">
                <c:forEach var="item" items="${ resume.skill }">
                        <button type="button" class="list-btn"><span>${ item }</span></button>
                </c:forEach>
                </div>
            </div>
        </div>
    </div>



    <div class="base education">
        <h2 class="header">학력</h2>
        <div class="list list-education">
				<c:forEach var="item" items="${ resume.academicAbility }">
                <div class="item">
                    <div class="date">
                        <div class="term">${ item.AA_ENTRANCE_DATE } ~ ${ not empty item.AA_GRADUATION_DATE? item.AA_GRADUATION_DATE : '' }</div>
                        <div class="state">${ item.AA_GRADUATION_CONDITION }</div>
                    </div>
                    <div class="content">
                        <div class="content-header">
                            <div class="name">${ item.AA_SCHOOL_NAME }</div>
                            <c:if test="${ not empty item.AA_MAJOR }" >
                            <div class="line">${ item.AA_MAJOR }</div>    
                            </c:if>                        
                        </div>
                            <div class="content-body">
                                <div class="info">
                                			<c:if test="${ not empty item.AA_CREDIT }" >
                                            <div class="label">학점</div>
                                            <div class="value">${item.AA_CREDIT}</div>
                                            </c:if>
                                        </div>

                                </div>
                            </div>
                    </div>
                </c:forEach>
                </div>
        </div>
    </div>
        


<div class="base career">
    <div class="headers">
        <h2 class="header">경력</h2>
        
        <div class="term">
            <div class="total"></div>
        </div>
    </div>
    <div class="list list-career">
    <c:forEach var="item" items="${ resume.career }">
                <div class="item">
                    <div class="date">
                        <div class="term">${item.c_JOIN_DATE} ~ ${ not empty item.c_RETIREMENT_DATE? item.c_RETIREMENT_DATE : ''  }</div>
                        <div class="term-calculator"></div>
                    </div>
                    <div class="content">
                        <div class="content-header">
                                <div class="name">${ item.c_CO_NAME }</div>
                            <div class="is-private"></div>
                            <div class="position">${ item.c_POSITION }</div>
                        </div>
                        <div class="content-body">
                            <div class="description">
dddd                            </div>
                            <div class="info">
                                    <div class="item">
                                        <div class="label">연봉</div>
                                        <div class="value">
                                            2,333만원
                                        </div>
                                    </div>
                                                                    <div class="item">
                                        <div class="label">주요직무</div>
                                        <div class="value">${ item.c_DUTY } </div>
                                        <div class="value">${ item.c_DUTY } </div>
                                        <div class="value">${ item.c_DUTY } </div>
                                    </div>
                            </div>
                        </div>

                    </div>
                </div>
                </c:forEach>

    </div>
</div>
            

<div class="base intern">
    <h2 class="header">인턴·대외활동·교육</h2>
    <div class="list list-intern">
            <div class="item">
                <div class="date">
                    <div class="term">2021. 01 ~ 2022. 01</div>
                    <div class="term-calculator">1년 1개월</div>
                </div>

                <div class="content">
                    <div class="content-header">
                        <div class="name">dfdf</div>
                        <div class="position position1">인턴</div>
                    </div>
                    <div class="content-body">
dfsdf                    </div>
                </div>
            </div>
    </div>
</div>
        


        

<div class="base certificate">
    <h2 class="header">자격증</h2>
    <div class="list list-certificate">
            <div class="item pdf-page-break">
                <div class="date">2020. 01</div>
                <div class="content">
                    <div class="content-header">
                        <div class="name">정보처리기사</div>
                        <div class="agency">한국산업인력공단</div>
                    </div>
                </div>
            </div>

    </div>
</div>
        

<div class="base awards">
    <h2 class="header">수상</h2>
    <div class="list list-awards">
            <div class="item">
                <div class="date">
                    2012년
            </div>
            <div class="content">
                <div class="content-header">
                    <div class="name">ㅅㄷㅅㄷㄴㅅ</div>
                    <div class="agency">ㄴㄷㅅㄴㄷㅅ</div>
                </div>
                <div class="content-body">
ㅅㄷㅅ                </div>
            </div>
        </div>
    </div>
</div>
        




<div class="base language">
        <h2 class="header">어학</h2>
        <div class="list list-language">
                <div class="item pdf-page-break">
                    <div class="language">일본어</div>
                        <div class="content">
                                    <div class="content-body">
                                        <p>회화 능력 : 비즈니스 회화가능</p>
                                    </div>
                        </div>
                </div>
        </div>
</div>
    

<input data-val="true" data-val-required="ThreeLineStat 필드가 필요합니다." id="ThreeLineStat" name="ThreeLineStat" type="hidden" value="False">    <div class="base introduction">
        <h2 class="header">자기소개서</h2>
        <div id="SummaryAjax">
        </div>
        <ul class="list list-introduction">
                <li class="item">
                    <div class="header">ㅅㄷㄴㅅ</div>
                    <div class="content" id="pfl_original">
ㅇㄴㄻㄴㅇㄹ                    </div>
                </li>
        </ul>
    </div>



<div class="base portfolio">
    <h2 class="header">포트폴리오</h2>
    <table class="table table-attachments">
        <caption><span class="skip">첨부파일</span></caption>
        <colgroup>
            <col style="width:150px;">
            <col style="width:320px;">
            <col style="width:150px;">
            <col style="width:320px;">
        </colgroup>
        <tbody>

                            <tr>
                                            <th>이력서</th>
                        <td colspan="3">
                            <a href="http://ㅅㄷㄴㅅ" target="_blank">
                                <i class="icon url" aria-hidden="true"></i>
                                <div class="name">http://ㅅㄷㄴㅅ</div>
                            </a>
                        </td>

                        </tr><tr>
                            </tr></tbody>
    </table>
</div>






    


<div class="sign">
    <div class="message">위의 모든 기재사항은 사실과 다름없음을 확인합니다.</div>

        <div class="writer">작성자 : 장용석</div>
    <div class="warning">
        
    </div>
    
</div>

            </div>
        </div>
    </div>


    
    
    

    
    
    

<script src="/resources/lib/jquery/jquery-1.10.2.min.js"></script>
<script src="/resources/lib/underscore/underscore.min.js"></script>
<script src="/resources/lib/jkmon/dist/jk.pc.min.js?202311281400"></script>
<script src="/resources/js/common/dist/jk.common.min.js?202311281400"></script>
    
<div style="position:absolute; left:-5000px; overflow:hidden; display:none;">
</div>









    

<div id="criteo-tags-div" style="display: none;"></div><iframe height="0" width="0" title="Criteo DIS iframe" style="display: none;"></iframe></body></html>