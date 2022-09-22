<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

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
  width:280px; /*임시로 추가 !!!*/
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
.content-main a{
	text-decoration: none;
	color: #3e3e3e;
}
#product_title{
	font-size:20px;
	font-family: arial, sans-serif;
	font-weight:bold;
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

</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	function productDel(product_id ){
		if(confirm("상품을 삭제하시겠습니까?")){
			location.href="/seller/productDel/"+product_id;
		}
	}
</script>

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