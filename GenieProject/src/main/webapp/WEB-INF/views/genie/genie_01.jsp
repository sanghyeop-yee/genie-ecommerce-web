<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jspf"%>
<style>
.home {
	position: relative;
	width: 100%;
	height: 100vh;
	margin: 0;
    padding:6% 23%;

	/*background: url(../img/background.jpg);*/
	background: #d3f1ee;
	background-size: cover;
	background-position: center;
}
.grid-container{
	display: grid;
	grid-template-columns: repeat(4, 1fr);
}
.genie_01 h2{
	margin-bottom: 2em;
	color: #1a534e;
	width: 28ch;
	animation: typing 2s steps(28), blink .5s step-end infinite alternate;
  	white-space: nowrap;
	overflow: hidden;
	border-right: .09em solid;
}
@keyframes typing {
  from {
    width: 0
  }
}
@keyframes blink {
  50% {
    border-color: transparent
  }
}
.button a{
	float: left;
	background-color: #fff;
	color: #1a534e;
	margin: 1%;
	padding: .8em 2em;
	font-size: 1.7em;
	font-weight: bold;
	border-radius: 25px;
}
.button a:hover{
	background-color: #f3e7b1;
} 
</style>

<section class="home">
	<div class="genie_01">
		<h2>어느 분에게 선물할 계획이신가요?</h2>
	</div>
		<div class="gird-container">
			<div class="button">
				<a href="/genie/genie_02">부모님</a>
			</div>
			<div class="button">
				<a href="/genie/genie_02">배우자</a>
			</div>
			<div class="button">
				<a href="/genie/genie_02">연인</a>
			</div>
			<div class="button">
				<a href="/genie/genie_02">친구</a>
			</div>
			<div class="button">
				<a href="/genie/genie_02">동료</a>
			</div>
			<div class="button">
				<a href="/genie/genie_02">친척</a>
			</div>
			<div class="button">
				<a href="/genie/genie_02">스승</a>
			</div>
			<div class="button">
				<a href="/genie/genie_02">가족</a>
			</div>
		</div>
	</div>
</section>
