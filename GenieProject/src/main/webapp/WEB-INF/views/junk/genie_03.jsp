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
	background: #f5f5f7;
	background-size: cover;
	background-position: center;
}
.grid-container{
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	gap: 2rem;
}
.genie_03 h2{
	margin-bottom: 2em;
	color: #1d1d1f;
	width: 32ch;
	animation: typing 2s steps(32), blink .5s step-end infinite alternate;
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
	display: flex;
	align-content: stretch;
	justify-content: center;
	background-color: #fff;
	color: #1d1d1f;
	margin: 1%;
	padding: .8em 1.8em;
	font-size: 1.7em;
	font-weight: bold;
	border-radius: 25px;
	transition: ease .5s;
	box-shadow: 0 0 1px #dfdfdf;
}
.button a:hover{
	background-color: #fff;
	transform: scale(1.05);
	box-shadow: 0 0 5px #b4b4b4;
}  
</style>

<section class="home">
	<div class="genie_03">
		<h2>선물 받는 분의 성별이 어떻게 되시나요?</h2>
	</div>
		<div class="grid-container">
			<div class="button">
				<a href="/genie/genie_04">남자</a>
			</div>
			<div class="button">
				<a href="/genie/genie_04">여자</a>
			</div>
			<div class="button">
				<a href="/genie/genie_04">남여공용</a>
			</div>
		</div>
	</div>
</section>
