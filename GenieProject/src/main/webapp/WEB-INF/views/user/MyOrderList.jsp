<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jspf" %>
<script src="https://kit.fontawesome.com/8d73d915f1.js" crossorigin="anonymous"></script>

<style>
.responsive-wrapper {
  background-color: #effaf9;
  background-size: cover;
  width: 100%;
  height: 100vh;
  margin: 0;
  padding: 1% 12%;
}
/* ------------------여기까지는 nav바 빼고 나머지 부분설정--------------------- */
.content {
  display: flex;
  align-items: flex-start;
}
.content-panel {
  display: flex;
  flex-direction: column;
  width: 25%;
  margin-right: 1em;
  background-color: #fff;
  color: #1f635c;
  box-shadow: 0 0 15px #278178;
  font-weight: bold;
  border-radius: 10px;
}
.content-panel h3{
  padding: 2.8em;
}
.content-panel>ul{
  margin: 0;
  padding: 0;
}
.content-panel>ul>li{
  padding: 1em;
  font-size: 14px; 
}
.content-panel>ul>li>i{
  margin: 0 1em; 
}
.content-panel>ul>li:last-child{
  margin-bottom: 3em;
}
/* ------------------------여기까지는 왼쪽 상자박스----------------------------------- */
.content-main{
  display: flex;
  flex-direction: column;
  width: 75%;
  background-color: #fff;
  color: #1f635c;
  box-shadow: 0 0 15px #278178;
  font-weight: bold;
  border-radius: 10px;
  padding: 3em;
}
.content-main>ul{
  margin: 0;
  padding: 0;
}
.content-main h1{
  margin-bottom: 1em;
}
/* -----------------------여기는 오른쪽박스----------------------------- */
</style>
<!-- -----------------------------------------스크립트부분---------------------------------- -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	window.onload = function(){
		document.getElementById("address_kakao").addEventListener("click", function(){ 
			//카카오 지도 발생
			new daum.Postcode({
				oncomplete: function(data) { //선택시 입력값 세팅
					document.getElementById("user_zipcode").value = data.zonecode; 
					document.getElementById("user_addr").value = data.address; 
				}
			}).open();
		});
	}
</script>
<!-- ------------------------------------스크립트부분 끝---------------------------------------- -->
<div class="responsive-wrapper">
  <div class="content">
    <div class="content-panel">
      <h3>${vo.user_name}님</h3>
        <ul class="fa-ul">
          <li><i class="fa-solid fa-circle-user"></i><a href="/user/MyPage">회원정보 확인/수정</a></li>
          <li><i class="fa-brands fa-shopify"></i><a href="/user/MyOrderList">주문목록/배송조회</a></li>
          <li><i class="fa-solid fa-clipboard"></i><a href="/user/MyInquiryList">나의 문의사항</a></li>
        </ul>
    </div>
    <div class="content-main">
		<h1>주문한 내역</h1>
		<ul>
			<li></li>
		</ul>
		<h2>배송조회</h2>
		<ul>
			<li></li>
		</ul>
    </div>
  </div>
</div>