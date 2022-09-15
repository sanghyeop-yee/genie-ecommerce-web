<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jspf" %>
<script src="https://kit.fontawesome.com/8d73d915f1.js" crossorigin="anonymous"></script>

<style>
  /* ------------------뒷배경 설정--------------------- */
.responsive-wrapper {
  background-color: #f5f5f7;
  background-size: cover;
  width: 100%;
  height: 100vh;
  margin: 0;
  padding: 1% 12%;
}
/* --------------------왼쪽박스 설정--------------------- */
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
  color: #1d1d1f;
  box-shadow: 0 0 1px #dfdfdf;
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
/* ------------------------오른쪽 박스 설정---------------------------------- */
.content-main{
  display: flex;
  flex-direction: column;
  width: 75%;
  background-color: #fff;
  color: #1d1d1f;
  box-shadow: 0 0 1px #dfdfdf;
  font-weight: bold;
  border-radius: 10px;
  padding: 3em;
}
.content-main h1{
  margin-bottom: 1em;
}
.content-main>ul{
  margin: 0;
  padding: 0;
}
.inquiry>ul>li{
  float: left;
  width: 15%;
  margin-bottom: 2em;
}
.inquiry>ul>li:nth-child(3n+1){
  width: 70%;
}
/* ----------------------------------db와 연동되어 들어갈 내용----------------------------- */
.inquiry-list>ul>li{
  float: left;
  width: 27%;
  margin-bottom: 2em;
}
.inquiry-list>ul>li:nth-child(3n+1){
  width: 60%;
}
.inquiry-list>ul>li:nth-child(3n+3){
  width: 10%;
}
</style>

<div class="responsive-wrapper">
  <div class="content">
    <div class="content-panel">
      <h3>${vo.user_name}님</h3>
        <ul class="fa-ul">
					<li><i class="fa-solid fa-circle-user"></i><a href="/user/MyPage">회원정보 확인/수정</a></li>
					<li><i class="fa-brands fa-shopify"></i><a href="/user/MyOrderList">주문목록/배송조회</a></li>
					<li><i class="fa-sharp fa-solid fa-truck"></i><a href="/user/MyDeliveryList">배송지 관리</a></li>
					<li><i class="fa-solid fa-clipboard"></i><a href="/user/MyInquiryList">나의 문의사항</a></li>
        </ul>
    </div>
    <div class="content-main">
		<h1>내가 작성한 글</h1>
      <div class="inquiry">
        <ul>
          <li>문의내역</li>
          <li>문의일</li>
          <li>답변여부</li>
        </ul>
      </div>
      <div class="inquiry-list">
        <ul>
          <li>{vo.inquiry_title}</li>
          <li>{vo.inquiry_writedate}</li>
          <li>{vo.?}</li>
        </ul>
      </div>
    </div>
  </div>
</div>