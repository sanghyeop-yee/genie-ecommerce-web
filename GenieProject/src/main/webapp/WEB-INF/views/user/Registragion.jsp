<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ include file="../inc/top.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<style>
	section{
		padding: 80px 18%;
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
		height:65em;
		background-color:white;
		margin:0 auto;
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

    #user_zipcode{
        width:50%;
    }

    #address_kakao, #idCheck{
		width:35%;
		padding:10px;
		display:inline-block;
		font-size: 15px;
		background: #F7D25A;
		color: #fff;
		border:none;
		border-radius: 10px;
		transition: ease .40s;
		float:right;
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


</style>
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
			if($("#user_pwd").val()!=$("#user_pwd2").val()){
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			}

			if($("#user_name").val()==""){
				alert("이름을 입력하세요");
				$("#user_name").focus();
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
</head>
<body>
<section class="home">
	<div class="container">
		<h1>일반회원 회원가입</h1>
		<form method="post" action="/user/UserWrite" id="logFrm">
			<ul class="userForm">
				<div id="idForm">
					<p>아이디</p>
					<input type="button" value="아이디 중복검사" id="idCheck">
					<input type="text" id="user_id" name="user_id" placeholder="아이디를 입력하세요" readonly>
					<input type ="hidden" id = "idCheckState" value = "N"/>
				</div>
				<div id="passwordForm">
					<p>비밀번호</p>
					<input type="password" id="user_pwd" name="user_pwd" placeholder="비밀번호를 입력하세요">
					<p>비밀번호 확인</p>
					<input type="password" id="user_pwd2" name="user_pwd2" placeholder="비밀번호를 입력하세요">
				</div>
				<div id="name">
					<p>이름</p>
					<input type="text" id="user_name" name="user_name" placeholder="이름을 입력하세요">
				<div>
                <div id="phoneForm">
					<p>휴대폰 번호</p>
                    <select id = "user_phone_num1" name = "user_phone_num1" size = "1">
						<option value="">선택하세요</option>
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
			        <input type ="text" name = "user_phone_num2" id ="user_phone_num2" maxlength = "4"/>
		 	        <input type ="text" name = "user_phone_num3" id ="user_phone_num3" maxlength = "4"/>
				</div>
                <div id="emailForm">
					<p>이메일</p>
					<input type="email" id="user_email" name="user_email" placeholder="이메일을 입력하세요">
				</div>
                <div id="addrForm">
                    <p>우편번호</p>
                    	<input type ="text" name = "user_zipcode" id ="user_zipcode" readonly/>
                        <input type = "button" value = "우편번호찾기" id = "address_kakao"/><br/>
                    <p>주소</p>
                		<input type = "text" name = "user_addr" id ="user_addr" readonly/>
                    <p>상세주소</p>
                    	<input type ="text" name = "user_detailaddr" id ="user_detailaddr"/>	
				</div>
                <div id="user_gender">
					<p>성별</p>
					<input type="radio" name="radio_gender" id="male"><label for="radio_male">남성</label>
                    <input type="radio" name="radio_gender" id="female"><label for="radio_female">여성</label>
				</div>
				 <li><input type = "submit" id="formSubmit" value = "회원가입하기"/></li>
			</ul>
		</form>
		</div>	
	</section>
	</body>
</html>