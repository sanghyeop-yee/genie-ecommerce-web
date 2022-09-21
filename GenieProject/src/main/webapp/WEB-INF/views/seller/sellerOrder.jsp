<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
nav {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-top: 45px;
    padding-left: 8%;
    padding-right: 8%;
}

body {
  line-height: 1.5;
  min-height: 100vh;
  font-family: "Be Vietnam Pro", sans-serif;
  background: #f2f2f2;
}


.responsive-wrapper {
  width: 90%;
  max-width: 1280px;
  margin-left: auto;
  margin-right: auto;
}

.content {
  margin-top: 2rem;
  display: flex;
  align-items: flex-start;
}

.content-panel {
  display: none;
  max-width: 280px;
  width: 25%;
  padding: 2rem 1rem 2rem 1rem;
  margin-right: 3rem;
}

@media (min-width: 800px) {
  .content-panel {
    display: block;
  }
}

.vertical-tabs {
  display: flex;
  align-items: center;
  flex-direction: column;
  background-color: white;
  border-radius: 8px;
  height: 900px;
}
.vertical-tabs a {
  
  align-items: center;
  padding: 0.3em 1em;
  background-color: transparent;
  border-radius: 3px;
  text-decoration: none;
  font-weight: 500;
  color: #3e3e3e;
  transition: 0.15s ease;
}
.fa-ul {
	margin-left: 0px;
}

.vertical-tabs div {
	margin-bottom: 30px;
}

.vertical-tabs div span {
  width: 200px;
  height: 200px;
  border-radius: 8px;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  padding: 20px;
}
.vertical-tabs div span img {
  max-height: 100%;
}
.vertical-tabs div h3 {
  
  align-items: center;
  text-align: center;
  font-weight: 500;
}

.content-main-top {
    background: white;
    width: 100%;
    height: 900px;
    margin-bottom: 30px;
    border-radius: 8px;
}

.content-main-top p{
  margin-top: 0;
  margin-bottom: .5rem;
  font-weight: 500;
  line-height: 1.2;
  padding: 1rem;
}

.content-main {
  padding-top: 2rem;
  padding-bottom: 6rem;
  flex-grow: 1;
}

table {
  font-family: arial, sans-serif;
  font-size: 15px;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
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
<main class="main">

	<div class="responsive-wrapper">

		<div class="content">
			<div class="content-panel">
				<div class="vertical-tabs">
					<div>
						<span><img src="../images/seller/profile-1.png" /></span>
						<h3>업체이름</h3>
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
					<p>Disney님 주문관리 Dashboard</p>
					<table id="table">
						<thead>
							<tr>
								<th>주문코드</th>
								<th>주문날짜</th>
								<th>상품명</th>
								<th>수량</th>
								<th>결제금액</th>
								<th>주문자명</th>
								<th>수령자명</th>
								<th>주소</th>
								<th>전화번호</th>
								<th>요청사항</th>
								<th>주문상태</th>
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
								<td>${vo.order_price}</td>
								<td>${vo.recipient_name}</td>
								<td>${vo.genie_id}</td>
								<td>${vo.recipient_address}</td>
								<td>${vo.recipient_phone}</td>
								<td>${vo.recipient_request}</td>
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
				</div>
			</div>
		</div>
	</div>
</main>