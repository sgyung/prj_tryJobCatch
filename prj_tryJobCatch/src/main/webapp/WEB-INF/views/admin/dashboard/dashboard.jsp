<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info = "" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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

function noticeInfo(noticeId) {
	$("#noticeId").val(noticeId);
	$("#noticeFrm").submit();
}

function userInfo(userId) {
	$("#userId").val(userId);
	$("#userFrm").submit();
}

function qnaInfo(qnaId) {
	$("#qnaId").val(qnaId);
	$("#qnaFrm").submit();
}

function companyInfo(companyId) {
	$("#companyId").val(companyId);
	$("#companyFrm").submit();
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
        <a href="http://localhost/prj_tryJobCatch/dashboard.do">Home</a>
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
    <a href="http://localhost/prj_tryJobCatch/dashboard.do" class="brand-link">
            <span class="brand-text font-weight-light">tryJOBcatch</span>
    </a>


      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="true">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="http://localhost/prj_tryJobCatch/dashboard.do" class="nav-link">
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
                <a href="http://localhost/prj_tryJobCatch/companylist.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>기업 목록</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="http://localhost/prj_tryJobCatch/recruitmentlist.do" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>채용 공고</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="http://localhost/prj_tryJobCatch/reviewlist.do" class="nav-link">
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
							<li class="nav-item"><a href="http://localhost/prj_tryJobCatch/noticelist.do" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>공지사항 관리</p>
							</a></li>
							<li class="nav-item"><a href="http://localhost/prj_tryJobCatch/qnalist.do" class="nav-link">
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
            <div class="card card-outline card-dark" style="margin-left: 20px; margin-right: 20px; min-height: 380px">
              <div class="card-header">
                <h3 class="card-title">최근 공지사항</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                  <form action="http://localhost/prj_tryJobCatch/noticeinfo.do" method="get" id="noticeFrm">
                  	<input type="hidden" id= "noticeId" name= "n_id"/>
                  </form>
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <th style="width: 60px">번호</th>
                      <th>제목</th>
                      <th style="width: 150px">작성일</th>
                    </tr>
                  </thead>
                  <tbody>

		 <c:forEach var="noticeList" items="${noticeList}" varStatus="i" >
 		  <tr onclick="noticeInfo('${ noticeList.n_id }')">
            <td><c:out value="${i.index+1}"/></td>
            <td><c:out value="${noticeList.n_title}"/></td>
            <td><c:out value="${noticeList.n_date }"/></td>
          </tr>
          </c:forEach>

                  </tbody>
                </table>
              </div>
              <!-- /.card-body --> 
            </div>
            <!-- /.card -->
            <div class="card card-outline card-dark" style="margin-left: 20px; margin-right: 20px; min-height: 380px">
              <div class="card-header">
                <h3 class="card-title">신규 개인회원</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                  <form action="http://localhost/prj_tryJobCatch/userinfo.do" method="get" id="userFrm">
                  	<input type="hidden" id= "userId" name= "m_id"/>
                  </form>
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <th style="width: 60px">번호</th>
                      <th>이름</th>
                      <th style="width: 150px">등록일</th>
                    </tr>
                  </thead>
                  <tbody>
 		  
				<c:forEach var="userList" items="${userList}" varStatus="i" >
		 		  <tr onclick="userInfo('${ userList.m_id }')">
		            <td><c:out value="${i.index+1}"/></td>
		            <td><c:out value="${userList.m_name}"/></td>
		            <td><c:out value="${userList.m_registration_date }"/></td>
		          </tr>
	         	 </c:forEach>

                  </tbody>
                </table>
              </div>
              <!-- /.card-body --> 
            </div>
            <!-- /.card -->
            

             <!-- BAR CHART -->
            <div class="card card-outline card-dark" style="margin-left: 20px; margin-right: 20px">
            
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
              <div class="overlay dark">
				  <i class="fas fa-2x fa-sync-alt fa-spin"></i>
				</div>
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
          <div class="col-md-6">
            <div class="card card-outline card-dark" style="margin-left: 20px; margin-right: 20px; min-height: 380px">
              <div class="card-header">
                <h3 class="card-title">답변 대기 문의사항</h3> 
              </div>
              <!-- /.card-header -->
              <div class="card-body">
              <form action="http://localhost/prj_tryJobCatch/qnainfo.do" method="get" id="qnaFrm">
                  	<input type="hidden" id= "qnaId" name= "i_id"/>
                  </form>
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <th style="width: 60px">번호</th>
                      <th>제목</th>
                      <!-- <th style="width: 100px">작성자</th> -->
                      <th style="width: 100px">작성일</th>
                    </tr>
                  </thead>
                  <tbody>
                  
                 <c:forEach var="qnaList" items="${qnaList}" varStatus="i" >
		 		  <tr onclick="qnaInfo('${ qnaList.i_id }')">
		            <td><c:out value="${i.index+1}"/></td>
		            <td><c:out value="${qnaList.i_title}"/></td>
		            <td><c:out value="${qnaList.i_date }"/></td>
		          </tr>
	         	 </c:forEach>

                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            <div class="card card-outline card-dark" style="margin-left: 20px; margin-right: 20px; min-height: 380px">
              <div class="card-header">
                <h3 class="card-title">신규 기업회원</h3> 
              </div>
              <!-- /.card-header -->
              <div class="card-body">
              <form action="http://localhost/prj_tryJobCatch/companyinfo.do" method="get" id="companyFrm">
                  	<input type="hidden" id= "companyId" name= "cm_id"/>
                  </form>
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <th style="width: 80px">번호</th>
                      <th>기업명</th>
                      <th style="width: 150px">등록일</th>
                    </tr>
                  </thead>
                  <tbody>
                  
                 <c:forEach var="companyList" items="${companyList}" varStatus="i" >
		 		  <tr onclick="companyInfo('${ companyList.cm_id }')">
		            <td><c:out value="${i.index+1}"/></td>
		            <td><c:out value="${companyList.cm_co_name}"/></td>
		            <td><c:out value="${companyList.cm_co_registration_date }"/></td>
		          </tr>
	         	 </c:forEach>

                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            <!-- BAR CHART -->
            <div class="card card-outline card-dark" style="margin-left: 20px; margin-right: 20px">
              <div class="card-header">
                <h3 class="card-title">최근 등록된 리뷰</h3>

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
              	<div class="overlay dark">
		  			<i class="fas fa-2x fa-sync-alt fa-spin"></i>
				</div>	
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
        
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
