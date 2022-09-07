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
<script>
	$(function(){
		$("#idCheck").click(function(){
			window.open("/user/idCheck?user_id="+$("#user_id").val(),"idCheck","width=400,height=300");
		});
		$("#user_id").change(function(){
			$("#idCheckState").val("N");
		});
		//유효성 검사
       	$("#logFrm").submit(function(){
			
			$("#userid").change(function(){
				$("#idCheckState").val("N");
			});
			// 아이디, 비밀번호
			if($("#user_id").val()==""){
				alert("아이디를 입력하세요");
				$("#user_id").focus();
				return false;
			}
			//아이디 중복검사여부
			if($("#idCheckState").val()!='Y'){
				alert("아이디를 중복검사 하세요");
				return false;
			}
			if($("#user_pwd").val()==""){
				alert("비밀번호를 입력하세요");
				$("#user_pwd").focus();
				return false;
			}
			if($("#user_pwd").val()!=$("#userpwd2").val()){
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			}
			// 전화번호
			if($("#user_phone_num1").val()=="" || $("#user_phone_num2").val()=="" || $("#user_phone_num3").val()==""){
				alert("연락처를 입력하세요");
				return false;
			}
			return true;
			// 우편번호
			if($("#user_zipcode").val()==""){
				alert("우편번호를 선택하세요");
				$("#user_zipcode").focus();
				return false;
			}
			if($("#user_addr").val()==""){
				alert("주소를 입력하세요");
				$("#user_addr").focus();
				return false;
			}
			if($("#user_detailaddr").val()==""){
				alert("상세 주소를 입력하세요");
				$("#user_detailaddr").focus();
				return false;
			}
			// 이메일
			if($("#user_email").val()==""){
				alert("이메일을 입력하세요");
				$("#user_email").focus();
				return false;
			}
			return true;
		});
    });
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
			<h1>회원정보 수정</h1>
			<form method="get" action="/user/UserEditOk" id="logFrm">
				<ul class="loginForm">
					<div id="idForm">
						<li>아이디</li>
						<input type="text" id="user_id" name="user_id" value= "${vo.user_id}">
						<input type ="hidden" id = "idCheckState" value = "Y"/>
					</div>
					<div id="name">
						<p>이름</p>
						<input type="text" id="user_name" name="user_name" value= "${vo.user_name}" readonly>
					</div>
					<div id="passwordForm">
						<li>비밀번호</li>
						<input type="password" id="user_pwd" name="user_pwd" placeholder="비밀번호를 입력하세요">
						<li>비밀번호 확인</li>
						<input type="password" id="user_pwd" name="user_pwd2" placeholder="비밀번호를 입력하세요">
					</div>
          			<div id="phoneForm">
						<li>휴대폰 번호</li>
              		<select id = "user_phone_num1" name = "user_phone_num1" size = "1" value = "${vo.user_phone_num1}">
						<option value="">선택하세요</option>
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>-
				        <input type ="text" name = "user_phone_num2" id ="user_phone_num2" maxlength = "4" value ="${vo.user_phone_num2}"/> -
			 	        <input type ="text" name = "user_phone_num3" id ="user_phone_num3" maxlength = "4" value ="${vo.user_phone_num3}"/>
					</div>
          			<div id="emailForm">
					<li>이메일</li>
					<input type="email" id="user_email" name="user_email" value =" ${vo.user_email}" placeholder="이메일을 입력하세요">
					</div>
          			<div id="addrForm">
					<li>우편번호</li>
					<li><input type ="text" name = "user_zipcode" id ="user_zipcode" value ="${vo.user_zipcode}" readonly />
						<input type = "button" value = "우편번호찾기" id = "address_kakao"/><br/>
					<li>주소</li>
					<li><input type = "text" name = "user_addr" id ="user_addr" value="${vo.user_addr}" readonly/></li>
					<li>상세주소</li>
					<li><input type ="text" name = "user_detailaddr" id ="user_detailaddr" value="${vo.user_detailaddr}"/></li>	
					<li><input type = "submit" id="login" value = "회원정보 수정"/></li>
          			</div>
				</ul>
			</form>
    	</div>
  	</div>
</div>