<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<link rel="stylesheet" href="/js_css/genie_style.css" type="text/css"/>
<script src="/js_css/genie_js.js"></script>

<!-- <ul class="page_gradient">
	<li><input type="button" onclick="next1()" style="background-color: rgb(100,200,200)"></li>
	<li><input type="button" onclick="next2()"></li>
	<li><input type="button" onclick="next3()"></li>
	<li><input type="button" onclick="next4()"></li>
	<li><input type="button" onclick="next5()"></li>
</ul> -->

<form class="grid-container">
	<div class="genie">
		<section class="genie_01">
			<div>
				<h2>어느 분에게 선물할 계획이신가요?</h2>
			</div>
			<div class="grid-container4">
				<div class="tag_name">
					<input type="radio" onclick="next2()" name="who" id="1" value="부모님">
					<label for="1">부모님</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next2()" name="who" id="2" value="배우자">
					<label for="2">배우자</label>
				</div>			
				<div class="tag_name">
					<input type="radio" onclick="next2()" name="who" id="3" value="연인">
					<label for="3">연인</label>
				</div>			
				<div class="tag_name">
					<input type="radio" onclick="next2()" name="who" id="4" value="친척/가족">
					<label for="4">친척/가족</label>
				</div>			
				<div class="tag_name">
					<input type="radio" onclick="next2()" name="who" id="5" value="친구/지인">
					<label for="5">친구/지인</label>
				</div>			
				<div class="tag_name">
					<input type="radio" onclick="next2()" name="who" id="6" value="회사동료">
					<label for="6">회사동료</label>
				</div>			
				<div class="tag_name">
					<input type="radio" onclick="next2()" name="who" id="7" value="스승/멘토">
					<label for="7">스승/멘토</label>
				</div>
			</div>
		</section>

		<section class="genie_02">
			<div>
				<h2>어떤 특별한 날에 드릴 선물인가요?</h2>
			</div>
			<div class="grid-container3">
				<div class="tag_name">
					<input type="radio" onclick="next3()" name="when" id="8" value="생일">
					<label for="8">생일</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next3()" name="when" id="9" value="기념일">
					<label for="9">기념일</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next3()" name="when" id="10" value="백일">
					<label for="10">백일</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next3()" name="when" id="11" value="집들이">
					<label for="11">집들이</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next3()" name="when" id="12" value="서프라이즈">
					<label for="12">서프라이즈</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next3()" name="when" id="13" value="응원">
					<label for="13">응원</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next3()" name="when" id="14" value="감사">
					<label for="14">감사</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next3()" name="when" id="15" value="결혼">
					<label for="15">결혼</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next3()" name="when" id="16" value="출산">
					<label for="16">출산</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next3()" name="when" id="17" value="임신">
					<label for="17">임신</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next3()" name="when" id="18" value="개업">
					<label for="18">개업</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next3()" name="when" id="19" value="위로">
					<label for="19">위로</label>
				</div>
			</div>
		</section>

		<section class="genie_03">
			<div>
				<h2>선물 예산은 어느정도로 생각하고 계신가요?</h2>
			</div>
			<div class="grid-container3">
				<div class="tag_name">
					<input type="radio" onclick="next4()" name="how" id="20" value="만원 이하">
					<label for="20">만원 이하</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next4()" name="how" id="21" value="1만원대-2만원대">
					<label for="21">1만 원대-2만 원대</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next4()" name="how" id="22" value="3만원대-4만원대">
					<label for="22">3만 원대-4만 원대</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next4()" name="how" id="23" value="5만원대-9만원대">
					<label for="23">5만 원대-9만 원대</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next4()" name="how" id="24" value="10만원대">
					<label for="24">10만 원대</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next4()" name="how" id="25" value="20만원이상">
					<label for="25">20만 원 이상</label>
				</div>
			</div>
		</section>

		<section class="genie_04">
			<div>
				<h2>선물 받는 분의 나이대가 어떻게 되시나요?</h2>
			</div>
			<div class="grid-container3">
				<div class="tag_name">
					<input type="radio" onclick="next5()" name="old" id="26" value="10대 이하">
					<label for="26">10대 이하</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next5()" name="old" id="27" value="20대">
					<label for="27">20대</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next5()" name="old" id="28" value="30대">
					<label for="28">30대</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next5()" name="old" id="29" value="40대">
					<label for="29">40대</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next5()" name="old" id="30" value="50대">
					<label for="30">50대</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next5()" name="old" id="31" value="60대이상">
					<label for="31">60대이상</label>
				</div>
			</div>
		</section>

		<section class="genie_05">
			<div>
				<h2>선물 받는 분의 성별이 어떻게 되시나요?</h2>
			</div>
			<div class="grid-container3">
				<div class="tag_name">
					<input type="radio" onclick="product" name="gender" id="32" value="남자">
					<label for="32">남자</label>
				</div>
				<div class="tag_name">
					<input type="radio" onclick="next6()" name="gender" id="33" value="여자">
					<label for="33">여자</label>
				</div>
			</div>
		</section>
	</div>

	<ul class="page_order">
		<li><input type="button" onclick="next1()"></li>
		<li><input type="button" onclick="next2()"></li>
		<li><input type="button" onclick="next3()"></li>
		<li><input type="button" onclick="next4()"></li>
		<li><input type="button" onclick="next5()"></li>
    </ul>

</form>
