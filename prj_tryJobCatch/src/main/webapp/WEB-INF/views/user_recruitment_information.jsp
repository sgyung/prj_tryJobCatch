<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info = "" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko"><head><script src="https://teralog.techhub.co.kr/trk?la_tp=pv&amp;la_gc=TR10148105490&amp;la_uid=&amp;la_fid=02145ce626622902aeb52c25cdc6ea92&amp;la_sid=&amp;la_infl=&amp;la_pa1=&amp;la_pa2=&amp;la_dccs=UTF-8&amp;la_r=854368267&amp;la_crsd_gc=&amp;la_sv=59647be&amp;la_dcrf=INTNL_REF&amp;la_dcurl=https%3A%2F%2Fwww.jobkorea.co.kr%2Frecruit%2Fjoblist%3Fmenucode%3Dlocal%26localorder%3D1&amp;la_dcttl=%EC%A7%80%EC%97%AD%EB%B3%84%20%EC%B1%84%EC%9A%A9%EC%A0%95%EB%B3%B4%20%7C%20%EC%9E%A1%EC%BD%94%EB%A6%AC%EC%95%84&amp;la_ib=&amp;la_is=&amp;la_callback=_LA.CB"></script><script src="https://teralog.techhub.co.kr/ckie"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-H72LM07GXG&amp;cx=c&amp;_slc=1"></script><script src="https://connect.facebook.net/signals/config/1166416616740867?v=2.9.138&amp;r=stable&amp;domain=www.jobkorea.co.kr" async=""></script><script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script><script async="" src="https://www.google-analytics.com/analytics.js"></script><script src="https://sas.nsm-corp.com/sa-w.js?gc=TR10148105490&amp;rd=1699861525193"></script><script type="text/javascript" async="" src="https://tags.creativecdn.com/l3NDK8jaO0RovnP18psC.js"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-GQWHSF87P4&amp;l=dataLayer&amp;cx=c"></script><script src="https://pagead2.googlesyndication.com/pagead/managed/js/adsense/m202311020101/show_ads_impl_fy2021.js" id="google_shimpl"></script>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge; chrome=1">
    <title>채용정보 | TryJobCatch</title>

	<c:import url="/common/css/user_page.css"/>

	<link rel="SHORTCUT ICON" href="/favicon.ico?202311091400">
    <link rel="canonical" href="https://www.jobkorea.co.kr/recruit/joblist">
    <link rel="alternate" href="http://m.jobkorea.co.kr/recruit/joblist/partarealist" media="only screen and (max-width: 640px)">
    <link rel="alternate" href="ios-app://569092652/http/m.jobkorea.co.kr/recruit/joblist/partarealist">
    <link rel="alternate" href="android-app://com.jobkorea.app/http/m.jobkorea.co.kr/recruit/joblist/partarealist">

    <link href="//i.jobkorea.kr/content/css/ver_2/common-sv-202311091305.css" rel="stylesheet" type="text/css">
    <link href="//i.jobkorea.kr/deploy/pc/dist/css/personal/common/gnb-sv-202311061312.css" rel="stylesheet" type="text/css">
    <link href="//i.jobkorea.kr/content/css/ver_2/jobs/part-sv-202308080257.css" rel="stylesheet" type="text/css">
    <link href="//i.jobkorea.kr/content/css/ver_2/rcr/rcr-sv-202310111400.css" rel="stylesheet" type="text/css">
    <link href="//i.jobkorea.kr/content/css/ver_2/event/banner.promotion-sv-202211241151.css" rel="stylesheet" type="text/css">
    <link href="//i.jobkorea.kr/deploy/pc/dist/css/corporate/pages/service/celebrate/celebrate-sv-202311061312.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="https://js.appboycdn.com/web-sdk/3.5/appboy.min.js" async=""></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-WL56D3L"></script><script src="/NET/bundles/JK5cript?v=kt6fvRQVnlFhtrZQRB60lIBi5ru4auyenJ3cQsNF3hg1"></script>


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
var param ={};

$(function(){
	

	
	// 채용정보 버튼 클릭 시 리스트 출력 
	$.ajax({
		url : "http://211.63.89.133/prj_tryJobCatch/recruitmentList_process.do",
		data : { currentPage : 1 },
		type : "GET",
		dataType : "JSON",
		error : function(xhr){
			alert(xhr.status);
		},
		success : function( jsonObj ){
			var output = "";
			$.each(jsonObj.data,function(i,jsonList){
			output += "<tr class='devloopArea' data-effectctgr-code='0' data-info='43305589|45758511|tapacopa|C|SL||37486638'>";
			output += "<th scope='row'>";
			output += "<span class='tplChkRect tplChkRect_1'></span>";
			output += "</th>";
			output += "<td class='tplCo'>";
			output += "<a href='/Recruit/Co_Read/C/37486638' class='link normalLog' data-clickctgrcode='B01' target='_blank' onclick=\"GA_Event('상세검색_PC', '채용공고', '기업리뷰_타파코파')\">"+ jsonList.cm_co_name +"</a>";
			output += "<div class='typ'></div>";
			output += "</td>";
			output += "<td class='tplTit'>";
			output += "<div class='titBx'>";
			output += "<strong>";
			output += "<a href='http://211.63.89.133/prj_tryJobCatch/recruitmentDetail.do?r_id="+ jsonList.r_id +"' class='link normalLog' data-clickctgrcode='B02' target='_blank' >"+ jsonList.r_title +"</a>";
			output += "</strong>";
			output += "<p class='etc'>";
			output += "<span class='cell'>"+ jsonList.rec_name +"</span>";
			output += "<span class='cell'>"+jsonList.education+"</span>";
			output += "<span class='cell'>"+jsonList.wa_name+"</span>";
			output += "<span class='cell'>"+jsonList.et_name+"</span>";
			output += "<span class='cell'>"+jsonList.r_sal+"</span>";
			output += "</p>";
			output += "<p class='dsc'>";
			output += "</p>";
			output += "</div>";
			output += "</td>";
			output += "<td class='tplPrv'></td>";
			output += "<td class='odd'>";
			output += "<button type='button' class='tplBtn tplBtn_1 tplBtnOrg dev-btn-apply' onclick='apply(\"" + jsonList.r_id + "\")'><span>즉시지원</span></button>";
			output += "<span class='date dotum'><span class='tahoma'>~"+ jsonList.r_end_date +"</span></span>";
			output += "</td>";
			output += "</tr>";
			});
			

	       

	        var tabSelector = $("#anchorGICnt_1 li[data-tab-index='0'] span[value='0']");
	        
	        // 탭이 처음에는 on 클래스를 가진 경우에만 건 수를 보여줌
    		tabSelector.html('전체 <em>(' + jsonObj.dataSize + '건)</em>');
			
			var pageOutput = jsonObj.pageNation;
			
			$("#output").html(output);
			$("#pageOutput").html(pageOutput);
		}//success
	});//ajax
	
	 // 나노 스크롤 실행
    $(".nano").nanoScroller({ preventPageScrolling: true });
	 
 // 각 <ul>에 대한 체크박스 이벤트 리스너 등록
    $('.dutySel, .localSel, .expSel, .eduSel, .idsSel, .htySel').on('change', 'input[type="checkbox"]', function () {
        updateSelectedConditions($(this));
    });

    // 페이지 로딩 시에 체크된 항목이 있으면 이를 선택된 조건으로 추가
    $('ul input[type="checkbox"]:checked').each(function () {
        updateSelectedConditions($(this));
    });

    // .btn_tit 클릭 시 실행되는 이벤트 핸들러
    $('.btn_tit').on('click', function () {
        var dlElement = $(this).closest('dl');

        // 선택된 조건 업데이트 함수 호출
        dlElement.find('input[type="checkbox"]:checked').each(function () {
            updateSelectedConditions($(this));
        });

        // 현재 클릭된 dlElement에 on 클래스 추가
        dlElement.toggleClass('on', !dlElement.hasClass('on'));

        // 다른 dlElement들에서 on 클래스 제거
        $('dl').not(dlElement).removeClass('on');
    });

    $('#keywordFrm').on('click', '.item', function () {
        var liElement = $(this).closest('li');
        var valueToRemove = liElement.attr('value');
        
        // 해당 li 엘리먼트에 부여된 클래스 확인
        var itemName = liElement.attr('name');

        // 해당 value를 가지고 있는 dl 내의 체크박스 선택
        var checkbox = $('input[name="' + itemName + '"][value="' + valueToRemove + '"]');

        // 해당 체크박스 해제
        checkbox.prop('checked', false);

        // 선택된 조건 업데이트 함수 호출
        updateSelectedConditions(checkbox);

        // 해당 li 엘리먼트 제거
        liElement.remove();

        // 결과 세트에 li 엘리먼트가 1개 이하일 때는 "두 줄 넘쳤을 때만 나오게" 하는 클래스 제거
        if ($('#keywordFrm li').length === 0) {
            $('#keywordFrm .item_more').removeClass('show');
            param = {};
            recruitmentList(1);
            // resultSet 클래스가 있는 엘리먼트의 style display 속성 변경
            $('.resultSet').css('display', 'none');
        }
    });

    // 선택된 조건 업데이트 함수
    function updateSelectedConditions(checkbox) {
        var currentUl = checkbox.closest('ul');
        var currentDl = currentUl.closest('dl');
        var currentValue = checkbox.val();
        var currentName = checkbox.data('name');
        var itemNameClass = '';
        var itemName = '';

        // 클래스명 지정
        switch (currentUl.attr('class')) {
            case 'dutySel':
                itemNameClass = 'dutyItem';
                itemName = 'd_id';
                break;
            case 'localSel':
                itemNameClass = 'areaItem';
                itemName = 'wa_id';
                break;
            case 'expSel':
                itemNameClass = 'careerItem';
                itemName = 'rec_id';
                break;
            case 'eduSel':
                itemNameClass = 'eduItem';
                itemName = 'e_id';
                break;
            case 'idsSel':
                itemNameClass = 'indItem';
                itemName = 'ind_id';
                break;
            case 'htySel':
                itemNameClass = 'etItem';
                itemName = 'et_id';
                break;
        }

        // 해당 ul 내의 다른 체크박스들 해제
        currentUl.find('input[type="checkbox"]').not(checkbox).prop('checked', false);

        // Remove all existing li elements with the same name
        $('#keywordFrm li.' + itemNameClass).remove();

        // Create new li element based on the currently checked checkbox
        if (checkbox.prop('checked')) {
            // 폼 안에 새로운 li 엘리먼트 추가
            addLiElement(currentValue, currentName, itemNameClass, itemName);

            // 추가된 li 엘리먼트가 2개 이상이면 "두 줄 넘쳤을 때만 나오게" 하는 클래스 추가
            if ($('#keywordFrm li').length > 1) {
                $('#keywordFrm .item_more').addClass('show');
            }

            // resultSet 클래스가 있는 엘리먼트의 style display 속성 변경
            $('.resultSet').css('display', 'block');
        } else {
            // 결과 세트에 li 엘리먼트가 1개 이하일 때는 "두 줄 넘쳤을 때만 나오게" 하는 클래스 제거
            if ($('#keywordFrm li').length === 0) {
                $('#keywordFrm .item_more').removeClass('show');

                // resultSet 클래스가 있는 엘리먼트의 style display 속성 변경
                $('.resultSet').css('display', 'none');
            }
        }

        // 부모 dl에 on 클래스 추가/제거
        currentDl.toggleClass('on', checkbox.prop('checked'));
    }

    // 새로운 li 엘리먼트 추가
    function addLiElement(value, name, itemNameClass, itemName) {
        $('#keywordFrm').append('<li class="item ' + itemNameClass + '" value="' + value + '" name="' + itemName + '"><button type="button">' + name + '<span class="ico">삭제</span></button></li>');
    }   
    
    // .btn_tit 클릭 시 클래스 부여/제거
    function toggleDlClass(dlElement) {
        dlElement.toggleClass('on', !dlElement.hasClass('on'));
        $('dl').not(dlElement).removeClass('on');
    }

    // 선택된 조건 제거
    function handleRemoval(valueToRemove) {
        // 해당 value를 가지고 있는 li 엘리먼트 선택
        var liElement = $('#keywordFrm li[value="' + valueToRemove + '"]');

        // 해당 li 엘리먼트에 부여된 클래스 확인
        var itemClass = liElement.attr('class');

        // 해당 value를 가지고 있는 dl 내의 체크박스 선택
        var checkbox = $('dl .' + itemClass + '[value="' + valueToRemove + '"]');

        // 해당 체크박스 해제
        checkbox.prop('checked', false);

        // 선택된 조건 업데이트 함수 호출
        updateSelectedConditions(checkbox);

        // 해당 li 엘리먼트 제거
        liElement.remove();

        // 결과 세트에 li 엘리먼트가 1개 이하일 때는 "두 줄 넘쳤을 때만 나오게" 하는 클래스 제거
        if ($('#keywordFrm li').length === 0) {
            $('#keywordFrm .item_more').removeClass('show');
			
            // resultSet 클래스가 있는 엘리먼트의 style display 속성 변경
            $('.resultSet').css('display', 'none');
            
        }
    }
    
 // 초기화 버튼 클릭 시 실행되는 이벤트 핸들러
    $('.item_reset button').on('click', function () {
        // 모든 li 요소 제거
        $('#keywordFrm li').remove();

        // 모든 체크박스 해제
        $('input[type="checkbox"]').prop('checked', false);

        // .item_more 클래스 제거
        $('#keywordFrm .item_more').removeClass('show');

        // resultSet 클래스가 있는 엘리먼트의 style display 속성 변경
        $('.resultSet').css('display', 'none');

        // dl 요소에서 'on' 클래스 제거
        $('dl').removeClass('on');
        
        $(".tplTab li").removeClass("on");
 	    $(".tplTab li:first-child").addClass("on");
 	    
 	    param = {};
        recruitmentList(1);
    });
 
 
 	// 채용 상세 조건 검색 버튼 이벤트
 	$("#dev-btn-search").click(function(){
 		
 		$(".tplTab li").removeClass("on");
 	    $(".tplTab li:first-child").addClass("on");
 	    
 	   	var duty = $(".items li.dutyItem").attr("value");
	    var area = $(".items li.areaItem").attr("value");
	    var career = $(".items li.careerItem").attr("value");
	    var edu = $(".items li.eduItem").attr("value");
	    var ind = $(".items li.indItem").attr("value");
	    var et = $(".items li.etItem").attr("value");
	    
	    
	 	// 값이 있는 경우에만 JSON에 추가
	    if (duty && duty.length > 0) {
	        param.d_id = duty;
	        
	    }
	
	    if (area && area.length > 0) {
	        param.wa_id = area;
	    }
	
	    if ( career && career.length > 0) {
	        param.rec_id = career;
	    }
	
	    if (edu && edu.length > 0) {
	        param.e_id = edu;
	    }
	
	    if (ind && ind.length > 0) {
	        param.ind_id = ind;
	    }
	
	    if (et && et.length > 0) {
	        param.et_id = et;
	    }
	    
 		recruitmentList(1);
 		
	});
 	
 	// 기업명, 채용공고 검색 이벤트
 	$("#dev-gi-search").click(function name() {
 		
 		$(".tplTab li").removeClass("on");
 	    $(".tplTab li:first-child").addClass("on");
 	    
 	    
 		recruitmentList(1);
	});
 	
 
})//ready


function recruitmentList(num) {
	
    var coType = $(".tplTab li.on").data("tab-index");

    // 클래스가 "on"인 <li>를 찾아서 텍스트 값을 변수에 저장
    if (coType === 0) {  // 여기서 0은 '전체'에 해당하는 data-tab-index 값입니다.
        param.currentPage = num;
        delete param.cm_co_type;
    } else if(coType === 1) {
    	param.currentPage = num;
    	param.cm_co_type = "대기업";
    }else if(coType === 2) {
    	param.currentPage = num;
    	param.cm_co_type = "중견기업";
    }else if(coType === 3) {
    	param.currentPage = num;
    	param.cm_co_type = "중소기업";
    }else if(coType === 4) {
    	param.currentPage = num;
    	param.cm_co_type = "공기업";
    }
	
 	// 선택된 정렬 기준
    var sortOption = $("#sortTab").val();
 	
    // 검색어 입력값
    var searchKeyword = $("#keywordFrm").val();
    
	 // 값이 있는 경우에만 JSON에 추가
    if (sortOption && sortOption.length > 0) {
        param.field = sortOption;
    }
	 
    // 값이 있는 경우에만 JSON에 추가
    if (searchKeyword && searchKeyword.length > 0) {
        param.keyword = searchKeyword;
    }
    
	$.ajax({
		url : "http://211.63.89.133/prj_tryJobCatch/recruitmentList_process.do",
		data : param,
		type : "GET",
		dataType : "JSON",
		error : function(xhr){
			alert(xhr.status);
		},
		success : function( jsonObj ){
			$("#output").empty();
			var output = "";
			if (jsonObj.data.length > 0) {
			$.each(jsonObj.data,function(i,jsonList){
				output += "<tr class='devloopArea' data-effectctgr-code='0' data-info='43305589|45758511|tapacopa|C|SL||37486638'>";
				output += "<th scope='row'>";
				output += "<span class='tplChkRect tplChkRect_1'></span>";
				output += "</th>";
				output += "<td class='tplCo'>";
				output += "<a href='/Recruit/Co_Read/C/37486638' class='link normalLog' data-clickctgrcode='B01' target='_blank'>"+ jsonList.cm_co_name +"</a>";
				output += "<div class='typ'></div>";
				output += "</td>";
				output += "<td class='tplTit'>";
				output += "<div class='titBx'>";
				output += "<strong>";
				output += "<a href='#void' class='link normalLog' data-clickctgrcode='B02' target='_blank' onclick='recruitmentDetail(\"" + jsonList.r_id + "\")'>" + jsonList.r_title + "</a>";
				output += "</strong>";
				output += "<p class='etc'>";
				output += "<span class='cell'>"+ jsonList.rec_name +"</span>";
				output += "<span class='cell'>"+jsonList.education+"</span>";
				output += "<span class='cell'>"+jsonList.wa_name+"</span>";
				output += "<span class='cell'>"+jsonList.et_name+"</span>";
				output += "<span class='cell'>"+jsonList.r_sal+"</span>";
				output += "</p>";
				output += "<p class='dsc'>";
				output += "</p>";
				output += "</div>";
				output += "</td>";
				output += "<td class='tplPrv'></td>";
				output += "<td class='odd'>";
				output += "<button type='button' class='tplBtn tplBtn_1 tplBtnOrg dev-btn-apply' onclick='apply(\"" + jsonList.r_id + "\")'><span>즉시지원</span></button>";
				output += "<span class='date dotum'><span class='tahoma'>~"+ jsonList.r_end_date +"</span></span>";
				output += "</td>";
				output += "</tr>";
				});
			
			}else{
				// 검색 결과가 없는 경우 메시지를 출력
			    output += "<tr><td colspan='5'>검색하신 채용정보가 없습니다.</td></tr>";
			 // 탭에 건수 표시
	            $("#anchorGICnt_1 li span em").text('(0건)');
			}
			
			var pageOutput = jsonObj.pageNation;
			
			if (coType === 0) {
			    corperation = "전체";
			} else if (coType === 1) {
			    corperation = "대기업";
			} else if (coType === 2) {
			    corperation = "중견기업";
			} else if (coType === 3) {
			    corperation = "중소기업";
			} else {
			    corperation = "공기업";
			}

			var tabSelector = $("#anchorGICnt_1 li[data-tab-index='" + coType + "'] span[data-text='" + corperation + "']");

			// 모든 탭의 건수 초기화
			$("#anchorGICnt_1 li span em").text('');

			// 현재 클릭된 탭에만 건수를 보여줌
			if ($("#anchorGICnt_1 li.on").length > 0) {
			    tabSelector.html(corperation + ' <em>(' + jsonObj.dataSize + '건)</em>');
			}
			
			$("#output").html(output);
			$("#pageOutput").html(pageOutput);
			
			
		}//success
	});//ajax
	
	
}
	// 채용 상세로 넘어가는 이벤트
	function recruitmentDetail(id) {
		location.href = "http://211.63.89.133/prj_tryJobCatch/recruitmentDetail.do?r_id=" + id;
	}
	
	// 지원하기 버튼 클릭
	function apply(id) {
		
		$.ajax({
			url : "http://211.63.89.133/prj_tryJobCatch/applyState.do",
			data : {r_id : id},
			type : "GET",
			dataType : "JSON",
			error : function(xhr){
				alert(xhr.status);
			},
			success : function( jsonObj ){
				var userId = "${M_ID}";
				var condition = jsonObj.condition;
				
				if(userId != "" && condition != 'Y'){
			    	// 새 창을 열고 지정된 URL을 로드
				    var newWindow = window.open("http://211.63.89.133/prj_tryJobCatch/apply.do?r_id=" + id, "NewWindow", "width=600, height=800");
				    
				    // 새 창의 크기 및 위치를 설정 (선택적)
				    if (newWindow) {
				        newWindow.resizeTo(600, 800);
				        newWindow.moveTo((window.screen.width - 600) / 2, (window.screen.height - 800) / 2);
				    }
				}else if(userId != "" && condition == 'Y'){
					alert("이미 지원한 공고입니다. 마이페이지에서 지원서 수정 가능합니다.")	
				}else{
					alert("로그인 후 이용해주세요.");
				}
					
			}//success
		});//ajax
		
		
	}
</script>
    
    <link href="//i.jobkorea.kr/deploy/pc/dist/css/personal/layout/footer-sv-202311031048.css" rel="stylesheet" type="text/css">
<meta http-equiv="origin-trial" content="As0hBNJ8h++fNYlkq8cTye2qDLyom8NddByiVytXGGD0YVE+2CEuTCpqXMDxdhOMILKoaiaYifwEvCRlJ/9GcQ8AAAB8eyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiV2ViVmlld1hSZXF1ZXN0ZWRXaXRoRGVwcmVjYXRpb24iLCJleHBpcnkiOjE3MTk1MzI3OTksImlzU3ViZG9tYWluIjp0cnVlfQ=="><meta http-equiv="origin-trial" content="AgRYsXo24ypxC89CJanC+JgEmraCCBebKl8ZmG7Tj5oJNx0cmH0NtNRZs3NB5ubhpbX/bIt7l2zJOSyO64NGmwMAAACCeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiV2ViVmlld1hSZXF1ZXN0ZWRXaXRoRGVwcmVjYXRpb24iLCJleHBpcnkiOjE3MTk1MzI3OTksImlzU3ViZG9tYWluIjp0cnVlfQ=="><meta http-equiv="origin-trial" content="A/ERL66fN363FkXxgDc6F1+ucRUkAhjEca9W3la6xaLnD2Y1lABsqmdaJmPNaUKPKVBRpyMKEhXYl7rSvrQw+AkAAACNeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiRmxlZGdlQmlkZGluZ0FuZEF1Y3Rpb25TZXJ2ZXIiLCJleHBpcnkiOjE3MTkzNTk5OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A6OdGH3fVf4eKRDbXb4thXA4InNqDJDRhZ8U533U/roYjp4Yau0T3YSuc63vmAs/8ga1cD0E3A7LEq6AXk1uXgsAAACTeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiRmxlZGdlQmlkZGluZ0FuZEF1Y3Rpb25TZXJ2ZXIiLCJleHBpcnkiOjE3MTkzNTk5OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><script type="text/javascript" src="//t1.daumcdn.net/adfit/static/kp.js"></script><script type="text/javascript" src="//dynamic.criteo.com/js/ld/ld.js?a=87221"></script><meta http-equiv="origin-trial" content="AwnOWg2dzaxHPelVjqOT/Y02cSxnG2FkjXO7DlX9VZF0eyD0In8IIJ9fbDFZGXvxNvn6HaF51qFHycDGLOkj1AUAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5jb206NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY5NTE2Nzk5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0="></head>

<body id="" class="lgiSubMain" cz-shortcut-listen="true" style="">
    <div id="skipNavigation">
        <p><a href="#container">메뉴 건너뛰기</a></p>
    </div>

<input type="hidden" name="MemId" id="MemId" value="">
<input type="hidden" name="MemTypeCode" id="MemTypeCode" value="">

<c:import url="/common/include/header.jsp"/>

<script src="/NET/bundles/backbone?v=v0-3Qm9SB2AUlk_aeK9GniBVmVTE9yxsGpDYtXZWlYU1"></script>

<script src="/NET/bundles/Gnb?v=JnEyldyQ4JQKsSv2JSofWwnA-lS2Ce07qqJMI25VA6k1"></script>



<script src="//i.jobkorea.kr/content/js/uit.carousel-sv-202005061649.js" type="text/javascript"></script>
<script type="text/javascript" src="/Scripts/User/Mict.js?202311091400"></script>

    <div id="wrap" class="bg-gray">
        <div id="container">
            

<div id="content" class="clear" data-pagecode="AM" data-value-json="{&quot;dutyCtgr&quot;:0,&quot;duty&quot;:null,&quot;dkwrd&quot;:null,&quot;local&quot;:null,&quot;subwayUpp&quot;:null,&quot;subway&quot;:null,&quot;career&quot;:null,&quot;careerStart&quot;:null,&quot;careerEnd&quot;:null,&quot;edu&quot;:null,&quot;cotype&quot;:null,&quot;jobtype&quot;:null,&quot;industryCtgr&quot;:0,&quot;industry&quot;:null,&quot;ikwrd&quot;:null,&quot;position&quot;:null,&quot;age&quot;:null,&quot;pay&quot;:null,&quot;paytype&quot;:null,&quot;payinput&quot;:null,&quot;sex&quot;:null,&quot;majorCtgr&quot;:null,&quot;major&quot;:null,&quot;license&quot;:null,&quot;pref&quot;:null,&quot;wel&quot;:null,&quot;textinclude&quot;:null,&quot;textexclude&quot;:null,&quot;IncludeAgeZero&quot;:false,&quot;IncludeGenderIrrelevant&quot;:false,&quot;iframeFlag&quot;:false,&quot;monJobType&quot;:null,&quot;monJobTypeArray&quot;:null,&quot;monLocalArray&quot;:null,&quot;menucode&quot;:&quot;local&quot;,&quot;searchtype&quot;:&quot;B&quot;,&quot;hasSubwayOnlyCache&quot;:false,&quot;hasLocalOnlyCache&quot;:null,&quot;dutyArr&quot;:null,&quot;dkwrdArr&quot;:null,&quot;localArr&quot;:null,&quot;subwayUppArr&quot;:null,&quot;subwayArr&quot;:null,&quot;careerArr&quot;:null,&quot;eduArr&quot;:null,&quot;cotypeArr&quot;:null,&quot;jobtypeArr&quot;:null,&quot;industryArr&quot;:null,&quot;ikwrdArr&quot;:null,&quot;positionArr&quot;:null,&quot;payArr&quot;:null,&quot;majorCtgrArr&quot;:null,&quot;majorArr&quot;:null,&quot;licenseArr&quot;:null,&quot;prefArr&quot;:null,&quot;welArr&quot;:null,&quot;textincludeArr&quot;:null,&quot;textexcludeArr&quot;:null,&quot;dutyCtgrSelect&quot;:null,&quot;IndustryCtgrSelect&quot;:null,&quot;dutySelect&quot;:null,&quot;IndustrySelect&quot;:null,&quot;localCtgrSelect&quot;:null,&quot;majorCtgrSelect&quot;:null,&quot;isAllDutySearch&quot;:false,&quot;isAllLocalSearch&quot;:true}">
    <h1 class="skip">메뉴별 채용공고</h1>
    <!-- Side Menu -->

    <div class="rcr_cnt" id="bbArea">
        <!-- 검색설정 -->
        

<div class="cntWrap clear" id="devSearchForm" data-value-json="{&quot;dutyCtgr&quot;:0,&quot;duty&quot;:null,&quot;dkwrd&quot;:null,&quot;local&quot;:null,&quot;subwayUpp&quot;:null,&quot;subway&quot;:null,&quot;career&quot;:null,&quot;careerStart&quot;:null,&quot;careerEnd&quot;:null,&quot;edu&quot;:null,&quot;cotype&quot;:null,&quot;jobtype&quot;:null,&quot;industryCtgr&quot;:0,&quot;industry&quot;:null,&quot;ikwrd&quot;:null,&quot;position&quot;:null,&quot;age&quot;:null,&quot;pay&quot;:null,&quot;paytype&quot;:null,&quot;payinput&quot;:null,&quot;sex&quot;:null,&quot;majorCtgr&quot;:null,&quot;major&quot;:null,&quot;license&quot;:null,&quot;pref&quot;:null,&quot;wel&quot;:null,&quot;textinclude&quot;:null,&quot;textexclude&quot;:null,&quot;IncludeAgeZero&quot;:false,&quot;IncludeGenderIrrelevant&quot;:false,&quot;iframeFlag&quot;:false,&quot;monJobType&quot;:null,&quot;monJobTypeArray&quot;:null,&quot;monLocalArray&quot;:null,&quot;menucode&quot;:&quot;local&quot;,&quot;searchtype&quot;:&quot;B&quot;,&quot;hasSubwayOnlyCache&quot;:false,&quot;hasLocalOnlyCache&quot;:null,&quot;dutyArr&quot;:null,&quot;dkwrdArr&quot;:null,&quot;localArr&quot;:null,&quot;subwayUppArr&quot;:null,&quot;subwayArr&quot;:null,&quot;careerArr&quot;:null,&quot;eduArr&quot;:null,&quot;cotypeArr&quot;:null,&quot;jobtypeArr&quot;:null,&quot;industryArr&quot;:null,&quot;ikwrdArr&quot;:null,&quot;positionArr&quot;:null,&quot;payArr&quot;:null,&quot;majorCtgrArr&quot;:null,&quot;majorArr&quot;:null,&quot;licenseArr&quot;:null,&quot;prefArr&quot;:null,&quot;welArr&quot;:null,&quot;textincludeArr&quot;:null,&quot;textexcludeArr&quot;:null,&quot;dutyCtgrSelect&quot;:null,&quot;IndustryCtgrSelect&quot;:null,&quot;dutySelect&quot;:null,&quot;IndustrySelect&quot;:null,&quot;localCtgrSelect&quot;:null,&quot;majorCtgrSelect&quot;:null,&quot;isAllDutySearch&quot;:false,&quot;isAllLocalSearch&quot;:true}" data-search-type="">
    <h2 class="titDetailSch">채용공고 상세검색</h2>
    <!-- 최근 검색한 조건 -->
    <div class="detail-search-button">
        <div class="recentSetting">
            <div class="ly_rs lySchImport devLyType_P" style="display:none;" id="devSearchedTermsLayer">
                <!-- 레이어 영역 -->
            </div>
        </div>
        
    </div>

    <div class="detailArea">
        <!-- on클래스 추가하면 검색 조건 floating -->
        <div class="detailWrap">
        <div class="detail-search clear">
                <!-- 도은정 과장님의 요청으로 검색 설정 부분 높이가 기본 210이였다가 레이어 뜰때만 280으로 바뀌게 css수정 해두었습니다.
                아래의 dl들에 on 클래스 추가되면 높이 280으로 늘어나고 레이어 팝업 노출 됩니다. -->
                <dl class="exp circleType dev-tab dev-local">
                    <!-- 직무 -->
                    <dt>
                        <p class="btn_tit">직무</p>
                    </dt>
                    <dd class="nano has-scrollbar">
                        <div class="nano-content" tabindex="0" style="right: -17px;">
                            <ul class="dutySel">
                            
                            <c:forEach var="duty" items="${ requestScope.dutyList }" varStatus="i">
                                    <li class="item">
                                        <input type="checkbox" class="inp_chk" id="duty${ i.count }" name="d_id" value="${ duty.d_id }" data-name="${ duty.d_name }">
                                        <label class="lb_tag" for="duty${ i.count }">
                                            <span class="radiWrap">
                                                <span><c:out value="${ duty.d_name }"/></span>
                                                <i class="ico close-ty1 ir">닫기</i>
                                            </span>
                                        </label>
                                    </li>
                            </c:forEach>
                                    
                            </ul>
                        </div>
                        <div class="nano-pane" style="display: block;"><div class="nano-slider" style="height: 180px; transform: translate(0px, 0px);"></div></div>
                    </dd>
                </dl>
                <dl class="exp circleType dev-tab dev-local">
                    <!-- 근무지역 -->
                    <dt>
                        <p class="btn_tit">근무지역</p>
                    </dt>
                    <dd class="nano has-scrollbar">
                        <div class="nano-content" tabindex="0" style="right: -17px;">
                            <ul class="localSel">
                            <c:forEach var="area" items="${ requestScope.areaList }" varStatus="i">
                                    <li class="item">
                                        <input type="checkbox" class="inp_chk" id="area${ i.count }" name="wa_id" value="${ area.wa_id }" data-name="${ area.wa_name }">
                                        <label class="lb_tag" for="area${ i.count }">
                                            <span class="radiWrap">
                                                <span><c:out value="${ area.wa_name }"/></span>
                                                <i class="ico close-ty1 ir">닫기</i>
                                            </span>
                                        </label>
                                    </li>
                             </c:forEach>
                            </ul>
                        </div>
                        <div class="nano-pane" style="display: block;"><div class="nano-slider" style="height: 139px; transform: translate(0px, 0px);"></div></div>
                    </dd>
                </dl>
                <dl class="exp circleType dev-tab dev-career">
                    <!-- 경력 -->
                    <dt>
                        <p class="btn_tit">경력</p>
                    </dt>
                    <dd class="nano has-scrollbar">
                        <div class="nano-content" tabindex="0" style="right: -17px;">
                            <ul class="expSel">
                            <c:forEach var="career" items="${ requestScope.careerList }" varStatus="i">
                                    <li class="item">
                                        <input type="checkbox" class="inp_chk" id="career${ i.count }" name="rec_id" value="${ career.rec_id }" data-name="${ career.rec_name }">
                                        <label class="lb_tag" for="career${ i.count }">
                                            <span class="radiWrap">
                                                <span><c:out value="${ career.rec_name }"/></span>
                                                <i class="ico close-ty1 ir">닫기</i>
                                            </span>
                                        </label>
                                    </li>
                             </c:forEach>
                            </ul>
                        </div>
                        <div class="nano-pane" style="display: block;"><div class="nano-slider" style="height: 139px; transform: translate(0px, 0px);"></div></div>
                    </dd>
                </dl>
                <dl class="edu circleType dev-tab dev-edu">
                    <!-- 학력 -->
                    <dt>
                        <p class="btn_tit">학력</p>
                    </dt>
                    <dd class="nano has-scrollbar">
                        <div class="nano-content" tabindex="0" style="right: -17px;">
                            <ul class="eduSel">
                            
                            <c:forEach var="education" items="${ requestScope.educationList }" varStatus="i">
                                        <li class="item">
                                            <input type="checkbox" class="inp_chk" id="edu${ i.count }" name="e_id" value="${ education.e_id }" data-name="${ education.education }" >
                                            <label class="lb_tag" for="edu${ i.count }">
                                                <span class="radiWrap">
                                                    <span><c:out value="${ education.education }"/></span>
                                                    <i class="ico close-ty1 ir">닫기</i>
                                                </span>
                                            </label>
                                        </li>
                            </c:forEach>

                            </ul>
                        </div>
                        <div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 194px; transform: translate(0px, 0px);"></div></div>
                    </dd>
                </dl>
                <dl class="exp circleType dev-tab dev-local">
                    <!-- 산업 -->
                    <dt>
                        <p class="btn_tit">산업</p>
                    </dt>
                    <dd class="nano has-scrollbar">
                        <div class="nano-content" tabindex="0" style="right: -17px;">
                            <ul class="idsSel">
                            
                            <c:forEach var="industry" items="${ requestScope.industryList }" varStatus="i">
                                    <li class="item">
                                        <input type="checkbox" class="inp_chk" id="industry${ i.count }" name="ind_id" value="${ industry.ind_id }" data-name="${ industry.ind_name }">
                                        <label class="lb_tag" for="industry${ i.count }">
                                            <span class="radiWrap">
                                                <span><c:out value="${ industry.ind_name }"/></span>
                                                <i class="ico close-ty1 ir">닫기</i>
                                            </span>
                                        </label>
                                    </li>
                             </c:forEach>
                            </ul>
                        </div>
                        <div class="nano-pane" style="display: block;"><div class="nano-slider" style="height: 139px; transform: translate(0px, 0px);"></div></div>
                    </dd>
                </dl>
                <dl class="hty circleType dev-tab dev-jobtype">
                    <!-- 고용형태 -->
                    <dt>
                        <p class="btn_tit">고용형태</p>
                    </dt>
                    <dd class="nano has-scrollbar">
                        <div class="nano-content" tabindex="0" style="right: -17px;">
                            <ul class="htySel">
                            
                            <c:forEach var="employeeType" items="${ requestScope.employeeTypeList }" varStatus="i">
                                    <li class="item">
                                        <input type="checkbox" class="inp_chk" id="jobtype${ i.count }" name="et_id" value="${ employeeType.et_id }" data-name="${ employeeType.et_name }">
                                        <label class="lb_tag" for="jobtype${ i.count }">
                                            <span class="radiWrap">
                                                <span><c:out value="${ employeeType.et_name }"/></span>
                                                <i class="ico close-ty1 ir">닫기</i>
                                            </span>
                                        </label>
                                    </li>
                            </c:forEach>        
                            </ul>
                        </div>
                        <div class="nano-pane" style="display: block;"><div class="nano-slider" style="height: 127px; transform: translate(0px, 0px);"></div></div>
                    </dd>
                </dl>
            </div>
            <div id="devCndtDispArea" class="resultSetWrap">
            
                <div class="resultSet" style="display: none">
                    
                    <dl class="listWrap clear">
                        <dt class="blind">선택한 조건 값</dt>
                        <dd class="resultList">
                            <ul id="toolitems" class="items clear">
                            <form id="keywordFrm">
                            
            
                            </form>
        </ul>
                            <div class="funBtn clear">
                                
                                <div class="item_reset"><button type="reset"><span class="ico"></span>초기화</button></div>
                            </div>
                        </dd>
                        <dd class="btnSet">
                            <button type="button" class="btn_sch" id="dev-btn-search"><span>선택된 조건 검색하기</span></button>
                        </dd>
                    </dl>
                </div>
            </div>
        </div>
    </div>
</div>

        <!-- JK-6571 JobKorea x Lezi Event -->
        <div class="advertisement" style="display:none;"><a href="/help/notice/view?no=14200&amp;rezi=1" target="_blank"><img src="//i.jobkorea.kr/content/images/recruit/category/ad-rezi.png" alt="지금 신청하면 평생 무료. 영문이력서 원어민 전문가의 1:1 무료 첨삭 EVENT"></a></div>
<div>


<div class="tplJobListWrap devTplTabBx">
    <h2 class="bn_hd_2 blind">채용공고 리스트</h2>
    <input type="hidden" id="hdnGICnt" value=" 125,874">
    <div class="tplTabBx jobListTab">
        <ul class="tplTab clear" id="anchorGICnt_1">
            <li class="on" data-tab-index="0" style="width: 192px" onclick="recruitmentList(1)">
            <button type="button" >
            <span data-text="전체" value="0">전체</span>
            </button>
            </li>
            <li data-tab-index="1" style="width: 193px" onclick="recruitmentList(1)">
            <button type="button">
            <span data-text="대기업" value="1">대기업</span>
            </button>
            </li>
            <li data-tab-index="2" style="width: 193px" onclick="recruitmentList(1)">
            <button type="button">
            <span data-text="중견기업" value="2">중견기업</span>
            </button>
            </li>
            <li data-tab-index="3" style="width: 193px" onclick="recruitmentList(1)">
            <button type="button">
            <span data-text="중소기업" value="3">중소기업</span>
            </button>
            </li>
            <li data-tab-index="4" style="width: 193px" onclick="recruitmentList(1)">
            <button type="button">
            <span data-text="공기업" value="4">공기업</span>
            </button>
            </li>
        </ul>
    </div>

    

<div class="tplJobListFunc clear">
    <div class="tplJobManBtn" id="toolGI">
        <div class="exceptSec">
            <div class="tplSltBx tplGiSlt devTplSltBx">
                <label for="sortTab">기업명</label>
                <select name="sortTab" id="sortTab" class="tplSlt" title="공고 정렬순 선택">
                    <option value="cm_co_name" selected="">기업명</option>
                    <option value="r_title">공고제목</option>
                </select>
            </div>
            <div class="exceptWord">
                <input type="text" id="keyword" name="keyword">
                <button type="button" id="dev-gi-search"><span class="blind">검색</span></button>
            </div>
        </div>
    </div>
</div>

<div class="tplJobListFunc clear" style="display:none;">
    <button type="button" class="tplBtn tplBtn_2 tplBtnApply"><span>지원하기</span></button>
    <button type="button" class="tplBtn tplBtn_2 tplBtnScr"><span>스크랩</span></button>
    <button type="button" class="tplBtn tplBtn_2 tplBtnFav"><span>관심기업</span></button>
</div>
    <div class="lySmMoreArea jkSidebarArea">

    </div>
    
    <div class="tplList tplJobList">
        <table summary="전체 채용정보 목록으로 회사명, 채용제목, 미리보기, 등록일·마감일로 구성되어 있습니다.">
            <caption><span class="blind">전체 채용정보 목록</span></caption>
            <colgroup>
                <col width="50px">
                <col width="158px">
                <col width="*">
                <col width="82px">
                <col width="120px">
            </colgroup>
            <thead>
                <tr>
                    <th scope="col">행 선택</th>
                    <th scope="col">회사명</th>
                    <th scope="col">채용제목</th>
                    <th scope="col">미리보기</th>
                    <th scope="col">등록일·마감일</th>
                </tr>
            </thead>
            <tbody id="output">
            
            </tbody>
        </table>
    </div>

    <div id="dvGIPaging">
                    <div class="tplPagination newVer" id="pageOutput">
                    
            </div>

    </div>
</div>
</div>
    </div>
</div>

        </div>
        <div style="position:absolute; left:-5000px; overflow:hidden;"></div>
    </div>
    
    <c:import url="/common/include/footer.jsp"/>    
        
    <div id="devDetailPreview" class="lyReadPreview"></div>
    <div id="devTplDimDetailLayer" class="tplDim"></div>
    

    <script src="//i.jobkorea.kr/content/js/starter/jquery.nanoscroller-sv-202101271834.js" type="text/javascript"></script>
    <script type="text/javascript">
        // 나노 스크롤 실행
        $(".nano").nanoScroller({ preventPageScrolling: true });
    </script>
    
    <script src="//i.jobkorea.kr/content/js/jk_uit-sv-202005061649.js" type="text/javascript"></script>
    <script type="text/javascript" src="/Scripts/Recruit/rstn_item.js?v=202311091400"></script>
    <script type="text/javascript" src="/Scripts/Recruit/jobList.js?v=202311091400"></script>
    <script type="text/javascript" src="/Scripts/Recruit/detail_preview.js?v=202311091400"></script>
    <script type="text/javascript" src="/include/JS/resume-target.js?v=8"></script>

    <script type="text/javascript" src="/Scripts/Common/ServiceFunction.js?var=202311091400"></script>


<ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" style="display: none !important;" data-ad-status="unfilled"><div id="aswift_0_host" tabindex="0" title="Advertisement" aria-label="Advertisement" style="border: none; height: 0px; width: 0px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-block;"><iframe id="aswift_0" name="aswift_0" browsingtopics="true" style="left:0;position:absolute;top:0;border:0;width:undefinedpx;height:undefinedpx;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allow="attribution-reporting" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-2252464458280030&amp;output=html&amp;adk=1812271804&amp;adf=3025194257&amp;lmt=1699861524&amp;plat=9%3A32776%2C16%3A8388608%2C17%3A32%2C24%3A32%2C25%3A32%2C30%3A1081344%2C32%3A32%2C41%3A32%2C42%3A32&amp;plas=308x864_l%7C366x756_r&amp;format=0x0&amp;url=https%3A%2F%2Fwww.jobkorea.co.kr%2Frecruit%2Fjoblist%3Fmenucode%3Dlocal%26localorder%3D1&amp;ea=0&amp;pra=5&amp;wgl=1&amp;easpi=0&amp;asro=0&amp;asiscm=1&amp;aslmt=0.4&amp;asamt=-1&amp;asedf=0&amp;asefa=1&amp;aseiel=1~2&amp;ascmds=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTE5LjAuNjA0NS4xMDUiLG51bGwsMCxudWxsLCI2NCIsW1siR29vZ2xlIENocm9tZSIsIjExOS4wLjYwNDUuMTA1Il0sWyJDaHJvbWl1bSIsIjExOS4wLjYwNDUuMTA1Il0sWyJOb3Q_QV9CcmFuZCIsIjI0LjAuMC4wIl1dLDBd&amp;dt=1699861524147&amp;bpp=3&amp;bdt=1243&amp;idt=208&amp;shv=r20231108&amp;mjsv=m202311020101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3De694e610696ceeca-221d80e981e500fb%3AT%3D1699510675%3ART%3D1699510675%3AS%3DALNI_MY81yHlHaGxhuI2sZjVA-DymgEphQ&amp;gpic=UID%3D00000c82aa33f39c%3AT%3D1699510675%3ART%3D1699510675%3AS%3DALNI_MaNK6ufgCCHFtFiLUh6dkAzOYyasA&amp;nras=1&amp;correlator=1590815554533&amp;frm=20&amp;pv=2&amp;ga_vid=2002034609.1699510675&amp;ga_sid=1699861524&amp;ga_hid=1183295139&amp;ga_fc=1&amp;u_tz=540&amp;u_his=7&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_sd=1&amp;dmc=8&amp;adx=-12245933&amp;ady=-12245933&amp;biw=1903&amp;bih=963&amp;scr_x=0&amp;scr_y=8961&amp;eid=44759876%2C44759927%2C31079265%2C31079401%2C31079403%2C44795922%2C44807460%2C31078301%2C44807751%2C44807764%2C44808148%2C31078663%2C31078665%2C31078668%2C31078670&amp;oid=2&amp;pvsid=700624538714439&amp;tmod=435031894&amp;uas=0&amp;nvt=3&amp;fsapi=1&amp;ref=https%3A%2F%2Fwww.jobkorea.co.kr%2F&amp;fc=1920&amp;brdim=0%2C0%2C0%2C0%2C1920%2C0%2C0%2C0%2C1920%2C963&amp;vis=2&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=32768&amp;bc=31&amp;td=1&amp;psd=W251bGwsbnVsbCxudWxsLDNd&amp;nt=1&amp;ifi=1&amp;uci=a!1&amp;fsb=1&amp;dtd=343" data-google-container-id="a!1" data-load-complete="true"></iframe></div></ins><div id="criteo-tags-div" style="display: none;"></div><iframe src="https://www.google.com/recaptcha/api2/aframe" width="0" height="0" style="display: none;"></iframe><iframe width="1" height="1" scrolling="no" frameborder="0" style="display:none" src="https://asia.creativecdn.com/ig-membership?ntk=1Im9Xsc_dLayGLf_2i7_bi7-lp-2dSBpJ6z0GBBPb0DN0rfAEO_xQZQ5EkIL7FcAGHdIlA6nSKofCvyl6ER-HtuqKOcADUROfh69ao-RZgs"></iframe><iframe width="1" height="1" scrolling="no" frameborder="0" style="display:none" src="https://asia.creativecdn.com/topics-membership?ntk=IBdCUifHOsQ4JfSptcCwIMBSAM5PC_v7OEJJRS3BqgnQMCyQIzTsHse9XCK_9Gju1HZPcTfwyNAafbEOPYbWdw"></iframe><iframe allow="join-ad-interest-group" data-tagging-id="G-GQWHSF87P4" data-load-time="1699861677798" height="0" width="0" style="display: none; visibility: hidden;" src="https://td.doubleclick.net/td/ga/rul?tid=G-GQWHSF87P4&amp;gacid=385676172.1699510674&amp;gtm=45je3b81v890431961&amp;dma=0&amp;gcd=11l1l1l1l1&amp;aip=1&amp;fledge=1&amp;z=478087275"></iframe><iframe height="0" width="0" title="Criteo DIS iframe" style="display: none;"></iframe></body><iframe id="google_esf" name="google_esf" src="https://googleads.g.doubleclick.net/pagead/html/r20231108/r20190131/zrt_lookup_fy2021.html" style="display: none;"></iframe></html>