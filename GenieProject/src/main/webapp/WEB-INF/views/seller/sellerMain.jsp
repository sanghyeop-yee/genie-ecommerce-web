<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<style>
.content-wrapper{
	overflow-y:scroll;
	-ms-overflow-style: none;
}

.content-wrapper::-webkit-scrollbar{
  display:none;
}

.container {
  display: grid; 
  grid-template-columns: 1fr 1fr 1fr; 
  grid-template-rows: 0.1fr 0.1fr 1fr; 
  gap: 3px 13px; 
  grid-template-areas: 
    "order_delivery1 order_delivery2 month_bestseller"
    "total_sales total_sales total_sales"
    "items_sales items_sales items_sales"; 
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
                  <h5 class="m-0">주문</h5>
                </div>
                <div class="card-body">
                  <p class="card-text">오늘 ${todayOrder} 건의 <br/>
                  새로운 주문이 있어요.</p>
                  <a href="/seller/sellerOrder" class="card-link">주문관리</a>
                </div>
              </div>
            </div>
            <div class="order_delivery2">
              <div class="card">
                <div class="card-header">
                  <h5 class="m-0">배송</h5>
                </div>
                <div class="card-body">
                  <p>총 ${deliveryPending} 건의 주문이 <br/>
                    배송을 기다리고 있어요.</p>
                  <a href="/seller/sellerOrder" class="card-link">배송처리</a>
                </div>
              </div>
            </div>
            <div class="month_bestseller">
              <div class="card">
                <div class="card-header">
                  <h5 class="m-0">이달의 상품</h5>
                </div>
                <div class="card-body">
                  <p class="card-text">가장 인기있는 상품은 <br/>
                    ${bestSeller} 이에요.</p>
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
                            <td><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.total_sales}" /> ${vo.total_sales}</td>
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
                  <p class="card-text">
                    이번 달 총 매출은 ${thisMonthRevenue} 원 이에요.
                  </p>
                  <!-- 차트 (chart js)-->
                  <h5 style="text-align:center;">일별 매출</h5>
                  <canvas id="chart" style="width:200px; height:50px;"></canvas>
                  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.6.0/chart.min.js" integrity="sha512-GMGzUEevhWh8Tc/njS0bDpwgxdCJLQBWG3Z2Ct+JGOpVnEmjvNx6ts4v6A2XJf1HOrtOsfhv3hBKpK9kE5z8AQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
                </div>
              </div>
            </div>
          </div> <!-- container -->
        </div>
        </div> <!-- ./row -->
      </div> <!-- ./container-fluid -->
    </div> <!-- ./content -->
  </div> <!-- /.content-wrapper -->
  
  <%@ include file="../inc/sellerFooter.jsp"%>
<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/js_css/dist/js/adminlte.min.js"></script>

<!-- 차트 (chart js)-->
<script>
  var jsonData = ${json}; // Controller 에서 가공하여 넘겨준 데이터를 jstl 문법을 통해 변수에 담기
  var jsonObject = JSON.stringify(jsonData); // js에서 문자열형태로 사용할 수 있도록 변환
  var jData = JSON.parse(jsonObject); // json객체로 사용할수 있게 json.parse 메소드 이용
  // -> js 에서 jData 변수를 사용하여 데이터 다룰수 있게됨.
  
  // 차트표현을 위해 필요한 핵심데이터들이 각각 들어갈 js 배열 객체 선언
  var labelList = new Array();
  var valueList = new Array();
  var colorList = new Array();
  
  // jData 에 담겨있는 변수들을 추출하여 위에서 선언한 각각의 js array 에 분배
  for(var i=0; i<jData.length; i++){ // jData 길이만큼 반복문 수행
    var d = jData[i]; // 각각의 json 데이터안에 입력디어 있는 값중
    labelList.push(d.date); // date (month_day) 에 해당하는 부분을 labelList에 삽입
    valueList.push(d.sales); // sales (total_sales) 에 해당하는 부분을 valueList에 삽입
    colorList.push(colorize()); // 랜덤한 색상값을 생성해 반환
  }
  
  function colorize(){
    var r = Math.floor(Math.random()*200);
    var g = Math.floor(Math.random()*200);
    var b = Math.floor(Math.random()*200);
    var color = 'rgba(' + r + ', ' + g + ', ' + b +  ', 0.7)';
    return color;
  }
  
  // 각각의 리스트를 chart js 형식에 넣어주기
  var data = {
      labels: labelList,
      datasets: [{
        label: '매출(원)',
        backgroundColor: colorList,
        data: valueList
        
      }],
      options: {
        title: {
          display: true,
          text: '일별 매출'
        }
      }
  };
  
  const chart = document.querySelector("#chart").getContext('2d');
  new Chart(chart, {
    type: 'line',
    data: data
  })
  
  </script>

