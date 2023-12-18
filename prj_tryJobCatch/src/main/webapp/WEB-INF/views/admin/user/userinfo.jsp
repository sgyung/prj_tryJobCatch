<%-- <%@page import="admin.vo.UserManageVO"%>
<%@page import="admin.dao.UserManageDAO"%> --%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info = "" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%-- <c:if test="${ empty admin }">
<c:redirect url="../admin/admin_login.jsp"/>
</c:if>     --%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자 | 회원관리</title>
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
			location.href = "userlist.do"
		});
		
		$("#logout").click(function() {
			location.href = "logout.do";
		});//click    
	})//ready
	
	 function userDelete(id) {
		    if (confirm("회원 탈퇴 하시겠습니까?")) {
		    	$("#deleteId").val(id);
		    	alert(id);
				$("#frm").submit();
				alert("정상적으로 처리되었습니다.");
		     } else {
		    	return;
		     }
		 }
	
	 function userModify(id) {
		    if (confirm("정보를 수정 하시겠습니까?")) {
		    	$("#modifyId").val(id);
		    	$("#modifyEmail").val($("#email").val());
		    	$("#modifyZip").val($("#zipcode").val());
		    	$("#modifyAddr").val($("#addr").val());
		    	$("#modifyDetailAddr").val($("#addr2").val());
				$("#modify_frm").submit();
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
	          <a href="userlist.do" class="nav-link active">
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
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">회원관리</h1>
						</div>
									<div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.do">Home</a></li>
              <li class="breadcrumb-item active">회원관리</li>
            </ol>
          </div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
<%-- <%
	UserManageDAO umDAO = UserManageDAO.getInstance();
	try{
		UserManageVO  umVO = umDAO.selectUserInfo(request.getParameter("id"));
		System.out.println(umVO);
		pageContext.setAttribute("user", umVO);
	}catch(SQLException se){
		se.printStackTrace();
	}
%> --%>
			<!-- /.content-header -->
			<section class="content">
			<div class="container-fluid" style="width: 60%;">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h3 style="text-align: center"><c:out value = "${ userInfo.m_name }"/>님의 회원정보</h3>
              </div>
              <div style="margin-left: 25%; margin-top: 5%; margin-bottom: 5%">
      <div class="row mb-3" style="margin-top: 10px">
    <label for="inputName" class="col-sm-2 col-form-label">이름</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="name" style="width: 30%" value="${ userInfo.m_name }" readonly="readonly"/>
    </div>
  </div>
  <div class="row mb-3">
    <label for="inputPassword3" class="col-sm-2 col-form-label">아이디</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="id" style="width: 30%" value="${ userInfo.m_id }" readonly="readonly">
    </div>
  </div>
  <div class="row mb-3">
    <label for="inputPassword3" class="col-sm-2 col-form-label">전화번호</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="tel" style="width: 30%" value="${ userInfo.m_tel }" readonly="readonly">
    </div>
  </div>
  <div class="row mb-3">
    <label for="inputPassword3" class="col-sm-2 col-form-label">생년월일</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="birth" style="width: 30%" value="${ userInfo.m_bday }" readonly="readonly">
    </div>
  </div>
  
  
  <div class="row mb-3">
    <label for="inputPassword3" class="col-sm-2 col-form-label">이메일</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="email" style="width: 30%" value="${ userInfo.m_email }">	
    </div>
  </div>
  <div class="row mb-3">
    <label for="inputPassword3" class="col-sm-2 col-form-label">주소</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="zipcode" style="width: 30%" value="${ userInfo.m_zip }">
      <input type="text" class="form-control" id="addr" style="width: 90%; margin-top: 5px" value="${ userInfo.m_addr }">
      <input type="text" class="form-control" id="addr2" style="width: 90%; margin-top: 5px" value="${ userInfo.m_detail_addr }">
    </div>
  </div>
  
  
  <div class="row mb-3">
    <label for="inputPassword3" class="col-sm-2 col-form-label">가입 상태</label>
     <div class="col-sm-4">
        <input type="text" class="form-control" id="join" style="width: 80%" value="${ userInfo.m_join_condition eq 'N'? '탈퇴' : '가입' }" readonly="readonly">
    </div>
    <div class="col-sm-2">
        <input type="button" value="탈퇴" class="form-control" id="joinbtn" onclick="userDelete('${ userInfo.m_id }')"  style=" margin-left: 20px">
    </div>
    <div class="col-sm-2">
        <input type="button" value="수정" class="form-control" id="joinbtn" onclick="userModify('${ userInfo.m_id }')"  style=" margin-left: 20px">
    </div>
    <form action="http://localhost/prj_tryJobCatch/withdraw.do" method="post" id="frm">
    	<input type="hidden" id="deleteId" name="m_id">
    </form>
    <form action="http://localhost/prj_tryJobCatch/modify.do" method="post" id="modify_frm">
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
  <div style="text-align: center;">	
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