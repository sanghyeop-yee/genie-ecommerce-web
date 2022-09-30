<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<style>

.container {
  display: grid; 
  grid-template-columns: 1fr 1fr 1fr 1fr; 
  grid-template-rows: 0.1fr 0.1fr 1fr; 
  gap: 3px 13px; 
  grid-template-areas: 
    "order_delivery1 order_delivery2 month_bestseller product_qty"
    "total_sales total_sales total_sales product_qty"
    "items_sales items_sales items_sales product_qty"; 
}

.items_sales { grid-area: items_sales; }
.order_delivery1 { grid-area: order_delivery1; }
.order_delivery2 { grid-area: order_delivery2; }
.month_bestseller { grid-area: month_bestseller; }
.total_sales { grid-area: total_sales; }
.product_qty { grid-area: product_qty; }



.thumb {
  width: 30%;
  aspect-ratio: 1/1;
  object-fit:cover;
}

</style>

<%@ include file="../inc/sellerNav.jsp"%>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">한눈에 보기</h1>
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
          <div class="container">
            <div class="order_delivery1">
              <div class="card">
                <div class="card-header">
                  <h5 class="m-0">주문/배송</h5>
                </div>
                <div class="card-body">
                  <h5 class="card-title">배송이 준비된</h5>
                  <br>
                  <p><fmt:formatNumber type="number" maxFractionDigits="3" value="${totalOrderCount}" /> 총 ${todayOrder} 건의 새 주문이 있어요.</p>
                  <a href="#" class="card-link">배송처리</a>
                </div>
              </div>
            </div>
            <div class="order_delivery2">
              <div class="card">
                <div class="card-header">
                  <h5 class="m-0">주문/배송</h5>
                </div>
                <div class="card-body">
                  <h5 class="card-title">배송중인</h5>
                  <p class="card-text"> 주문이 있어요.</p>
                  <a href="#" class="card-link">주문관리</a>
                </div>
              </div>
            </div>
            <div class="month_bestseller">
              <div class="card">
                <div class="card-header">
                  <h5 class="m-0">이달의 상품</h5>
                </div>
                <div class="card-body">
                  <h5 class="card-title">가장 인기있는 상품은</h5>
                  <p class="card-text">${bestSeller} 이에요.</p>
                  <a href="#" class="card-link">상품관리</a>
                </div>
              </div>
            </div>
                
                
            <div class="items_sales">
              <div class="card">
                <div class="card-header">
                  <h5 class="m-0">아이템별 매출</h5>
                </div>
                <div class="card-body">
                  
                  <p class="card-text"  style="font-size: 5px;">
                    <table class="table">
                      <thead>
                        <tr>
                          <th>이미지</th>
                          <th>상품명</th>
                          <th>결제건수</th>
                          <th>매출</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach var="vo" items="${revenueByProduct}" varStatus="i">
                          <tr>
                            <td><img src="${vo.product_image1}" class="thumb"></td>
                            <td>${vo.product_name}</td>
                            <td>${vo.sold_counts}</td>
                            <td>${vo.total_sales}</td>
                          </tr>
                        </c:forEach>
                        
                      </tbody>
                    </table>
                  </p>
                  <a href="#" class="card-link">더보기</a>
                </div>
              </div>
            </div>
            <div class="total_sales">
              <div class="card">
                <div class="card-header">
                  <h5 class="m-0">매출 통계</h5>
                </div>
                <div class="card-body">
                  <h5 class="card-title">총 매출</h5>
                  <p class="card-text">
                    ${logName }의 이번 달 총 매출은 이예요.
                  </p>
                  <a href="#" class="card-link">매출관리</a>
                </div>
              </div>
            </div>
            <div class="product_qty">
              <div class="card">
                <div class="card-header">
                  <h5 class="m-0">재고수량</h5>
                </div>
                <div class="card-body">
                  <p class="card-text">
                    <table class="table">
                      <thead>
                        <tr>
                          <th>이미지</th>
                          <th>상품명</th>
                          <th>재고수량</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach var="vo" items="${list}" varStatus="i">
                          <tr>
                            <td>${vo.product_image1}</td>
                            <td>${vo.product_name}</td>
                            <td>${vo.product_stock}</td>
                          </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </p>
                  <a href="#" class="card-link">더보기</a>
                </div>
              </div>
            </div>
            
          </div> <!-- container -->
        </div>
        </div> <!-- ./row -->
      </div> <!-- ./container-fluid -->
    </div> <!-- ./content -->
  </div> <!-- /.content-wrapper -->
  

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/js_css/dist/js/adminlte.min.js"></script>



