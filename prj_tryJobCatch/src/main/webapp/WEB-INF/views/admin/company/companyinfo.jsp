<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info = "" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자 | 기업관리</title>
<link rel="stylesheet" type="text/css"
	href="http://localhost/html_prj/common/css/main_v20230906">
<style type="text/css">
thead {
	text-align: center
}

td {
	text-align: center
}
</style>
<!-- jQuery CDN -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btn").click(function() {
			location.href = "companylist.do"
		});
		
		$("#logout").click(function() {
			location.href = "logout.do";
		});//click    
	})//ready
	
	 function companyDelete(id) {
		    if (confirm("회원 탈퇴 하시겠습니까?")) {
		    	$("#deleteId").val(id);
				$("#frm").submit();
				alert("정상적으로 처리되었습니다.");
		     } else {
		    	return;
		     }
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
	            <a href="dashboard.do" class="nav-link">
	               <i class="bi bi-speedometer"></i>
	              <p>
	                 Dashboard
	              </p>
	            </a>
	          </li>
	          
	          <li class="nav-item">
	          <a href="userlist.do" class="nav-link">
	               <i class="bi-people-fill"></i>
	              <p> 회원관리</p>
	            </a>
	          </li>
	         
	           <li class="nav-item menu">
	            <a href="#" class="nav-link active">
	              <i class="bi bi-building"></i>
	                <i class="right fas fa-angle-left"></i>
	                
	             <p>기업관리</p>
	            </a>
	            <ul class="nav nav-treeview">
	              <li class="nav-item">
	                <a href="companylist.do" class="nav-link active">
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
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">기업관리</h1>
						</div>
									<div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="http://localhost/prj_tryJobCatch/dashboard.do">Home</a></li>
              <li class="breadcrumb-item active">기업관리</li>
            </ol>
          </div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->
			<section class="content">
			<div class="container-fluid" style="width: 60%;">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h3 style="text-align: center"><c:out value = "${ companyInfo.cm_co_name }"/> 기업정보</h3>
              </div>
              <div style="margin-left: 25%; margin-top: 5%; margin-bottom: 5%">
  <div class="row mb-3" style="margin-top: 10px">
    <label class="col-sm-2 col-form-label">기업형태</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="name" style="width: 30%" value="${ companyInfo.cm_co_type }" readonly="readonly"/>
    </div>
  </div>
  <div class="row mb-3">
    <label class="col-sm-2 col-form-label" style="font-size: 14px">사업자등록번호</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="birth" style="width: 30%" value="${ companyInfo.cm_co_registration_num }">
    </div>
  </div>
  <div class="row mb-3">
    <label class="col-sm-2 col-form-label">회사명</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="id" style="width: 30%" value="${ companyInfo.cm_co_name }" readonly="readonly">
    </div>
  </div>
  <div class="row mb-3">
    <label class="col-sm-2 col-form-label">대표자명</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="tel" style="width: 30%" value="${ companyInfo.cm_ceo_name }" readonly="readonly">
    </div>
  </div>
  <div class="row mb-3">
    <label for="inputPassword3" class="col-sm-2 col-form-label">회사주소</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="zipcode" style="width: 30%" value="${ companyInfo.cm_zipcode }">
      <input type="text" class="form-control" id="addr" style="width: 90%; margin-top: 5px" value="${ companyInfo.cm_addr }">
      <input type="text" class="form-control" id="addr2" style="width: 90%; margin-top: 5px" value="${ companyInfo.cm_detail_addr }">
    </div>
  </div>
  <div class="row mb-3">
    <label class="col-sm-2 col-form-label">산업(업종)</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="industry" style="width: 30%" value="${ companyInfo.cm_industry }">
    </div>
  </div>
  <div class="row mb-3">
    <label class="col-sm-2 col-form-label">사원수</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="empnum" style="width: 30%" value="${ companyInfo.cm_emp_num }">
    </div>
  </div>
  <div class="row mb-3">
    <label class="col-sm-2 col-form-label">설립년도</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="birth" style="width: 30%" value="${ companyInfo.cm_establishment_year }">
    </div>
  </div>
  <div class="row mb-3">
    <label class="col-sm-2 col-form-label">홈페이지</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="birth" style="width: 30%" value="${ companyInfo.cm_homepage }">
    </div>
  </div>
  <div class="row mb-3">
    <label class="col-sm-2 col-form-label">로고</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="birth" style="width: 30%" value="${ companyInfo.cm_co_logo }">
    </div>
  </div>
  <div class="row mb-3">
    <label class="col-sm-2 col-form-label">사진</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="birth" style="width: 30%" value="${companyInfo.cm_co_pic }">
    </div>
  </div>
  
  <div class="row mb-3">
    <label class="col-sm-2 col-form-label">자본금</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="birth" style="width: 30%" value="${ companyInfo.cm_money }">
    </div>
  </div>
  <div class="row mb-3">
    <label class="col-sm-2 col-form-label">매출액</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="birth" style="width: 30%" value="${ companyInfo.cm_sales }">
    </div>
  </div>
  
  <hr style="width:133%; position: relative; left: -33%;">
  
  <div class="row mb-3">
    <label class="col-sm-2 col-form-label">인사담당자</label>
    <div class="col-sm-10">
      <input type="hidden">
    </div>
  </div>
  <div class="row mb-3">
    <label class="col-sm-2 col-form-label">아이디</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="id" style="width: 30%" value="${ companyInfo.cm_id }">
    </div>
  </div>
  <div class="row mb-3">
    <label class="col-sm-2 col-form-label">가입자명</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="id" style="width: 30%" value="${ companyInfo.cm_name }">
    </div>
  </div>
  <div class="row mb-3">
    <label class="col-sm-2 col-form-label">전화번호</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="id" style="width: 30%" value="${ companyInfo.cm_tel }">
    </div>
  </div>
  <div class="row mb-3">
    <label class="col-sm-2 col-form-label">이메일</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="id" style="width: 30%" value="${ companyInfo.cm_email }">
    </div>
  </div>
  <div class="row mb-3">
    <label class="col-sm-2 col-form-label">가입일자</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="birth" style="width: 30%" value="${ companyInfo.cm_co_registration_date }">
    </div>
  </div>
  <div class="row mb-3">
    <label for="inputPassword3" class="col-sm-2 col-form-label">가입 상태</label>
     <div class="col-sm-4">
        <input type="text" class="form-control" id="join" style="width: 80%" value="${ companyInfo.cm_co_join_condition eq 'N'? '탈퇴' : '가입' }" readonly="readonly">
    </div>
    <div class="col-sm-2">
        <input type="button" value="탈퇴" class="form-control" id="joinbtn" onclick="companyDelete('${ companyInfo.cm_id }')"  style=" margin-left: 20px">
    </div>
    <div class="col-sm-2">
        <input type="button" value="수정" class="form-control" id="joinbtn" onclick="companyModify('${ companyInfo.cm_id }')"  style=" margin-left: 20px">
    </div>
    <form action="http://localhost/prj_tryJobCatch/company_withdraw.do" method="post" id="frm">
    	<input type="hidden" id="deleteId" name="cm_id">
    </form>
    <form action="http://localhost/prj_tryJobCatch/company_modify.do" method="post" id="modify_frm">
    	<input type="hidden" id="modifyId" name="m_id">
    	<input type="hidden" id="modifyEmail" name="m_email">
    	<input type="hidden" id="modifyZip" name="m_zip">
    	<input type="hidden" id="modifyAddr" name="m_addr">
    	<input type="hidden" id="modifyDetailAddr" name="m_detail_addr">
    </form>
    </div>
  </div>
  </div>
  </div>
  </div>
  </div>
	</section>
  <div style="text-align: center; height: 100px;">	
  <input type="button" class="btn btn-primary" id="btn" value="목록" style="width: 150px"/>
  </div>
	</div>
		<footer class="main-footer">
			<strong>Copyright &copy; 2014-2021 <a
				href="https://adminlte.io">AdminLTE.io</a>.
			</strong> All rights reserved.
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