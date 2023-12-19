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
			location.href = "http://localhost/prj_tryJobCatch/notice_modify_frm.do"
		});
		
		$("#search").click(function() {
			chkNull();
		});//click
		
		$("#keyword").keyup(function(evt) {// keydown은 값을 받을 수 없다. 값을 받으려면 keyup을 사용
			if(evt.which == 13){
				chkNull();
			}//end if
		});//keyup

		$("#logout").click(function() {
			location.href = "http://localhost/prj_tryJobCatch/logout.do";
		});//click    
	})//ready
	
	function noticeInfo( id ) {
		$("#id").val(id);
		$("#goInfo").submit();
	}
	
	function chkNull() {
		var keyword = $("#keyword").val();
		
		if(keyword.trim()==""){
			alert("검색 키워드를 입력해주세요.");
			return;
		}//end if
		
		//글자수 제한
		
		$("#frmSearch").submit();
	}//chkNull
	
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
			<!-- /.content-header -->
	<form action="http://localhost/prj_tryJobCatch/noticeinfo.do" method="post" id="goInfo">
		<input type="hidden" name="n_id" id="id"/>
	</form>			
	<section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">공지사항 관리</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered table-hover">
                  <thead>
                    <tr>
                      <th style="width: 100px">번호</th>
                      <th>제목</th>
                      <th style="width: 150px">작성자</th>
                      <th style="width: 200px">작성일</th>
                      <th style="width: 150px">조회수</th>
                    </tr>
                  </thead>
                  <tbody>
				    <%-- <c:forEach var="post" items="${ postList }" varStatus="i" >
				    <tr>
                      <td><c:out value="${i.index + startNum}"/></td>
                      <td><a href="#void" onclick="postDetail('${ post.id }')"><c:out value="${post.title}"/></a></td>
                      <td><c:out value="관리자"/></td>	
                      <td><c:out value="${post.registrationDate}"/></td>
                      <td><c:out value="${post.viewNum}"/></td>
                    </tr>
				    </c:forEach> --%> 
				          	
				    <c:forEach var="noticeList" items="${noticeList}" varStatus="i" >
				 		  <tr onclick="noticeInfo('${ noticeList.n_id }')">
				            <td><c:out value="${i.index+1}"/></td>
				            <td><c:out value="${ noticeList.n_title }"/></td>
				            <td><c:out value="관리자"/></td>
				            <td><c:out value="${noticeList.n_date }"/></td>
				            <td><c:out value="0"/></td> 
				          </tr>
			          </c:forEach>
                    
                  </tbody>
                </table>
              <input type="button" class="btn btn-primary" id="btn" value="등록" style="position: absolute; bottom: 10px; right: 20px; width: 100px">
              </div>
              <!-- /.card-body -->
              <div class="card-footer clearfix">
                <ul class="pagination justify-content-center" >
                  <%-- <%
                if( currentPage > pageNumber ){
                	movePage=startPage-1;
				%>                    
                  <li class="page-item"><a class="page-link" href="admin_user.jsp?currentPage=<%= movePage %>&keyword=${ param.keyword }&field=${ param.field }">&laquo;</a></li>
                <%
                    }else{
                %>
                  <li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
                <%
                    }
                %>

                  <%
                  movePage=startPage;
                  while( movePage <= endPage ){
                	  if( movePage == currentPage ){//현재페이지와 이동할 페이지가 같다면 링크없이 인덱스리스트 제공
                  %>
                	         
                  <li class="page-item active"><a class="page-link" href="#"><%= movePage %></a></li>
                  <%
                	  }else{
                  %>
                  <li class="page-item"><a class="page-link" href = "admin_user.jsp?currentPage=<%= movePage %>&keyword=${ param.keyword }&field=${ param.field }">
                  <%= movePage %></a></li>
                 
                 <%
                 } 
                 movePage++;
                  }
                 %>
                  
                 <%
                if( totalPage > endPage ){
				%>                    
                  <li class="page-item"><a class="page-link" href="admin_user.jsp?currentPage=<%= movePage %>&keyword=${ param.keyword }&field=${ param.field }">&raquo;</a></li>
                <%
                    }else{
                %>
                  <li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
                <%
                    }
                %> --%>
                
                <li class="page-item"><a class="page-link" href="#">«</a></li>
                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="admin_user.jsp?currentPage=2&amp;keyword=&amp;field=">
                  2</a></li>
                <li class="page-item"><a class="page-link" href="#">»</a></li>
                
                </ul>
                <div style="text-align: center" >
                <form name = "frmSearch" id="frmSearch" action="admin_user.jsp" method="get">
                <select name="field" class="inputBox" style="height: 30px;">
					<option value="1"${ param.field eq '1'?"selected = 'selected'":"" }>이름</option>
				</select>
                 <input type="text" name="keyword" id="keyword" class="inputBox" value ="${ param.keyword ne 'null'? parma.keyword:'' }" style="width: 200px; height: 30px;" placeholder="내용을 입력해주세요."/>
 					<input type="text" style="display: none;">              
                <div style="display: inline-block;" >
                <input type="button" id="search" class="btn btn-warning" style="width: 80px; margin-left: 10px; font-size: 13px" value="검색" />
                </div>
                </form>
                </div>
              </div>
            </div>
            <!-- /.card -->
            </div>
            </div>
           </div>
         </section>
            
			
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
