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

#productbody{
	padding-top: 10px;
	padding-left: 100px;
	padding-right: 100px;
}
.table a{
	color:black;
}
.content-wrapper{
	overflow-y:scroll;
	-ms-overflow-style: none;
}
.content-wrapper::-webkit-scrollbar{
  display:none;
}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	function productDel(product_id ){
		if(confirm("상품을 삭제하시겠습니까?")){
			location.href="/seller/productDel/"+product_id;
		}
	}
</script>

<%@ include file="../inc/sellerNav.jsp"%>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">상품관리</h1>
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
    <div class="content" id="productbody">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="card card-primary card-outline">
              <div class="card-body">
                <h5 class="card-title"> </h5>

                <p class="card-text">
                
                <div>
                	<form method="get" action="/seller/sellerProduct" id="searchFrm">
                		<select name="searchKey">
                			<option value="product_name">상품명</option>
                			<option value="product_category">카테고리</option>
                			<option value="product_tag">태그</option>
                			<option value="product_mbti">MBTI</option>
                		</select>
                		
                		<input type="text" name="searchWord" id="searchWord"/>
                		<input type="submit" value="Search"/>
                		
                	</form>
                </div>
                
                  <table class="table">
                    <thead>
                      <tr>
                        <th>상품번호</th>
                        <th>상품명</th>
                        <th>가격</th>
                        <th>재고</th>
                        <th>카테고리</th>
                        <th>태그</th>
                        <th>MBTI</th>
                        <th>수정</th>
						<th>삭제</th>
                      </tr>
                    </thead>
                    <tbody>
                      <!-- 태그 반복 -->
                      <c:forEach var="pvo" items="${plist }">
                      <tr>
						    <td>${pvo.product_id }</td>
							<td><a href="/product_detail?product_id=${pvo.product_id}">${pvo.product_name}</a></td>
							<td>${pvo.product_price}</td>
							<td>${pvo.product_quantity}</td>
							<td>${pvo.product_category}</td>
							<td>${pvo.product_tag}</td>
							<td>${pvo.product_mbti}</td>
							<td><a href="/seller/sellerProductEdit/${pvo.product_id }">edit</a></td>
							<td><a href="javascript:productDel(${pvo.product_id });">del</a></td>
                      </tr>
                    </c:forEach>
                    <!-- 태그 반복 끝 --> 
                    </tbody>
                  </table>
                </p>
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

  <%@ include file="../inc/sellerFooter.jsp"%>
<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/js_css/dist/js/adminlte.min.js"></script>



<!--  
<main class="main">

	<div class="responsive-wrapper">

		<div class="content">
			<div class="content-panel">
				<div class="vertical-tabs">
					<div>
						<span><img src="../images/seller/profile-1.png" /></span>
						<h3>${logName }님</h3>
					</div>
          			<a href="sellerMain"><ul class="fa-ul"><li><i class="fa fa-pie-chart" aria-hidden="true"></i> 대시보드</li></ul></a>
					<a href="productForm"><ul class="fa-ul"><li><i class="fa fa-plus-circle" aria-hidden="true"></i> 상품등록</li></ul></a>
					<a href="sellerProduct"><ul class="fa-ul"><li><i class="fa fa-gift" aria-hidden="true"></i> 상품관리</li></ul></a>
					<a href="sellerOrder"><ul class="fa-ul"><li><i class="fa fa-shopping-cart" aria-hidden="true"></i> 주문관리</li></ul></a>
					<a href="sellerSales"><ul class="fa-ul"><li><i class="fa fa-area-chart" aria-hidden="true"></i> 매출관리</li></ul></a>
					<a href="sellerQna"><ul class="fa-ul"><li><i class="fa fa-question-circle" aria-hidden="true"></i> 문의관리</li></ul></a>	
				</div>
			</div>
			<div class="content-main">
				<div class="content-main-top">
					<p id="product_title">상품관리</p>
					<table id="table">
						<tr>
							<th>상품번호</th>
							<th>상품명</th>
							<th>가격</th>
							<th>재고</th>
							<th>카테고리</th>
							<th>태그</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
						<c:forEach var="pvo" items="${plist }">
						<tr>
							<td>${pvo.product_id }</td>
							<td>${pvo.product_name}</td>
							<td>${pvo.product_price}</td>
							<td>${pvo.product_quantity}</td>
							<td>${pvo.product_category}</td>
							<td>${pvo.product_tag}</td>
							<td><a href="/seller/sellerProductEdit/${pvo.product_id }">edit</a></td>
							<td><a href="javascript:productDel(${pvo.product_id });">del</a></td>
						</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
</main>
-->