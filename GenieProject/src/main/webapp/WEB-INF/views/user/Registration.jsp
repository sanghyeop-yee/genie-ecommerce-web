<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jspf" %>

<style>
/* 뒤에 회색배경 */
.registration {
    width: 100%;
    padding: 3% 33%;
    background: #f5f5f7;
}
/* 안쪽 흰색폼 설정 */
.wrapper {
	display: flex;
    flex-direction: column; 
    width: 100%;
	padding: 5%;
    background: #fff;
	border-radius: 10px;
	box-shadow: 0 0 15px #b4b4b4;
}
/* 일반회원 회원가입 */
.wrapper h1 {
	margin: 1em;
	font-weight: bold;
	text-align: center;
}
/* 전체적인 (글자) */
.wrapper li {
	font-weight: bold;
	margin: .5em;
}
/* 아이디를 입력하세요 */
#genie_id {
	width: 63%;
}
/* 아이디중복검사 */
#idCheck {
	width: 33%;
	padding: .5em;
	font-size: 1em;
	background: #F7D25A;
	color: #fff;
	border: none;
	border-radius: 10px;
	cursor: pointer;
}
/* ------------------------------------------------------------------------------- */
input[type=text], input[type=password], input[type=email] {
	width: 100%;
	height: 5vh;
	background-color: #f5f5f7;
	color: #1d1d1f;
	font-size: 1em;
	padding: 1em;
	margin: .3em;
	border: none;
	border-radius: 10px;
}
/* 폰입력 설정 */
#user_phone_num1 {
	width: 25%;
	height: 5vh;
	margin-left: 1em;
	background-color: #f5f5f7;
	color: #1d1d1f;
	font-size: 1em;
	border: none;
	border-radius: 10px;
}
#user_phone_num2, #user_phone_num3 {
	width:30%;
}
/* 우편번호 설정*/
#user_zipcode {
	width: 63%;
}

#address_kakao {
	width: 33%;
	padding: .5em;
	font-size: 1em;
	background: #F7D25A;
	color: #fff;
	border: none;
	border-radius: 10px;
	cursor: pointer;
}
/* --------------------------------------------------------------------------------- */
input[type=radio] {
	margin-left: 1.5em;
}
label {
	font-weight: bold;
}
/* --------------------------------------------------------------------------------- */
#formSubmit {
	display: flex;
	justify-content: center;
	padding: .5em 5em;
	margin: 10% auto;
	font-size: 1.5em;
	background: #F7D25A;
	color: #fff;
	border:none;
	border-radius: 10px;
	cursor: pointer;
}
</style>

<script>
$(function(){
	$("#idCheck").click(function(){
		window.open("/user/idCheck?genie_id="+$("#genie_id").val(),"idCheck","width=400,height=300");
	});

	$("#genie_id").change(function(){
		$("#idCheckState").val("N");
	});
});
</script>
<section class="registration">
	<div class="wrapper">
		<h1>일반회원 회원가입</h1>
		<form method="post" action="/user/UserWrite" id="logFrm">
			<input type="hidden" value="1" name="member_type"/>
			<ul class="idForm">
				<li>아이디</li>
				<li>
					<input type="text" id="genie_id" name="genie_id" placeholder="아이디를 입력하세요">
					<input type="button" id="idCheck" value="아이디 중복검사" >
				</li>
				<input type ="hidden" id = "idCheckState" value = "N"/>
			</ul>
			<ul id="passwordForm">
				<li>비밀번호</li>
				<input type="password" id="genie_pwd" name="genie_pwd" value="123" placeholder="비밀번호를 입력하세요">
				<li>비밀번호 확인</li>
				<input type="password" id="genie_pwd2" name="genie_pwd2" value="123" placeholder="비밀번호를 입력하세요">
			</ul>
			<ul id="idForm">
				<li>이름</li>
				<input type="text" name="user_name" id="user_name" value="김유저" placeholder="이름을 입력하세요">
			</ul>
			<ul id="phoneForm">
				<li>휴대폰 번호</li>
				<select id = "user_phone_num1" name = "user_phone_num1" size = "1">
					<option value="">선택하세요</option>
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="018">018</option>
					<option value="019">019</option>
				</select>
				<input type ="text" name = "user_phone_num2" id ="user_phone_num2" value="1234" maxlength = "4"/>
				<input type ="text" name = "user_phone_num3" id ="user_phone_num3" value="1234" maxlength = "4"/>
			</ul>
			<ul id="emailForm">
				<li>이메일</li>
				<input type="email" id="user_email" name="user_email" value="ghdtpgh8913@naver.com" placeholder="이메일을 입력하세요">
			</ul>
			<ul id="addrForm">
				<li>우편번호</li>
				<li>
					<input type ="text" name = "user_zipcode" id ="user_zipcode" value="123" readonly/>
					<input type = "button" value = "우편번호찾기" id = "address_kakao"/>
				</li>
				<li>주소</li>
				<li><input type = "text" name = "user_addr" id ="user_addr" value="123" readonly/></li>
				<li>상세주소</li>
				<li><input type ="text" name = "user_detailaddr" id ="user_detailaddr" value="123" /></li>	
			</ul>
			<ul id="user_gender">
				<li>성별</li>
				<input type="radio" name="user_gender" value="1"><label for="radio_male">남성</label>
				<input type="radio" name="user_gender" value="0"><label for="radio_female">여성</label>
			</ul>
				<input type = "submit" id="formSubmit" value = "회원가입하기"/>
		</form>
		
	</div>	
</section>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="../js_css/KakaoAddress.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%-- <script src="../js_css/Registration.js"></script> --%>