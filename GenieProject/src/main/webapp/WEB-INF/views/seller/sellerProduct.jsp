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
					<a href="/seller/productForm"><ul class="fa-ul"><li><i class="fa fa-plus-circle" aria-hidden="true"></i> 상품등록</li></ul></a>
					<a href="/seller/sellerProduct"><ul class="fa-ul"><li><i class="fa fa-gift" aria-hidden="true"></i> 상품관리</li></ul></a>
					<a href="/seller/sellerOrder"><ul class="fa-ul"><li><i class="fa fa-shopping-cart" aria-hidden="true"></i> 주문관리</li></ul></a>
					<a href="/seller/sellerSales"><ul class="fa-ul"><li><i class="fa fa-area-chart" aria-hidden="true"></i> 매출관리</li></ul></a>
					<a href="#"><ul class="fa-ul"><li><i class="fa fa-question-circle" aria-hidden="true"></i> 문의관리</li></ul></a>				
				</div>
			</div>
			<div class="content-main">
				<div class="content-main-top">
					<p>상품관리</p>
					<table id="table">
						<tr>
							<th>상품번호</th>
							<th>상품명</th>
							<th>가격</th>
							<th>카테고리</th>
							<th>태그</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
						<tr>
							<td>1234</td>
							<td>무드등</td>
							<td>19800</td>
							<td>생일</td>
							<td>친구/지인,생일,집들이,10-20대,남여공용</td>
							<td><input type="button" value="수정"></td>
							<td><input type="button" value="삭제"></td>
						</tr>
						<tr>
							<td>1255</td>
							<td>스피커</td>
							<td>34800</td>
							<td>생일</td>
							<td>친구/지인,생일,집들이,10-20대,20-30대,남여공용</td>
							<td><input type="button" value="수정"></td>
							<td><input type="button" value="삭제"></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</main>