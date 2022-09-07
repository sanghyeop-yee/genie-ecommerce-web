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
.genie_04 h2{
	margin-bottom: 2em;
	color: #1a534e;
	width: 34ch;
	animation: typing 2s steps(34), blink .5s step-end infinite alternate;
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
	padding: .8em 1.5em;
	font-size: 1.7em;
	font-weight: bold;
	border-radius: 25px;
}
.button a:hover{
	background-color: #f3e7b1;
} 
</style>

<section class="home">
	<div class="genie_04">
		<h2>선물 받는 분의 나이대가 어떻게 되시나요?</h2>
	</div>
		<div class="gird-container">
			<div class="button">
				<a href="/genie/genie_05">10대</a>
			</div>
			<div class="button">
				<a href="/genie/genie_05">20-30대</a>
			</div>
			<div class="button">
				<a href="/genie/genie_05">30-40대</a>
			</div>
			<div class="button">
				<a href="/genie/genie_05">50대 이상</a>
			</div>
		</div>
	</div>
</section>
