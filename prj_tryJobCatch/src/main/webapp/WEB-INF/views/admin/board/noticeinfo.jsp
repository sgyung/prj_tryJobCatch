<%@page import="java.sql.SQLException"%>
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
<title>관리자 | 게시판관리</title>
<link rel="stylesheet" type="text/css"
	href="http://localhost/html_prj/common/css/main_v20230906"> 
<style type="text/css">
#table {
border-left: 0px; 
border-right: 0px; 
border-top: 3px solid #535353; 
border-bottom: 1px solid #535353; 
border-spacing: 0px;
}

#table > tbody > tr >  th {
text-align: center; 
width:200px; 
vertical-align: middle; 
border-right: 1px solid #535353; 
background: #F1F3F4;
}


</style>
<!-- jQuery CDN -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$("#list").click(function() {
		location.href = "http://localhost/prj_tryJobCatch/noticelist.do"
	});
	
	$("#delete").click(function() {
		deletePost();
	});
	
	$("#logout").click(function() {
		location.href = "http://localhost/prj_tryJobCatch/logout.do";
	});//click    
})//ready

function noticeModify( id ) {
	if (confirm("공지사항을 수정 하시겠습니까?")) {
		$("#modifyId").val(id);
		$("#modifyFrm").submit();
	} else {
    	return;
    }		
}

 function noticeDelete( id ) {
    if (confirm("공지사항을 삭제 하시겠습니까?")) {
    	$("#deleteId").val(id);
    	$("#deleteFrm").submit();
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
	    <a href="http://localhost/prj_tryJobCatch/dashboard.do">
	            <span class="brand-text font-weight-light">tryJOBcatch</span>
	    </a>


	      <!-- Sidebar Menu -->
	      <nav class="mt-2">
	        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="true">
	          <!-- Add icons to the links using the .nav-icon class
	               with font-awesome or any other icon font library -->
	          <li class="nav-item">
	            <a href="http://localhost/prj_tryJobCatch/dashboard.do">
	               <i class="bi bi-speedometer"></i>
	              <p>
	                 Dashboard
	              </p>
	            </a>
	          </li>
	          
	          <li class="nav-item">
	          <a href="http://localhost/prj_tryJobCatch/userlist.do" class="nav-link">
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
	              <li class="nav-item ">
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
	          
	         <li class="nav-item menu"><a href="#" class="nav-link active"> 
	         	<i class="bi bi-pencil-square"></i> 
	         		<i class="right fas fa-angle-left"></i>
								<p>게시판 관리</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="http://localhost/prj_tryJobCatch/noticelist.do" class="nav-link active">
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
		<div class="content-wrapper" >
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">게시판 관리</h1>
						</div>
									<div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="http://localhost/prj_tryJobCatch/dashboard.do">>Home</a></li>
              <li class="breadcrumb-item active">공지사항 관리</li>
            </ol>
          </div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			
			<section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">공지사항 관리</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body" style="height: 650px">
<%-- <%
	NoticeManageDAO nmDAO = NoticeManageDAO.getInstance();

	try{
		String noticeId = request.getParameter("noticeId");
		
		if(noticeId != null){
			NoticeVO nVO = nmDAO.selectNotice(noticeId);
			pageContext.setAttribute("nVO", nVO);
%> --%>
<%-- 			<table class="table"
				style="border-left: 0px; border-right: 0px; border-top: 3px solid #535353; border-bottom: 1px solid #535353; border-spacing: 0px">
				<tbody>
					<tr>
						<th
							style="text-align: center; vertical-align: middle; border-right: 1px solid #535353; background: #F1F3F4">제목</th>
						<td>${ nVO.title }</td>
					</tr>
					<tr style="height: 300px">
						<th
							style="text-align: center; vertical-align: middle; border-right: 1px solid #535353; background: #F1F3F4">내용</th>
						<td>
							<div style="margin: 10px 0px;">${ nVO.content }</div>
						</td>
					</tr>
					<tr>
						<th
							style="text-align: center; vertical-align: middle; border-right: 1px solid #535353; background: #F1F3F4">작성자</th>
						<td>관리자</td>
					</tr>
					<tr>
						<th
							style="text-align: center; vertical-align: middle; border-right: 1px solid #535353; background: #F1F3F4">작성일</th>
						<td>${ nVO.registrationDate }</td>
					</tr>
					<tr>
						<th
							style="text-align: center; vertical-align: middle; border-right: 1px solid #535353; background: #F1F3F4">조회수</th>
						<td>${ nVO.viewNum }</td>
					</tr>
					<!-- <tr>
      <th style="text-align: center;	vertical-align: middle; border-right: 1px solid #535353;">공지글 여부</th>
      <td>y</td>
      </tr> -->
				</tbody>
			</table> --%>
			<table class="table" id="table">
				<tbody>
					<tr>
						<th>제목</th>
						<td id="title">${ noticeInfo.n_title }</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>관리자</td>
					</tr>
					<tr>
						<th>작성일</th>
						<td>${ noticeInfo.n_date }</td>
					</tr>
					<tr style="height: 300px">
						<th>내용</th>
						<td id="content">${ noticeInfo.n_content }</td>
					</tr>
					<tr>
						<th>조회수</th>
						<td>0</td>
					</tr>
					<!-- <tr>
      <th style="text-align: center;	vertical-align: middle; border-right: 1px solid #535353;">공지글 여부</th>
      <td>y</td>
      </tr> -->
				</tbody>
			</table>
			
			<form action="http://localhost/prj_tryJobCatch/notice_modify_frm.do" method="post" id="modifyFrm">
				<input type="hidden" id="modifyId" name="n_id">
			</form>
			<div style="text-align: right; margin-top: 10px">
			<form action="http://localhost/prj_tryJobCatch/notice_delete.do" method="post" id="deleteFrm">
				<input type="hidden" id="deleteId" name="n_id">
			</form>
			<input type="button" value="수정" class="btn btn-info" id="modifyBtn" style="width: 80px;" onclick="noticeModify('${ noticeInfo.n_id }')" >
			<input type="button" value="삭제" class="btn btn-info" id="deleteBtn" style="width: 80px; margin-left: 20px;" onclick="noticeDelete('${ noticeInfo.n_id }')">
			</div>
						
            <div style="text-align: center; margin-top: 10px">
            <input type="button" value="목록" class="btn btn-outline-warning" id="list" style="width: 150px">
            </div>
            </div>
            </div>
            </div>
            </div>
            </div>
            </section>
<%-- <%
		}
	}catch(SQLException se){
		se.printStackTrace();
	}		
%> --%>			
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
