<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<link rel="stylesheet" href="/js_css/genie_style.css" type="text/css"/>
<script src="/js_css/genie_js.js"></script>

<section class="genie_01">
	<ul class="page_gradient">
		<li><input type="button" onclick="next1()" style="background-color: #21D4FD"></li>
		<li><input type="button" onclick="next2()"></li>
		<li><input type="button" onclick="next3()"></li>
		<li><input type="button" onclick="next4()"></li>
		<li><input type="button" onclick="next5()"></li>
	</ul>

	<div>
		<h2>어느 분에게 선물할 계획이신가요?</h2>
	</div>
	
	<form class="grid-container4">
		<div class="tag_name">
			<input type="radio" onclick="next2()" name="who" id="1" value="1">
			<label for="1">부모님</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next2()" name="who" id="2" value="2">
			<label for="2">배우자</label>
		</div>			
		<div class="tag_name">
			<input type="radio" onclick="next2()" name="who" id="3" value="3">
			<label for="3">연인</label>
		</div>			
		<div class="tag_name">
			<input type="radio" onclick="next2()" name="who" id="4" value="4">
			<label for="4">친척/가족</label>
		</div>			
		<div class="tag_name">
			<input type="radio" onclick="next2()" name="who" id="5" value="5">
			<label for="5">친구/지인</label>
		</div>			
		<div class="tag_name">
			<input type="radio" onclick="next2()" name="who" id="6" value="6">
			<label for="6">회사동료</label>
		</div>			
		<div class="tag_name">
			<input type="radio" onclick="next2()" name="who" id="7" value="7">
			<label for="7">스승/멘토</label>
		</div>
	</form>
	
	<ul class="page_order">
		<li><input type="button" onclick="next1()"></li>
		<li><input type="button" onclick="next2()"></li>
		<li><input type="button" onclick="next3()"></li>
		<li><input type="button" onclick="next4()"></li>
		<li><input type="button" onclick="next5()"></li>
	</ul>
</section>

<section class="genie_02">
	<ul class="page_gradient">
		<li><input type="button" onclick="next1()" style="background-color: #21D4FD"></li>
		<li><input type="button" onclick="next2()" style="background-color: #40D9FD"></li>
		<li><input type="button" onclick="next3()"></li>
		<li><input type="button" onclick="next4()"></li>
		<li><input type="button" onclick="next5()"></li>
	</ul>

	<div>
		<h2>어떤 특별한 날에 드릴 선물인가요?</h2>
	</div>

	<form class="grid-container4">
		<div class="tag_name">
			<input type="radio" onclick="next3()" name="when" id="8" value="8">
			<label for="8">생일</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next3()" name="when" id="9" value="9">
			<label for="9">기념일</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next3()" name="when" id="10" value="10">
			<label for="10">백일</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next3()" name="when" id="11" value="11">
			<label for="11">집들이</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next3()" name="when" id="12" value="12">
			<label for="12">서프라이즈</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next3()" name="when" id="13" value="13">
			<label for="13">응원</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next3()" name="when" id="14" value="14">
			<label for="14">감사</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next3()" name="when" id="15" value="15">
			<label for="15">결혼</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next3()" name="when" id="16" value="16">
			<label for="16">출산</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next3()" name="when" id="17" value="17">
			<label for="17">임신</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next3()" name="when" id="18" value="18">
			<label for="18">개업</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next3()" name="when" id="19" value="19">
			<label for="19">위로</label>
		</div>
	</form>

	<ul class="page_order">
		<li><input type="button" onclick="next1()"></li>
		<li><input type="button" onclick="next2()"></li>
		<li><input type="button" onclick="next3()"></li>
		<li><input type="button" onclick="next4()"></li>
		<li><input type="button" onclick="next5()"></li>
	</ul>
</section>

<section class="genie_03">
	<ul class="page_gradient">
		<li><input type="button" onclick="next1()" style="background-color: #21D4FD"></li>
		<li><input type="button" onclick="next2()" style="background-color: #40D9FD"></li>
		<li><input type="button" onclick="next3()" style="background-color: #64E0FD"></li>
		<li><input type="button" onclick="next4()"></li>
		<li><input type="button" onclick="next5()"></li>
	</ul>

	<div>
		<h2>선물 예산은 어느정도로 생각하고 계신가요?</h2>
	</div>

	<form class="grid-container3">
		<div class="tag_name">
			<input type="radio" onclick="next4()" name="how" id="20" value="20">
			<label for="20">10,000원 이하</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next4()" name="how" id="21" value="21">
			<label for="21">10,000원~30,000원</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next4()" name="how" id="22" value="22">
			<label for="22">30,000원~50,000원</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next4()" name="how" id="23" value="23">
			<label for="23">50,000원~100,000원</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next4()" name="how" id="24" value="24">
			<label for="24">100,000원~200,000원</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next4()" name="how" id="25" value="25">
			<label for="25">200,000원 이상</label>
		</div>
	</form>

	<ul class="page_order">
		<li><input type="button" onclick="next1()"></li>
		<li><input type="button" onclick="next2()"></li>
		<li><input type="button" onclick="next3()"></li>
		<li><input type="button" onclick="next4()"></li>
		<li><input type="button" onclick="next5()"></li>
	</ul>
</section>



<section class="genie_04">
	<ul class="page_gradient">
		<li><input type="button" onclick="next1()" style="background-color: #21D4FD"></li>
		<li><input type="button" onclick="next2()" style="background-color: #40D9FD"></li>
		<li><input type="button" onclick="next3()" style="background-color: #64E0FD"></li>
		<li><input type="button" onclick="next4()" style="background-color: #8CE7FC"></li>
		<li><input type="button" onclick="next5()" ></li>
	</ul>

	<div>
		<h2>선물 받는 분의 나이대가 어떻게 되시나요?</h2>
	</div>

	<form class="grid-container3">
		<div class="tag_name">
			<input type="radio" onclick="next5()" name="old" id="26" value="26">
			<label for="26">0~10살</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next5()" name="old" id="27" value="27">
			<label for="27">10~20살</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next5()" name="old" id="28" value="28">
			<label for="28">20~30살</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next5()" name="old" id="29" value="29">
			<label for="29">30~40살</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next5()" name="old" id="30" value="30">
			<label for="30">40~50살</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next5()" name="old" id="31" value="31">
			<label for="31">50세 이상</label>
		</div>
	</form>

	<ul class="page_order">
		<li><input type="button" onclick="next1()"></li>
		<li><input type="button" onclick="next2()"></li>
		<li><input type="button" onclick="next3()"></li>
		<li><input type="button" onclick="next4()"></li>
		<li><input type="button" onclick="next5()"></li>
	</ul>
</section>

<section class="genie_05">
	<ul class="page_gradient">
		<li><input type="button" onclick="next1()" style="background-color: #21D4FD"></li>
		<li><input type="button" onclick="next2()" style="background-color: #40D9FD"></li>
		<li><input type="button" onclick="next3()" style="background-color: #64E0FD"></li>
		<li><input type="button" onclick="next4()" style="background-color: #8CE7FC"></li>
		<li><input type="button" onclick="next5()" style="background-color: #B9F0FD"></li>
	</ul>

	<div>
		<h2>선물 받는 분의 성별이 어떻게 되시나요?</h2>
	</div>

	<form class="grid-container3">
		<div class="tag_name">
			<input type="radio" onclick="next6()" name="gender" id="32" value="32">
			<label for="32">남자</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next6()" name="gender" id="33" value="33">
			<label for="33">여자</label>
		</div>
		<div class="tag_name">
			<input type="radio" onclick="next6()" name="gender" id="34" value="34">
			<label for="34">남여공용</label>
		</div>
	</form>

	<ul class="page_order">
		<li><input type="button" onclick="next1()"></li>
		<li><input type="button" onclick="next2()"></li>
		<li><input type="button" onclick="next3()"></li>
		<li><input type="button" onclick="next4()"></li>
		<li><input type="button" onclick="next5()"></li>
	</ul>
</section>




