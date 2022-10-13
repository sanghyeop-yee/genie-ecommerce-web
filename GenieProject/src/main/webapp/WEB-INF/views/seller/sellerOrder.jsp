<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
  .content-wrapper{
	overflow-y:scroll;
	-ms-overflow-style: none;
}

  .content-wrapper::-webkit-scrollbar{
  display:none;
}

  #orderbody{
		padding-top: 10px;
		padding-left: 50px;
		padding-right: 50px;
	}
	.info-box-text{
		font-size: 13px;
	}
	.info-box{
		width: 300px;
		height: 200px;
	}

	#icon {
		width: 100%;
		height: 100%;
    border-radius: 15px;
    text-shadow: 1px 1px 1px gray;

	}
  .table{
    font-size: 80%;
    text-align: center;
  }

</style>


<script>
	function fn_modify_order_state(order_num, select_id) { // order_num 와 select_id 를 매개변수로 받는 함수를 실행
		// 주문상태를 나타내는 셀렉트 박스에 접근
		var s_delivery_status = document.getElementById(select_id); // 's_delivery_status${i.index}' 태그에 접근
		// 함수로 전달받은 셀렉트 박스에서 선택한 옵션의 인덱스로 배송 상태 값을 가져옴
		var index = s_delivery_status.selectedIndex; // 드롭다운 리스트에서 선택된 옵션의 '인덱스 번호'를 반환한다.
		var value = s_delivery_status[index].value; // 인덱스 번호의 '값'을 반환한다.
		
		$.ajax({
			type: "post",
			async: false, // 동기요청 필요 -> 한 작업이 끝나야 그 다음 작업 가능
			url: "/seller/updateDeliveryStatus", // 어디로 보낼까?
			// 주문 번호와 배송 상태 값을 컨트롤러로 전송 
			data : { // 서버로 보내질 어떤 데이터?
				order_num:order_num,
				"recipient_delivery_status":value
			},
			success: function(data, textStatus){ // 요청이 성공하면 실행되는 콜백함수
					console.log(data);
				if(data.trim()=="mod_success"){
					alert("배송 상태를 수정했습니다."); // 성공메세지
					location.href="sellerOrder"; // 리턴페이지
				}else if(data.trim()=='failed'){
					alert("다시 시도해 주세요."); 
				}
			},
			error: function(data, textStatus){ // 요청이 실패했을때 실행되는 콜백함수
				alert("에러가 발생했습니다.");
			}
		});	
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
            <h1 class="m-0">주문관리</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/seller/sellerMain">Home</a></li>
              <li class="breadcrumb-item active">Order</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->


    <!-- Main content -->
    <div class="content" id="orderbody">
      <div class="container-fluid">
        <!-- info boxes -->
        <div class="row">
          <div class="col-12 col-sm-6 col-md-4">
            <div class="info-box" style="background-color: transparent; box-shadow: none;">
              <span class="info-box-icon elevation-1" id="icon" style="background-color:#6072bf; color:white;"><i class="fas fa-gift">
                <div class="info-box-content">
                  <span class="info-box-text">배송 준비 중</span>
                  <span class="info-box-number">
                    <h2>${deliveryPending} 건</h2>
                  </span>
                </div>
              </i></span>
            </div>
          </div>
          <div class="col-12 col-sm-6 col-md-4">
            <div class="info-box mb-3" style="background-color: transparent; box-shadow: none;">
              <span class="info-box-icon elevation-1" id="icon" style="background-color:#7060bf; color:white;"><i class="fas fa-shopping-cart">
                <div class="info-box-content">
                  <span class="info-box-text">오늘 들어온 주문</span>
                  <span class="info-box-number">
                    <h2> ${todayOrder} 건</h2>
                  </span>
                </div>
              </i></span> 
            </div>
          </div>
          <div class="col-12 col-sm-6 col-md-4">
            <div class="info-box mb-3" style="background-color: transparent; box-shadow: none;">
              <span class="info-box-icon elevation-1" id="icon" style="background-color:#60b5bf; color:white;"><i class="fas fa-check"> 
                <div class="info-box-content">
                  <span class="info-box-text">배송 중</span>
                  <span class="info-box-number">
                    <h2> ${deliveringOrder} 건</h2>
                  </span>
                </div>
              </i></span>
            </div>
          </div>
        </div> <!-- /.row -->
          <div class="row">
            <div class="col-lg-12">
              <div class="card card-primary card-outline">
                <div class="card-body">
                  <h5 class="card-title"></h5> <!--주문목록-->
                  <p class="card-text">
                    <table class="table">
                      <thead>
                        <tr>
                          <th>주문코드</th>
                          <th>주문날짜</th>
                          <th>상품명</th>
                          <th>수량</th>
                          <th>결제금액</th>
                          <th>주문자명</th>
                          <th>배송상태</th>
                          <th></th>
                        </tr>
                      </thead>
                      <tbody>
                      <!-- 주문 상품 목록을 리스트로 표시 -->
                        <c:forEach var="vo" items="${list}" varStatus="i"> 
                          <tr>
                            <td>${vo.order_num}</td>
                            <td>${vo.order_writedate}</td>
                            <td>${vo.product_name}</td>
                            <td>${vo.order_qty}</td>
                            <td><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.order_price}" /> 원</td>
                            <td>${vo.genie_id}</td>
                            <td>
                                <select name="s_delivery_status${i.index }" id="s_delivery_status${i.index }">
                                    <c:choose>
                                        <c:when test="${vo.recipient_delivery_status=='delivery_prepared' }">
                                            <option value="delivery_prepared" selected>배송준비중</option>
                                            <option value="delivering">배송중</option>
                                            <option value="delivered">배송완료</option>
                                            <option value="cancelled">주문취소</option>
                                            <option value="returned">반품</option>
                                        </c:when>
                                        <c:when test="${vo.recipient_delivery_status=='delivering' }">
                                            <option value="delivery_prepared">배송준비중</option>
                                            <option value="delivering" selected>배송중</option>
                                            <option value="delivered">배송완료</option>
                                            <option value="cancelled">주문취소</option>
                                            <option value="returned">반품</option>
                                        </c:when>
                                        <c:when test="${vo.recipient_delivery_status=='delivered' }">
                                            <option value="delivery_prepared">배송준비중</option>
                                            <option value="delivering">배송중</option>
                                            <option value="delivered" selected>배송완료</option>
                                            <option value="cancelled">주문취소</option>
                                            <option value="returned">반품</option>
                                        </c:when>
                                        <c:when test="${vo.recipient_delivery_status=='cancelled' }">
                                            <option value="delivery_prepared">배송준비중</option>
                                            <option value="delivering">배송중</option>
                                            <option value="delivered">배송완료</option>
                                            <option value="cancelled" selected>주문취소</option>
                                            <option value="returned">반품</option>
                                        </c:when>
                                        <c:when test="${vo.recipient_delivery_status=='returned' }">
                                            <option value="delivery_prepared">배송준비중</option>
                                            <option value="delivering">배송중</option>
                                            <option value="delivered">배송완료</option>
                                            <option value="cancelled">주문취소</option>
                                            <option value="returned" selected>반품</option>
                                        </c:when>
                                    </c:choose>
                                </select>
                            </td>
                            <td width=10%>
                                <!-- 수정을 클릭하면 선택한 셀렉트 박스의 id를 함수로 전달 -->
                                <input type="button" value="수정" onClick="fn_modify_order_state('${vo.order_num}','s_delivery_status${i.index}')"/>
                            </td>
                          </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </p>
                </div>
              </div><!— /.card —>
            </div>
        </div> <!— /.row —>
      </div> <!— /.container-fluid —>
    </div> <!— /.content —>
  </div> <!— /.content-wrapper —>
  


<!— REQUIRED SCRIPTS —>

<!— jQuery —>
<script src="plugins/jquery/jquery.min.js"></script>
<!— Bootstrap 4 —>
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!— AdminLTE App —>
<script src="/js_css/dist/js/adminlte.min.js"></script>


<%@ include file="../inc/sellerFooter.jsp"%>
                  