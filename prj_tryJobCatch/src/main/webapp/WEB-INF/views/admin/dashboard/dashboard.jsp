<%-- <%@page import="admin.vo.ReservationCountVO"%>
<%@page import="admin.vo.RestaurantReviewVO"%>
<%@page import="admin.vo.TourReviewVO"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="admin.vo.RankVO"%>
<%@page import="admin.vo.QandAVO"%> --%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<%-- <%@page import="admin.vo.NoticeVO"%> --%>
<%@page import="java.util.List"%>
<%-- <%@page import="admin.dao.DashboardDAO"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info = "" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%-- <c:if test="${ empty admin }">
<c:redirect url="../admin/admin_login.jsp"/>
</c:if> --%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>관리자 | Dashboard</title>
<!-- <link rel = "stylesheet" type="text/css" href = "http://192.168.10.134/html_prj/common/css/main_v20230906"> -->
<style type="text/css">
thead{ text-align : center }
td{ text-align : center }
</style>
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<%-- <%

DashboardDAO dDAO = DashboardDAO.getInstance();
try{
	List<RankVO> restaurantRankList = dDAO.selectRestaurantRank();
	List<RankVO> touristAreaRankList = dDAO.selectTouristAreaRank();
	 Gson gson = new Gson();
	String restaurantRankJson = gson.toJson(restaurantRankList);
	String touristAreaRankJson = gson.toJson(touristAreaRankList);
	
	
	pageContext.setAttribute("restaurantRankList", restaurantRankJson);
	pageContext.setAttribute("touristAreaRankList", touristAreaRankJson);
}catch(SQLException se){
	se.printStackTrace();
}
%> --%>

<script type="text/javascript">
$(function(){
	$("#logout").click(function(){
		location.href="logout.do";
	});
	
	$("#userlist").click(function(){
		location.href="userlist.do";
	});
		   
	    
   /* // JSTL에서 가져온 JSON 데이터를 JavaScript 변수에 할당
    var touristAreaRankList = ${touristAreaRankList};

    // labels와 data 배열 초기화
    var labels = [];
    var data = [];

    // restaurantRankList에서 데이터 추출
    for (var i = 0; i < touristAreaRankList.length; i++) {
    	if(i < 5){
        var rankVO = touristAreaRankList[i];
        labels.push(rankVO.name);
        data.push(rankVO.like);
    	}else{
    		break;
    	}
    }

	    var areaChartData = {
		  	      labels  : labels,
		  	      datasets: [
		  	        {
		  	          label               : '좋아요',
		  	          backgroundColor     : '#BFE9E5',
		  	          borderColor         : 'BFE9E5',
		  	          pointRadius         : false,
		  	          pointColor          : 'BFE9E5',
		  	          pointStrokeColor    : '#c1c7d1',
		  	          pointHighlightFill  : '#fff',
		  	          pointHighlightStroke: 'rgba(220,220,220,1)',
		  	          data                : data
		  	        }
		  	      ]
		  	    }
		    
		    var barChartCanvas = $('#barChart').get(0).getContext('2d');
		    var barChartData = $.extend(true, {}, areaChartData);
		    var temp0 = areaChartData.datasets[0];
		    barChartData.datasets[0] = temp0;

		    var barChartOptions = {
		      responsive              : true,
		      maintainAspectRatio     : false,
		      datasetFill             : false
		    }

		    new Chart(barChartCanvas, {
		      type: 'bar',
		      data: barChartData,
		      options: barChartOptions
		    });
		    
		 // JSTL에서 가져온 JSON 데이터를 JavaScript 변수에 할당
		    var restaurantRankList = ${restaurantRankList};

		    // labels와 data 배열 초기화
		    var labels = [];
		    var data = [];

		    // restaurantRankList에서 데이터 추출
		    for (var i = 0; i < restaurantRankList.length; i++) {
		    	if(i < 5){
		        var rankVO = restaurantRankList[i];
		        labels.push(rankVO.name);
		        data.push(rankVO.like);
		    	}else{
		    		break;
		    	}
		    	
		    }
		    
		    var areaChartData2 = {
		  	      labels  : labels,
		  	      datasets: [
		  	        {
		  	          label               : '좋아요',
		  	          backgroundColor     : '#BFE9E5',
		  	          borderColor         : 'BFE9E5',
		  	          pointRadius         : false,
		  	          pointColor          : 'BFE9E5',
		  	          pointStrokeColor    : '#c1c7d1',
		  	          pointHighlightFill  : '#fff',
		  	          pointHighlightStroke: 'rgba(220,220,220,1)',
		  	          data                : data
		  	        }
		  	      ]
		  	    }
		  	    
		  		var barChartCanvas = $('#barChart2').get(0).getContext('2d');
		  	    var barChartData = $.extend(true, {}, areaChartData2);
		  	    var temp0 = areaChartData2.datasets[0];
		  	    barChartData.datasets[0] = temp0;

		  	    var barChartOptions = {
		  	      responsive              : true,
		  	      maintainAspectRatio     : false,
		  	      datasetFill             : false
		  	    }

		  	    new Chart(barChartCanvas, {
		  	      type: 'bar',
		  	      data: barChartData,
		  	      options: barChartOptions
		  	    }); */
	    
})//ready

function noticeDetail(id) {
	$("#noticeId").val(id);
	$("#noticeFrm").submit();
}

function questionDetail(id) {
	$("#questionId").val(id);
	$("#questionFrm").submit();
}

function moveReservation(id){
	$("#tourbusId").val(id);
	$("#tourbusFrm").submit();
}


</script>
<jsp:include page = "/common/jsp/set_style.jsp"></jsp:include>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item d-none d-sm-inline-block">
        <a href="dashboard.do" class="nav-link">Home</a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">    
        <label style="margin-right: 20px; margin-top: 5px">관리자님 안녕하세요.</label>
       </li>
      <li class="nav-item">
        <input type="button" value="로그아웃" class="btn btn-outline-secondary" id="logout" style="width: 150px;" >
       </li>
       </ul>
  </nav>
  <!-- /.navbar -->
  

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="dashboard.do" class="brand-link">
            <span class="brand-text font-weight-light">tryJOBcatch</span>
    </a>


      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="true">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="dashboard.do" class="nav-link active">
               <i class="bi bi-speedometer"></i>
              <p>
                 Dashboard
              </p>
            </a>
          </li>
          
          <li class="nav-item" id="userlist">
          <a href="#" class="nav-link">
               <i class="bi-people-fill"></i>
              <p> 회원관리</p>
            </a>
          </li>
         
           <li class="nav-item menu">
            <a href="#" class="nav-link">
              <i class="bi bi-building"></i>
                <i class="right fas fa-angle-left"></i>
                
             <p>기업관리</p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="companylist.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>기업 목록</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="recruitmentlist.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>채용 공고</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="reviewlist.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>리뷰 현황</p>
                </a>
              </li>
            </ul>
          </li>
          
         <li class="nav-item menu"><a href="#" class="nav-link"> 
         	<i class="bi bi-pencil-square"></i> 
         		<i class="right fas fa-angle-left"></i>
							<p>게시판 관리</p>
					</a>
						<ul class="nav nav-treeview">
							<li class="nav-item"><a href="noticelist.do" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>공지사항 관리</p>
							</a></li>
							<li class="nav-item"><a href="qnalist.do" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>문의사항 관리</p>
							</a></li>
							
						</ul></li>
          
          
          
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
		<div class="row">
          <div class="col-md-6">
            <div class="card" style="margin-left: 20px; margin-right: 20px; min-height: 380px">
              <div class="card-header">
                <h3 class="card-title">최근 공지사항</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                  <form action="../admin_post/admin_post_detail.jsp" method="get" id="noticeFrm">
                  	<input type="hidden" id= "noticeId" name= "noticeId"/>
                  </form>
                <table class="table">
                  <thead>
                    <tr>
                      <th style="width: 60px">번호</th>
                      <th>제목</th>
                      <th style="width: 150px">작성일</th>
                    </tr>
                  </thead>
                  <tbody>
<%-- <%
try{
List<NoticeVO> list = dDAO.selectRecentNotice();
for(int i = 0; i < list.size(); i++ ){
	if( i != 5){
%> --%>
 		  <tr>
            <%-- <td><%= i+1%></td>
            <td  onclick="noticeDetail('<%= list.get(i).getId() %>')"><%= list.get(i).getTitle() %></td>
            <td><%= list.get(i).getRegistrationDate() %></td> --%>
            <td>1</td>
            <td>title1</td>
            <td>2023-11-11</td>
          </tr>
          <tr>
            <td>2</td>
            <td>title2</td>
            <td>2023-11-11</td>
          </tr>
<%-- <%
	}else{
		break;
	}
}

}catch(SQLException se){
	se.printStackTrace();
}
%> --%>             

                  </tbody>
                </table>
              </div>
              <!-- /.card-body --> 
            </div>
            <!-- /.card -->
            <div class="card" style="margin-left: 20px; margin-right: 20px; min-height: 380px">
              <div class="card-header">
                <h3 class="card-title">신규 개인회원</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                  <form action="../admin_post/admin_post_detail.jsp" method="get" id="noticeFrm">
                  	<input type="hidden" id= "noticeId" name= "noticeId"/>
                  </form>
                <table class="table">
                  <thead>
                    <tr>
                      <th style="width: 60px">번호</th>
                      <th>이름</th>
                      <th style="width: 150px">등록일</th>
                    </tr>
                  </thead>
                  <tbody>
<%-- <%
try{
List<NoticeVO> list = dDAO.selectRecentNotice();
for(int i = 0; i < list.size(); i++ ){
	if( i != 5){
%> --%>
 		  <tr>
            <%-- <td><%= i+1%></td>
            <td  onclick="noticeDetail('<%= list.get(i).getId() %>')"><%= list.get(i).getTitle() %></td>
            <td><%= list.get(i).getRegistrationDate() %></td> --%>
            <td>1</td>
            <td>회원1</td>
            <td>2023-11-14</td>
          </tr>
          <tr>
            <td>2</td>
            <td>회원2</td>
            <td>2023-11-14</td>
          </tr>
<%-- <%
	}else{
		break;
	}
}

}catch(SQLException se){
	se.printStackTrace();
}
%> --%>             

                  </tbody>
                </table>
              </div>
              <!-- /.card-body --> 
            </div>
            <!-- /.card -->
            

             <!-- BAR CHART -->
            <div class="card card-success" style="margin-left: 20px; margin-right: 20px">
              <div class="card-header">
                <h3 class="card-title">인기많은 채용공고</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                <div class="chart">
                  <canvas id="barChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
          <div class="col-md-6">
            <div class="card" style="margin-left: 20px; margin-right: 20px; min-height: 380px">
              <div class="card-header">
                <h3 class="card-title">답변 대기 문의사항</h3> 
              </div>
              <!-- /.card-header -->
              <div class="card-body">
              <form action="../admin_post/admin_question_detail_proccess.jsp" method="post" id="questionFrm">
        	 <input type="hidden" id="questionId" name="questionId"/>
         	</form>
                <table class="table">
                  <thead>
                    <tr>
                      <th style="width: 80px">번호</th>
                      <th>제목</th>
                      <th style="width: 100px">작성자</th>
                      <th style="width: 150px">작성일</th>
                    </tr>
                  </thead>
                  <tbody>
<%-- <%

try{
	List<QandAVO> waitingAnswerList = dDAO.selectWaitingAnswer();
	
	for(int i = 0; i < waitingAnswerList.size(); i++){
		if(i < 5 ){
%> --%>
                   <tr>
                      <%-- <td><%= i+1 %></td>
                      <td><%= waitingAnswerList.get(i).getCategory() %></td>
                      <td onclick="questionDetail('<%= waitingAnswerList.get(i).getQAndAId() %>')"><%= waitingAnswerList.get(i).getTitle() %></td>
                      <td><%= waitingAnswerList.get(i).getRegistrationDate() %></td> --%>
                      	<td>1</td>
            			<td>이력서 관련 문의</td>
            			<td>AAA</td>
            			<td>2023-11-11</td>
                    </tr>
                   <tr>
                      	<td>2</td>
            			<td>지원 날짜 관련 문의</td>
            			<td>BBB</td>
            			<td>2023-11-11</td>
                    </tr>
<%-- <%
		}
	}
}catch(SQLException se){
	se.printStackTrace();
}
%> --%>     			

                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            <div class="card" style="margin-left: 20px; margin-right: 20px; min-height: 380px">
              <div class="card-header">
                <h3 class="card-title">신규 기업회원</h3> 
              </div>
              <!-- /.card-header -->
              <div class="card-body">
              <form action="../admin_post/admin_question_detail_proccess.jsp" method="post" id="questionFrm">
        	 <input type="hidden" id="questionId" name="questionId"/>
         	</form>
                <table class="table">
                  <thead>
                    <tr>
                      <th style="width: 80px">번호</th>
                      <th>기업명</th>
                      <th style="width: 150px">등록일</th>
                    </tr>
                  </thead>
                  <tbody>
<%-- <%

try{
	List<QandAVO> waitingAnswerList = dDAO.selectWaitingAnswer();
	
	for(int i = 0; i < waitingAnswerList.size(); i++){
		if(i < 5 ){
%> --%>
                   <tr>
                      <%-- <td><%= i+1 %></td>
                      <td><%= waitingAnswerList.get(i).getCategory() %></td>
                      <td onclick="questionDetail('<%= waitingAnswerList.get(i).getQAndAId() %>')"><%= waitingAnswerList.get(i).getTitle() %></td>
                      <td><%= waitingAnswerList.get(i).getRegistrationDate() %></td> --%>
                      	<td>1</td>
            			<td>기업1</td>
            			<td>2023-11-11</td>
                    </tr>
                   <tr>
                      	<td>2</td>
            			<td>기업2</td>
            			<td>2023-11-11</td>
                    </tr>
<%-- <%
		}
	}
}catch(SQLException se){
	se.printStackTrace();
}
%> --%>     			

                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            <!-- BAR CHART -->
            <div class="card card-danger" style="margin-left: 20px; margin-right: 20px">
              <div class="card-header">
                <h3 class="card-title">컨텐츠 생각해서 추가</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                <div class="chart">
                  <canvas id="barChart2" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
        
        <!-- row -->
        <div class="row">
          <div class="col-12">
            <div class="card" style="margin-left: 20px; margin-right: 20px">
              <div class="card-header">
                <h3 class="card-title">최근 관광지 리뷰</h3>

                <div class="card-tools">
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th style="width:60px">번호</th>
                      <th>리뷰 내용</th>
                      <th style="width:150px">아이디</th>
                      <th style="width:150px">작성일</th>
                    </tr>
                  </thead>
                  <tbody>
<%--                   <%
try{
	List<TourReviewVO> tourReviewList = dDAO.selectRecentTourReview();
	
	for(int i = 0; i < tourReviewList.size(); i++){
		if(i != 5 ){
%> --%>
                   <tr>
                      <%-- <td><%= i+1 %></td>
                      <td><%= tourReviewList.get(i).getContent() %></td>
                      <td><span class="tag tag-success"><%= tourReviewList.get(i).getUserId() %></span></td>
                      <td><%= tourReviewList.get(i).getReviewDate() %></td> --%>
                      	<td>1</td>
			            <td>2</td>
			            <td>3</td>
			            <td>4</td>
                    </tr>
<%-- <%
		}else{
			break;
		}
	}
}catch(SQLException se){
	se.printStackTrace();
}
%> --%>     	
                  
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
        <!-- /.row -->
        
        <!-- row -->
        <div class="row">
          <div class="col-12">
            <div class="card" style="margin-left: 20px; margin-right: 20px">
              <div class="card-header">
                <h3 class="card-title">최근 맛집 리뷰</h3>

                <div class="card-tools">
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th style="width:60px">번호</th>
                      <th>리뷰 내용</th>
                      <th style="width:150px">아이디</th>
                      <th style="width:150px">작성일</th>
                    </tr>
                  </thead>
                  <tbody>
<%-- <%                 
try{
	List<RestaurantReviewVO> restaurantReviewList = dDAO.selectRecentRestaurantReview();
	
	for(int i = 0; i < restaurantReviewList.size(); i++){
		if(i != 5 ){
%> --%>
                   <tr>
                      <%-- <td><%= i+1 %></td>
                      <td><%= restaurantReviewList.get(i).getContent() %></td>
                      <td><span class="tag tag-success"><%= restaurantReviewList.get(i).getUserId() %></span></td>
                      <td><%= restaurantReviewList.get(i).getReviewDate() %></td> --%>
                      	<td>1</td>
			            <td>2</td>
			            <td>3</td>
			            <td>4</td>
                    </tr>
<%-- <%
		}else{
			break;
		}
	}
}catch(SQLException se){
	se.printStackTrace();
}
%> --%>  
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
        <!-- /.row -->
       <div style="margin-left: 20px; margin-right: 20px">
       	<h4><i class="bi bi-bus-front">&nbsp;투어버스 예약 미승인 현황</i></h4>
       </div> 
      <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
<%-- <%
	try{
		List<ReservationCountVO> list = dDAO.selectUnappovedReservation();
		System.out.println(list.toString());
		for(int i = 0; i < list.size(); i++){
			if(i == 0){
%> --%>
          <div class="col-lg-4 col-8">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <%-- <h3><%= list.get(i).getUnapprovedCount() %>건</h3>
                <h4><%= list.get(i).getTourName() %></h4> --%>
                <h3>1</h3>
                <h4>2</h4>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="#" class="small-box-footer" onclick="moveReservation('<%-- <%=list.get(i).getTourbusId() %> --%>')">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
<%-- <%
			}else if(i == 1){
%> --%>          
          
          <!-- ./col -->
          <div class="col-lg-4 col-8">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <%-- <h3><%= list.get(i).getUnapprovedCount() %>건</h3>
                <h4><%= list.get(i).getTourName() %></h4> --%>
                <h3>1</h3>
	            <h4>2</h4>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="#" class="small-box-footer" onclick="moveReservation('<%-- <%=list.get(i).getTourbusId() %> --%>')">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
<%-- <%
			}else if(i == 2){
%> --%>          
          <!-- ./col -->
          <div class="col-lg-4 col-8">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
               <%-- <h3><%= list.get(i).getUnapprovedCount() %>건</h3>
                <h4><%= list.get(i).getTourName() %></h4> --%>
                <h3>1</h3>
                <h4>2</h4>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="#" class="small-box-footer" onclick="moveReservation('<%-- <%=list.get(i).getTourbusId() %> --%>')">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
<%-- <%
			}
		}
	}catch(SQLException se){
		se.printStackTrace();
	}
%> --%>                
          <!-- ./col -->
      </div>
       <form action="../admin_tourbus/admin_tourbus_reservation.jsp" method="post" id="tourbusFrm">
          <input type="hidden" id="tourbusId" name="tourbusId"/>
          </form>
      <!-- ./row -->
     </div>
     <!-- ./container-fluid -->
     </section> 
  </div>

 <footer class="main-footer">
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 3.2.0
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->


</body>
</html>
