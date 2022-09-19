<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jspf"%>
<style>
.genie_ai {
	width: 100%;
	height: 100vh;
	margin: 0;
    padding: 6% 16%;

	/*background: url(/image/gift1.png);*/
	background: url(/image/gift1.png);
	background-size: cover;
	background-position: center;
}
.genie_01 h2{
	margin-bottom: 3rem;
	font-size: 2rem;
	color: #1d1d1f;
	width: 25ch;
	animation: typing 2s steps(25), blink .5s step-end infinite alternate;
	white-space: nowrap;
	overflow: hidden;
	border-right: .1rem solid;
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
/* --------------------------------라디오버튼 css------------------------ */
.grid-container{
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	gap: 1rem;
}
.tag_name{
	padding: 1rem;
}
.tag_name input[type=radio]{
    display: none;
}
.tag_name input[type=radio]+label{
	width: 30vw;
    cursor: pointer;
	padding: 1rem 1.8rem;
    text-align: center;
    font-size: 3ch;
    font-weight: bold;
	border-radius: 25px;
	transition: ease .5s;
	box-shadow: 0 0 100px #dfdfdf;
}
.tag_name input[type=radio]+label{
    background-color: #fff;
    color: #333;
}
.tag_name input[type=radio]:checked+label{
    background-color: #333;
    color: #fff;
}

</style>

<section class="genie_ai">
	<div class="genie_01">
		<h2>어느 분에게 선물할 계획이신가요?</h2>
	</div>
	<form class="grid-container">
			<div class="tag_name">
				<input type="radio" name="parent" id="1" value="1">
				<label for="1">부모님</label>
			</div>
			<div class="tag_name">
				<input type="radio" name="partner" id="2" value="2">
				<label for="2">배우자</label>
			</div>			
			<div class="tag_name">
				<input type="radio" name="couple" id="3" value="3">
				<label for="3">연인</label>
			</div>			
			<div class="tag_name">
				<input type="radio" name="kin" id="4" value="4">
				<label for="4">친척/가족</label>
			</div>			
			<div class="tag_name">
				<input type="radio" name="friend" id="5" value="5">
				<label for="5">친구/지인</label>
			</div>			
			<div class="tag_name">
				<input type="radio" name="colleague" id="6" value="6">
				<label for="6">회사동료</label>
			</div>			
			<div class="tag_name">
				<input type="radio" name="mentor" id="7" value="7">
				<label for="7">스승/멘토</label>
			</div>
		</form>
	</div>
</section>
