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
	/* ------------------여기까지는 nav바 빼고 나머지 밑에 페이지 설정--------------------- */
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

/* ---------------------------------여기는 왼쪽 상자박스----------------------------------- */

	#modyfiy-tag{
		float:left;
	}
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

	.home{
		position: relative;
		width: 100%;
		/*height: 100vh;*/
		/*background: url(../img/background.jpg);*/
		background: #fafbfc;
		background-size: cover;
		background-position: center;
		display: grid;
		grid-template-columns: repeat(1, 1fr);
		align-items: center;
	}
	.container{
		padding:30px;
		width:600px;
		height:60em;
		background-color:white;
		margin:0 auto;
		margin-left:5em;
		font-size:20px;
		box-sizing: border-box;
		border-radius:15px;
		-webkit-border-radius: 10px 10px 10px 10px;
		-webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
    	box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
	}

	h1{
		font-size:27px;
		margin-top:20px;
		margin-bottom:20px;
		margin-left:65px;
		padding:10px;
		
	}
	.userForm{
		width:400px;
		height:1000px;
		margin:30px auto;
        margin-top:0;
		padding:10px;
        padding-bottom:30px;
	}
	.userForm p{
		padding:10px;
		padding-left:0;
		font-weight:bold;
	}
	#idForm p{
		float:left;
		margin:10px;
		margin-left:0;
	}
	
	input[type=text], input[type=password], input[type=email]{
		width:100%;
		height:50px;
		background-color: #f6f6f6;
    	border: none;
    	color: #0d0d0d;
		border-radius:15px;
		font-size:20px;
		padding:20px;
		margin:5px;
		border: 2px solid #f6f6f6;
    	border-radius: 10px 10px 10px 10px;
	}
	
    #user_phone_num2, #user_phone_num3{
        width:29%;
    }

    #user_zipcode{
        width:50%;
    }

    #address_kakao, #idCheck, #find_pwd{
		width:35%;
		padding:10px;
		display:inline-block;
		font-size: 15px;
		background: #F7D25A;
		color: #fff;
		border:none;
		border-radius: 10px;
		transition: ease .40s;
		margin:10px;
	} 

	#formSubmit{
		padding:10px 100px 10px 100px;
		display:block;
		margin:50px auto;
		font-size: 23px;
		background: #F7D25A;
		color: #fff;
		border:none;
		border-radius: 10px;
		transition: ease .40s;
	}
	#user_phone_num1{
		width:29%;
		height:50px;
		background-color: #f6f6f6;
    	border: none;
    	color: #0d0d0d;
		border-radius:15px;
		font-size:20px;
		margin:5px;
		border: 2px solid #f6f6f6;
    	border-radius: 10px 10px 10px 10px;
	}

/* -----------------------여기까지는 오른쪽박스----------------------------- */
</style>
<!-- -----------------------------------------스크립트 부분 시작---------------------------------- -->
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
<!-- -----------------------------카카오api 가져온부분-------------------------- -->
<script>
	$(function(){

		$("#find_pwd").change(function(){
				window.open("/user/ModifyPassword","modify_pwd","width=500,height=500");
		});


		//유효성 검사
       	$("#logFrm").submit(function(){
			
			if($("#user_pwd").val()==""){
				alert("비밀번호를 입력하세요");
				$("#user_pwd").focus();
				return false;
			}
			if($("#user_pwd").val()!=$("#user_pwd2").val()){
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
			<div class="container">
				<h1>회원정보 수정</h1>
				<ul class="userForm">
					<form method="post" action="/user/UserEditOk" id="logFrm">
						<ul class="loginForm">
							<div id="idForm">
								<p>아이디</p>
								<input type="text" id="user_id" name="user_id" value= "${vo.user_id}" readonly>
								<input type ="hidden" id = "idCheckState" value = "Y"/>
							</div>
							<div id="name">
								<p>이름</p>
								<input type="text" id="user_name" name="user_name" value= "${vo.user_name}" readonly>
							</div>
							<div id="passwordForm">
								<p>비밀번호 <input type="button" id="find_pwd" value="비밀번호 변경"/></p>
							</div>
							<div id="phoneForm">
								<p>휴대폰 번호</p>
								<select id = "user_phone_num1" name = "user_phone_num1" size = "1" value = "${vo.user_phone_num1}">
									<option value="">선택하세요</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
								<input type ="text" name = "user_phone_num2" id ="user_phone_num2" maxlength = "4" value ="${vo.user_phone_num2}"/>
								<input type ="text" name = "user_phone_num3" id ="user_phone_num3" maxlength = "4" value ="${vo.user_phone_num3}"/>
							</div>
							<div id="emailForm">
								<p>이메일</p>
								<input type="email" id="user_email" name="user_email" value ="${vo.user_email}" placeholder="이메일을 입력하세요">
							</div>
							<div id="addrForm">
								<p>우편번호</p>
									<input type ="text" name = "user_zipcode" id ="user_zipcode" value ="${vo.user_zipcode}" readonly/>
									<input type = "button" value = "우편번호찾기" id = "address_kakao"/><br/>
								<p>주소</p>
									<input type = "text" name = "user_addr" id ="user_addr" value="${vo.user_addr}" readonly/>
								<p>상세주소</p>
								<input type ="text" name = "user_detailaddr" id ="user_detailaddr" value="${vo.user_detailaddr}"/>
							<li><input type = "submit" id="formSubmit" value = "회원정보 수정"/></li>
						</ul>
					</form>
				</ul>
			</div>
		</div>
	</div>
</div>