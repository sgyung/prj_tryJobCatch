<%-- <%@page import="pageUtil.UserPageDAO"%>
<%@page import="admin.vo.UserManageVO"%>
<%@page import="admin.dao.UserManageDAO"%>
<%@page import="pageUtil.PageVO"%> --%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%-- <c:if test="${ empty admin }">
<c:redirect url="../admin/admin_login.jsp"/>
</c:if> --%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자 | 기업관리</title>
<link rel="stylesheet" type="text/css"
	href="http://211.63.89.133/prj_tryJobCatch/html_prj/common/css/main_v20230906">
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
			location.href = "admin_post_add.jsp"
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
			location.href = "../admin/admin_logout.jsp";
		});//click    
		
	});//ready
	
	function userDetail( id ) {
		$("#id").val(id);
		$("#hidFrm").submit();
	}
	
	function postList( id ) {
	    $("#post").val(id);
	    $("#postHidFrm").submit();
	}
	
	function commentList( id ) {
	    $("#comment").val(id);
	    $("#commentHidFrm").submit();
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
	        <a href="http://211.63.89.133/prj_tryJobCatch/dashboard.do">Home</a>
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
	    <a href="http://211.63.89.133/prj_tryJobCatch/dashboard.do">
	            <span class="brand-text font-weight-light">tryJOBcatch</span>
	    </a>


	      <!-- Sidebar Menu -->
	      <nav class="mt-2">
	        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="true">
	          <!-- Add icons to the links using the .nav-icon class
	               with font-awesome or any other icon font library -->
	          <li class="nav-item">
	            <a href="http://211.63.89.133/prj_tryJobCatch/dashboard.do">
	               <i class="bi bi-speedometer"></i>
	              <p>
	                 Dashboard
	              </p>
	            </a>
	          </li>
	          
	          <li class="nav-item">
	          <a href="http://211.63.89.133/prj_tryJobCatch/userlist.do" class="nav-link">
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
	              <li class="nav-item ">
	                <a href="http://211.63.89.133/prj_tryJobCatch/companylist.do" class="nav-link">
	                  <i class="far fa-circle nav-icon"></i>
	                  <p>기업 목록</p>
	                </a>
	              </li>
	              <li class="nav-item">
	                <a href="http://211.63.89.133/prj_tryJobCatch/recruitmentlist.do" class="nav-link active">
	                  <i class="far fa-circle nav-icon"></i>
	                  <p>채용 공고</p>
	                </a>
	              </li>
	              <li class="nav-item">
	                <a href="http://211.63.89.133/prj_tryJobCatch/reviewlist.do" class="nav-link">
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
								<li class="nav-item"><a href="http://211.63.89.133/prj_tryJobCatch/noticelist.do" class="nav-link">
										<i class="far fa-circle nav-icon"></i>
										<p>공지사항 관리</p>
								</a></li>
								<li class="nav-item"><a href="http://211.63.89.133/prj_tryJobCatch/qnalist.do" class="nav-link">
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
              <li class="breadcrumb-item"><a href="http://211.63.89.133/prj_tryJobCatch/dashboard.do"></a></li>
              <li class="breadcrumb-item active">회원관리</li>
            </ol>
          </div><!-- /.col -->
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->
<%-- <%
UserPageDAO upDAO = UserPageDAO.getInstance();
PageVO pVO = new PageVO();

String field=request.getParameter("field");
String keyword=request.getParameter("keyword");

// 페이지가 최초 호출시에는 field나 keyword가 없다. 검색을 하지 않는 경우에도 값이 없다.
pVO.setField(request.getParameter("field"));
pVO.setKeyword(request.getParameter("keyword"));



// 1. 총 레코드의 수 => 검색키워드에 해당하는 총 레코드의 수
int totalCount = upDAO.userTotalCount(pVO);

// 2. 한 화면에 보여줄 게시물의 수
int pageScale = 10;

// 3. 총 페이지 수
int totalPage = 0;

totalPage = (int)Math.ceil(totalCount/(double)pageScale);


// 현재 페이지의 시작번호 구하기
String  tempPage = request.getParameter("currentPage");
int currentPage = 1;

if(tempPage != null){
	currentPage = Integer.parseInt(tempPage);
}

int startNum = currentPage * pageScale - pageScale + 1;
int endNum = startNum + pageScale -1;

// 화면에 보여줄 페이지 인덱스 수
int pageNumber=5;

// 시작페이지 번호
int startPage=((currentPage-1)/pageNumber)*pageNumber+1;

// 끝페이지 번호
int endPage=(((startPage-1)+pageNumber)/pageNumber)*pageNumber;

// 구해진 끝페이지 번호가 총 페이지보다 적다면 총 페이지 수가 끝 페이지번호가 된다
if( totalPage <= endPage){
    endPage=totalPage;
 }//end if

int movePage=0;

// Dynamic Query에 의해서 구해진 시작번호와 끝번호를 VO에 넣는다.
pVO.setStartNum(startNum);
pVO.setEndNum(endNum);

pageContext.setAttribute("startNum", startNum);

%> --%>			
			
<form action="admin_user_info.jsp" method="post" id="hidFrm">
	<input type="hidden" name="id" id="id"/>
</form>
<form action="admin_user_post.jsp" method="post" id="postHidFrm">
	<input type="hidden" name="id" id="post" />
</form>
<form action="admin_user_comment.jsp" method="post" id="commentHidFrm">
	<input type="hidden" name="id" id="comment" />
</form>
			
	<section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">기업 목록</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th style="width: 60px">번호</th>
                      <th style="width: 150px">아이디</th>
                      <th style="width: 120px">기업명</th>
                      <th style="width: 150px">가입일</th>
                      <!-- <th style="width: 60px">게시글수</th>
                      <th style="width: 60px">댓글수</th> -->
                      <th style="width: 60px">가입상태</th>
                    </tr>
                  </thead>
                  <tbody>
<%-- <% 
UserManageDAO umDAO = UserManageDAO.getInstance();
try{
	List<UserManageVO> userList = null;

	if(currentPage != 0){
		userList = upDAO.selectUser(pVO);
	}
	pageContext.setAttribute("userList", userList);
}catch(SQLException se){
	se.printStackTrace();
}
%> --%>
<%-- 		<c:forEach var="userList" items="${ userList }" varStatus="i" >
 		  <tr>
            <td><c:out value="${i.index + startNum}"/></td>
            <td id="id"><a href="#void" onclick="userDetail('${ userList.id }')"><c:out value="${ userList.id }"/></a></td>
            <td><c:out value="${ userList.name }"/></td>
            <td><c:out value="${ userList.joinDate }"/></td>
            <td id="post"><a href="#void" onclick="postList('${ userList.id }')"><c:out value="${ userList.postCount }"/></a></td>
            <td id="comment"><a href="#void" onclick="commentList('${ userList.id }')"><c:out value="${ userList.reviewCount }"/></a></td>
            <td><c:out value="${ userList.joinType eq 'N' ? '탈퇴':'가입'}"/></td>
          </tr>
          </c:forEach> --%>
		
 		  <tr>
            <td>1</td>
            <td id="id"><a>aaaaa</a></td>
            <td>신세계아이앤씨</td>
            <td>2023-11-11</td>
            <td>가입</td>
          </tr>
 		  <tr>
            <td>2</td>
            <td id="id"><a>bbbbb</a></td>
            <td>한국자동차연구원</td>
            <td>2023-11-11</td>
            <td>탈퇴</td>
          </tr>
 		  <tr>
            <td>3</td>
            <td id="id"><a>ccccc</a></td>
            <td>에프엠에셋</td>
            <td>2023-11-11</td>
            <td>가입</td>
          </tr>
 		  <tr>
            <td>4</td>
            <td id="id"><a>ddddd</a></td>
            <td>딥브레인AI</td>
            <td>2023-11-11</td>
            <td>가입</td>
          </tr>
 		  <tr>
            <td>5</td>
            <td id="id"><a>eeeee</a></td>
            <td>이그니스</td>
            <td>2023-11-11</td>
            <td>가입</td>
          </tr>
 		  <tr>
            <td>6</td>
            <td id="id"><a>fffff</a></td>
            <td>(주)하나신탁</td>
            <td>2023-11-11</td>
            <td>가입</td>
          </tr>
                  </tbody>
                </table>
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
