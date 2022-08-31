<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>

section{
	padding: 80px 18%;
}
.home{
	position: relative;
	width: 100%;
	height: 100vh;
	/*background: url(../img/background.jpg);*/
	background: linear-gradient(to top, #56D8FF, #48FFD5);
	background-size: cover;
	background-position: center;
	display: grid;
	grid-template-columns: repeat(1, 1fr);
	align-items: center;
}
.home-text h1{
	font-size: 40px;
	line-height: 1.2;
	color: white;
	font-family: 'Paytone One', sans-serif;
	letter-spacing: 4px;
	margin-bottom: 20px;
}
.home-text p{
	color: #ffffffbf;
	font-size: 20px;
	font-weight: 400;
	line-height: 38px;
	margin-bottom: 50px;
}
.home-btn{
	display: inline-block;
	font-size: 16px;
	padding: 15px 30px;
	background: #ffffffbf;
	color: var(--main-color);
	border-radius: 4px;
	transition: ease .40s;
}
.home-btn:hover{w
	background: var(--bg-color);
	transform: scale(1.1);
}

</style>

	<!--Genie 메인화면--->
	<section class="home" id="home">
		<div class="home-text">
			<h1>NOW IS THE PRESENT 2022</h1>
			<p>어떤 선물을 찾고 있나요?<br> Genie가 여러분과 함께 찾아드리겠습니다.</p>
			<a href="#" class="home-btn">Genie로 찾기</a>
		</div>
	</section>