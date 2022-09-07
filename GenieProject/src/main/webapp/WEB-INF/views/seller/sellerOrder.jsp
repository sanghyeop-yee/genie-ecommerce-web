<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
					<a href="#"><ul class="fa-ul"><li><i class="fa fa-plus-circle" aria-hidden="true"></i> 상품등록</li></ul></a>
					<a href="#"><ul class="fa-ul"><li><i class="fa fa-gift" aria-hidden="true"></i> 상품관리</li></ul></a>
					<a href="#"><ul class="fa-ul"><li><i class="fa fa-shopping-cart" aria-hidden="true"></i> 주문관리</li></ul></a>
					<a href="#"><ul class="fa-ul"><li><i class="fa fa-area-chart" aria-hidden="true"></i> 매출관리</li></ul></a>
					<a href="#"><ul class="fa-ul"><li><i class="fa fa-question-circle" aria-hidden="true"></i> 문의관리</li></ul></a>				
				</div>
			</div>
			<div class="content-main">
				<div class="content-main-top">
					<p>Disney님 주문관리 Dashboard</p>
					<table>
					      <tr>
					        <th>주문코드</th>
					        <th>주문날짜</th>
					        <th>주문상태</th>
					        <th>상품명</th>
					        <th>수량</th>
					        <th>결제금액</th>
					        <th>주문자명</th>
					        <th>수령자명</th>
					        <th>주소</th>
					      </tr>
					      <tr>
					        <td>1</td>
					        <td>2022/9/6</td>
					        <td>주문접수</td>
					        <td>토이스토리 햄 화분</td>
					        <td>1</td>
					        <td>30,000</td>
					        <td>김민진</td>
					        <td>이서현</td>
					        <td>서울시 고구마구 고구마동 고구마</td>
					      </tr>
					      <tr>
					        <td>2</td>
					        <td>2022/9/6</td>
					        <td>주문접수</td>
					        <td>토이스토리 렉스 커스튬</td>
					        <td>1</td>
					        <td>130,000</td>
					        <td>채한준</td>
					        <td>조준환</td>
					        <td>서울시 당근구 당근동 당근</td>
					      </tr>
					      <tr>
					        <tr>
					        <td>3</td>
					        <td>2022/9/6</td>
					        <td>주문접수</td>
					        <td>스타워즈 토스터</td>
					        <td>2</td>
					        <td>64,000</td>
					        <td>오세영</td>
					        <td>홍세호</td>
					        <td>서울시 감자구 감자동 감자</td>
					      </tr>
					  </table>
					  
				</div>
			</div>
		</div>
	</div>
</main>