<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>

<style>
.content-wrapper{
	overflow-y:scroll;
	-ms-overflow-style: none;
}
.content-wrapper::-webkit-scrollbar{
  display:none;
}
.content{
	width:60%;
}
/*---------------------------------*/
.container{
		padding:30px;
		width:100%;
		/*height:1000px;*/
		background-color:white;
		/*margin:0 auto;*/
		font-size:23px;
		box-sizing: border-box;
		border-radius:15px;
		/*-webkit-border-radius: 10px 10px 10px 10px;
		-webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
    	box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);*/
	    overflow:auto;
	}
	ul,li{
		/*margin:0;
		padding:0;*/
		list-style-type:none;
	}
	.container>p{
		font-size:27px;
		margin-top:20px;
		margin-bottom:20px;
		margin-left: 25px;
		padding:10px;
		font-weight:bold;
	}
	.proFrm{
		/*width: 400px;
	    height: 1000px;*/
	    margin: 30px auto;
	    margin-top: 0;
	    margin-left:20px;
	    padding: 20px;
	    padding-bottom: 30px;
	}
	.proFrm p{
		padding:10px;
		padding-left:0;
		font-weight:bold;
	}
	input[type=text]{
		width:60%;
		height:50px;
		background-color: #fff;
    	border: none;
    	color: #0d0d0d;
		border-radius:15px;
		font-size:20px;
		padding:20px;
		margin:5px;
		border: 2px solid #808080;
    	border-radius: 10px 10px 10px 10px;
	}
	textarea{
		width:60%;
		background-color: #fff;
    	border: none;
    	color: #0d0d0d;
		border-radius:15px;
		font-size:20px;
		padding:20px;
		margin:5px;
		border: 2px solid #808080;
    	border-radius: 10px 10px 10px 10px;
	}
	#nameDiv>p, #priceDiv>p, #infoDiv p, #countDiv>p{
		/*float:left;*/
		margin:10px;
		margin-left:0;
		display: inline-block;
	}
	#nameDiv input, #priceDiv input, #infoDiv textarea, #countDiv input{
		width:65%;
		padding:10px;
		display:inline-block;
		transition: ease .40s;
		float:right;
		margin:10px;
		margin-right:15px;
	}
	#imageDiv{
		overflow:auto;
	}
	#imageDiv input{
		width:98%;
		padding:10px;
		display:inline-block;
		transition: ease .40s;
		float:right;
		margin:10px;
		margin-right:15px;
	}
	#infoDiv{
		overflow:auto;
	}
	input[type=checkbox] {
		zoom: 1.5;
	}
	label{
		display: inline-block;
    	width: 190px;
    	line-height: 50px;
    	font-size:20px;
	}
	.subTag{
		font-size:20px;
		margin:0
	}
	#cateDiv, #tagDiv, #mbtiDiv{
		margin-bottom:6vh;
	}
	#formSubmit{
		padding:10px 100px 10px 100px;
		display:block;
		margin:50px auto;
		font-size: 23px;
		background: #3385ff;
		color: #fff;
		border:none;
		border-radius: 10px;
		transition: ease .40s;
	}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function(){
		
		
		$("#productFrm").submit(function(){
			//유효성검사
			//상품명
			if($("#product_name").val()==""){
				alert("상품명을 입력하세요.");
				return false;
			}
			//금액
			if($("#product_price").val()==""){
				alert("판매금액을 입력하세요.");
				return false;
			}
			//상품설명
			if($("#product_info").val()==""){
				alert("상품설명을 입력하세요.");
				return false;
			}
			//상품수량
			if($("#product_quantity").val()==""){
				alert("상품수량을 입력하세요.");
				return false;
			}
			//이미지1
			if($("#product_image1").val()==""){
				alert("상품이미지(1)의 링크를 입력하세요.");
				return false;
			}
			//이미지2
			if($("#product_image2").val()==""){
				alert("상품이미지(2)의 링크를 입력하세요.");
				return false;
			}
			//이미지3
			if($("#product_image3").val()==""){
				alert("상품이미지(3)의 링크를 입력하세요.");
				return false;
			}
			//카테고리
			if($("input:checkbox[name=categoryList]:checked").length<1){
				alert("카테고리를 선택하세요.")
				return false;
			}
			if($("input:checkbox[name=categoryList]:checked").length>2 ){
				alert("카테고리를 2개 이하로 선택하세요.")
				return false;
			}
			//태그
			if($("input:checkbox[name=tagList]:checked").length<4){
				alert("태그를 선택하세요.")
				return false;
			}
			if($("input:checkbox[name=tagList]:checked").length>8){
				alert("태그를 각각 2개 이하로 선택하세요.")
				return false;
			}
			//mbti
			if($("input:checkbox[name=mbtiList]:checked").length<1){
				alert("MBTI를 선택하세요.")
				return false;
			}
			if($("input:checkbox[name=mbtiList]:checked").length>4){
				alert("MBTI를 4개 이하로 선택하세요.")
				return false;
			}
			//---유효성검사 끝------------------------
			return true;
		});
		
	});
	
	
</script>

<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->

  <title>Genie</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Theme style -->
  <link rel="stylesheet" href="/js_css/dist/css/adminlte.min.css">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="/js_css/fontawesome-free/css/all.min.css">

<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="/" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="/seller/sellerMain" class="nav-link">SellerMain</a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
          <i class="fas fa-search"></i>
        </a>
        <div class="navbar-search-block">
          <form class="form-inline">
            <div class="input-group input-group-sm">
              <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
              <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                  <i class="fas fa-search"></i>
                </button>
                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </li>

      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">3</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="/js_css/dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Brad Diesel
                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">Call me whenever you can...</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="/js_css/dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  John Pierce
                  <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">I got your message bro</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="/js_css/dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Nora Silvester
                  <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">The subject goes here</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
        </div>
      </li>
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">15</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-header">15 Notifications</span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> 4 new messages
            <span class="float-right text-muted text-sm">3 mins</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-users mr-2"></i> 8 friend requests
            <span class="float-right text-muted text-sm">12 hours</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> 3 new reports
            <span class="float-right text-muted text-sm">2 days</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="/js_css/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Genie-Seller</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="/js_css/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">${logName }</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item menu-open">
            <a href="/seller/sellerMain" class="nav-link active">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                대시보드
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/seller/productForm" class="nav-link">
                  <i class="nav-icon fas fa-copy"></i>
                  <p>상품등록</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/seller/sellerProduct" class="nav-link">
                  <i class="nav-icon far fa-envelope"></i>
                  <p>상품관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/seller/sellerOrder" class="nav-link">
                  <i class="nav-icon fas fa-columns"></i>
                  <p>주문관리</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="/seller/sellerSales" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>매출관리</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/seller/sellerQna" class="nav-link">
              <i class="nav-icon fas fa-tree"></i>
              <p>문의관리</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>More..</p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">상품등록</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/seller/sellerMain">Home</a></li>
              <li class="breadcrumb-item active">Main</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="card card-primary card-outline">
              <div class="card-body">
                
                <div class="container">
					
					<form method="post" action="/seller/productWrite" id="productFrm">
						<ul class="proFrm">
							<div id="nameDiv">
								<p>상품명</p>
								<input type="text" id="product_name" name="product_name" placeholder="상품명을 입력하세요"/>
							</div>
							<div id="priceDiv">
								<p>판매금액</p>
								<input type="text" id="product_price" name="product_price" placeholder="판매금액을 입력하세요"/>
							</div>
							<div id="infoDiv">
								<p>상품설명</p>
								<textarea rows="4" id="product_info" name="product_info"></textarea>
							</div>
							<div id="countDiv">
								<p>상품수량</p>
								<input type="text" id="product_quantity" name="product_quantity" placeholder="상품수량을 입력하세요"/>
							</div>
							<div id="imageDiv">
								<p>상품이미지</p>
								<input type="text" name="product_image1" id="product_image1" placeholder="이미지링크를 입력하세요"/>
								<input type="text" name="product_image2" id="product_image2" placeholder="이미지링크를 입력하세요"/>
								<input type="text" name="product_image3" id="product_image3" placeholder="이미지링크를 입력하세요"/>
							</div>
							<div id="cateDiv">
								<p>카테고리</p>
								<label><input type="checkbox" name="categoryList" value="생일"/>생일</label>
								<label><input type="checkbox" name="categoryList" value="기념일"/>기념일</label>
								<label><input type="checkbox" name="categoryList" value="명절"/>명절</label>
								<label><input type="checkbox" name="categoryList" value="집들이"/>집들이</label>
								<label><input type="checkbox" name="categoryList" value="서프라이즈"/>서프라이즈</label>
								<label><input type="checkbox" name="categoryList" value="응원"/>응원</label>
								<label><input type="checkbox" name="categoryList" value="캠핑"/>캠핑</label>
								<label><input type="checkbox" name="categoryList" value="반려동물"/>반려동물</label>
								<label><input type="checkbox" name="categoryList" value="운동"/>운동</label>
								<label><input type="checkbox" name="categoryList" value="키덜트"/>키덜트</label>
								<label><input type="checkbox" name="categoryList" value="요리"/>요리</label>
								<label><input type="checkbox" name="categoryList" value="홈파티"/>홈파티</label>
								
							</div>
							<div id="tagDiv">
								<p>태그</p>
								<p class="subTag">대상</p>
								<label><input type="checkbox" name="tagList" value="부모님"/>부모님</label>
								<label><input type="checkbox" name="tagList" value="배우자"/>배우자</label>
								<label><input type="checkbox" name="tagList" value="연인"/>연인</label>
								<label><input type="checkbox" name="tagList" value="가족/친척"/>가족/친척</label>
								<label><input type="checkbox" name="tagList" value="친구/지인"/>친구/지인</label>
								<label><input type="checkbox" name="tagList" value="회사동료"/>회사동료</label>
								<label><input type="checkbox" name="tagList" value="스승/멘토"/>스승/멘토</label>
								<p class="subTag">특정기념일</p>
								<label><input type="checkbox" name="tagList" value="생일"/>생일</label>
								<label><input type="checkbox" name="tagList" value="기념일"/>기념일</label>
								<label><input type="checkbox" name="tagList" value="백일"/>백일</label>
								<label><input type="checkbox" name="tagList" value="집들이"/>집들이</label>
								<label><input type="checkbox" name="tagList" value="서프라이즈"/>서프라이즈</label>
								<label><input type="checkbox" name="tagList" value="응원"/>응원</label>
								<label><input type="checkbox" name="tagList" value="감사"/>감사</label>
								<label><input type="checkbox" name="tagList" value="결혼"/>결혼</label>
								<label><input type="checkbox" name="tagList" value="출산"/>출산</label>
								<label><input type="checkbox" name="tagList" value="임신"/>임신</label>
								<label><input type="checkbox" name="tagList" value="개업"/>개업</label>
								<label><input type="checkbox" name="tagList" value="위로"/>위로</label>
								<p class="subTag">나이</p>
								<label><input type="checkbox" name="tagList" value="10대이하"/>10대이하</label>
								<label><input type="checkbox" name="tagList" value="20대"/>20대</label>
								<label><input type="checkbox" name="tagList" value="30대"/>30대</label>
								<label><input type="checkbox" name="tagList" value="40대"/>40대</label>
								<label><input type="checkbox" name="tagList" value="50대"/>50대</label>
								<label><input type="checkbox" name="tagList" value="60대"/>60대이상</label>
								<p class="subTag">성별</p>
								<label><input type="checkbox" name="tagList" value="남성"/>남성</label>
								<label><input type="checkbox" name="tagList" value="여성"/>여성</label>
							</div>
							<div id="mbtiDiv">
								<p>MBTI</p>
								<p class="subTag">E : 외향형 (사교적,활동적) / I : 내향형 (정적,신중함)</p>
								<label><input type="checkbox" name="mbtiList" value="E"/>E</label>
								<label><input type="checkbox" name="mbtiList" value="I"/>I</label>
								<p class="subTag">S : 감각형 (실용적,현실적) / N : 직관형 (이상적,비약적)</p>
								<label><input type="checkbox" name="mbtiList" value="S"/>S</label>
								<label><input type="checkbox" name="mbtiList" value="N"/>N</label>
								<p class="subTag">T : 사고형 (객관적,합리적) / F : 감정형 (상황적,공감성)</p>
								<label><input type="checkbox" name="mbtiList" value="T"/>T</label>
								<label><input type="checkbox" name="mbtiList" value="F"/>F</label>
								<p class="subTag">J : 판단형 (계획적,체계적) / P : 인식형 (즉흥적,융통성)</p>
								<label><input type="checkbox" name="mbtiList" value="J"/>J</label>
								<label><input type="checkbox" name="mbtiList" value="P"/>P</label>
							</div>
							<li><input type="submit" id="formSubmit" value="상품등록"/></li>
						</ul>
					</form>
				</div>
                
              </div>
            </div><!-- /.card -->
          </div>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    <div class="p-3">
      <h5>Title</h5>
      <p>Sidebar content</p>
    </div>
  </aside>
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="float-right d-none d-sm-inline">
      By Genie
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2022 <a href="https://localhost:9070">genie</a>.</strong> All rights reserved.
  </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/js_css/dist/js/adminlte.min.js"></script>



<!--  
			<div class="content-main">
				<div class="container">
					<p>상품등록</p>
					<form method="post" action="/seller/productWrite" id="productFrm">
						<ul class="proFrm">
							<div id="nameDiv">
								<p>상품명</p>
								<input type="text" id="product_name" name="product_name" placeholder="상품명을 입력하세요"/>
							</div>
							<div id="priceDiv">
								<p>판매금액</p>
								<input type="text" id="product_price" name="product_price" placeholder="판매금액을 입력하세요"/>
							</div>
							<div id="infoDiv">
								<p>상품설명</p>
								<textarea rows="4" id="product_info" name="product_info"></textarea>
							</div>
							<div id="countDiv">
								<p>상품수량</p>
								<input type="text" id="product_quantity" name="product_quantity" placeholder="상품수량을 입력하세요"/>
							</div>
							<div id="imageDiv">
								<p>상품이미지</p>
								<input type="text" name="product_image1" id="product_image1" placeholder="이미지링크를 입력하세요"/>
								<input type="text" name="product_image2" id="product_image2" placeholder="이미지링크를 입력하세요"/>
								<input type="text" name="product_image3" id="product_image3" placeholder="이미지링크를 입력하세요"/>
							</div>
							<div id="cateDiv">
								<p>카테고리</p>
								<label><input type="checkbox" name="categoryList" value="생일"/>생일</label>
								<label><input type="checkbox" name="categoryList" value="기념일"/>기념일</label>
								<label><input type="checkbox" name="categoryList" value="명절"/>명절</label>
								<label><input type="checkbox" name="categoryList" value="집들이"/>집들이</label>
								<label><input type="checkbox" name="categoryList" value="서프라이즈"/>서프라이즈</label>
								<label><input type="checkbox" name="categoryList" value="응원"/>응원</label>
								<label><input type="checkbox" name="categoryList" value="캠핑"/>캠핑</label>
								<label><input type="checkbox" name="categoryList" value="반려동물"/>반려동물</label>
								<label><input type="checkbox" name="categoryList" value="운동"/>운동</label>
								<label><input type="checkbox" name="categoryList" value="키덜트"/>키덜트</label>
								<label><input type="checkbox" name="categoryList" value="요리"/>요리</label>
								<label><input type="checkbox" name="categoryList" value="홈파티"/>홈파티</label>
								
							</div>
							<div id="tagDiv">
								<p>태그</p>
								<p class="subTag">대상</p>
								<label><input type="checkbox" name="tagList" value="부모님"/>부모님</label>
								<label><input type="checkbox" name="tagList" value="배우자"/>배우자</label>
								<label><input type="checkbox" name="tagList" value="연인"/>연인</label>
								<label><input type="checkbox" name="tagList" value="가족/친척"/>가족/친척</label>
								<label><input type="checkbox" name="tagList" value="친구/지인"/>친구/지인</label>
								<label><input type="checkbox" name="tagList" value="회사동료"/>회사동료</label>
								<label><input type="checkbox" name="tagList" value="스승/멘토"/>스승/멘토</label>
								<p class="subTag">특정기념일</p>
								<label><input type="checkbox" name="tagList" value="생일"/>생일</label>
								<label><input type="checkbox" name="tagList" value="기념일"/>기념일</label>
								<label><input type="checkbox" name="tagList" value="백일"/>백일</label>
								<label><input type="checkbox" name="tagList" value="집들이"/>집들이</label>
								<label><input type="checkbox" name="tagList" value="서프라이즈"/>서프라이즈</label>
								<label><input type="checkbox" name="tagList" value="응원"/>응원</label>
								<label><input type="checkbox" name="tagList" value="감사"/>감사</label>
								<label><input type="checkbox" name="tagList" value="결혼"/>결혼</label>
								<label><input type="checkbox" name="tagList" value="출산"/>출산</label>
								<label><input type="checkbox" name="tagList" value="임신"/>임신</label>
								<label><input type="checkbox" name="tagList" value="개업"/>개업</label>
								<label><input type="checkbox" name="tagList" value="위로"/>위로</label>
								<p class="subTag">나이</p>
								<label><input type="checkbox" name="tagList" value="10대이하"/>10대이하</label>
								<label><input type="checkbox" name="tagList" value="20대"/>20대</label>
								<label><input type="checkbox" name="tagList" value="30대"/>30대</label>
								<label><input type="checkbox" name="tagList" value="40대"/>40대</label>
								<label><input type="checkbox" name="tagList" value="50대"/>50대</label>
								<label><input type="checkbox" name="tagList" value="60대"/>60대이상</label>
								<p class="subTag">성별</p>
								<label><input type="checkbox" name="tagList" value="남성"/>남성</label>
								<label><input type="checkbox" name="tagList" value="여성"/>여성</label>
							</div>
							<div id="mbtiDiv">
								<p>MBTI</p>
								<p class="subTag">E : 외향형 (사교적,활동적) / I : 내향형 (정적,신중함)</p>
								<label><input type="checkbox" name="mbtiList" value="E"/>E</label>
								<label><input type="checkbox" name="mbtiList" value="I"/>I</label>
								<p class="subTag">S : 감각형 (실용적,현실적) / N : 직관형 (이상적,비약적)</p>
								<label><input type="checkbox" name="mbtiList" value="S"/>S</label>
								<label><input type="checkbox" name="mbtiList" value="N"/>N</label>
								<p class="subTag">T : 사고형 (객관적,합리적) / F : 감정형 (상황적,공감성)</p>
								<label><input type="checkbox" name="mbtiList" value="T"/>T</label>
								<label><input type="checkbox" name="mbtiList" value="F"/>F</label>
								<p class="subTag">J : 판단형 (계획적,체계적) / P : 인식형 (즉흥적,융통성)</p>
								<label><input type="checkbox" name="mbtiList" value="J"/>J</label>
								<label><input type="checkbox" name="mbtiList" value="P"/>P</label>
							</div>
							<li><input type="submit" id="formSubmit" value="상품등록"/></li>
						</ul>
					</form>
				</div>
			</div>
		</div>
	</div>
</main>
-->