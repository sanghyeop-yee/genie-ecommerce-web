<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<link rel="stylesheet" href="/js_css/index_style.css" type="text/css"/>

<!--Genie 메인화면--->
<section class="index">
	<div class="index-list">		
		<a href="/genie/genie_01"><img src="/image/banner_western_simple.png"></a>
	</div>

	<div class="category">
		<h1>카테고리</h1>
		<div class="category-list">
			<span><a href="#"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20220223091003_007dc2b6f60645a8bc2682e97914b829.jpg"></a><br>생일</span>
			<span><a href="#"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20201230162217_a70c12a712654a93abff864fa4b8c4c8.jpg"></a><br>기념일</span>
			<span><a href="#"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20210914165131_70edddb11adf42b9990c00dbc256e159.jpg"></a><br>명절</span>
			<span><a href="#"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20220719152430_cebe5a5c6ffe441d915d86fb9252cd3c.jpg"></a><br>집들이</span>
			<span><a href="#"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20220824221511_46cfa4fe71924de994089f8e72fa3f0b.jpeg"></a><br>서프라이즈</span>
			<span><a href="#"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20211005162429_5cbf39fcbe2d46808d8062529a6dce0c.jpg"></a><br>응원</span>
			<span><a href="#"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20210204142320_8234442ad995426b9d435a6c517b03f6.jpg"></a><br>캠핑</span>
			<span><a href="#"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20220811095044_2727e0aefe8041bc80816bb2608ba7d1.jpg"></a><br>반려동물</span>
			<span><a href="#"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20211118135132_e0dcbca05541406bb068af2ae1060846.jpg"></a><br>운동</span>
			<span><a href="#"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20211120143602_cdfc50813bb04f8fb564baedc545944b.jpg"></a><br>키덜트</span>
			<span><a href="#"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20200306123008_899deea4eb61446592892a873765dc55"></a><br>요리</span>
			<span><a href="#"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20211209174807_32d9b22304584f5e9323e8978631440e.jpg"></a><br>홈파티</span>
		</div>
	</div>
	
	<div class="ranking-list">
		<h1>고민될 땐 선물랭킹!<h1>
		<div>
			<a href="#"><img src="/image/gender_female_long.png"></a>
			<a href="#"><img src="/image/gender_all_long.png"></a>
			<a href="#"><img src="/image/gender_male_long.png"></a>
		</div>
	<div>
	<div class="brand-title">
		<h1>인기 브랜드<span>금주의 브랜드(광고)</span></h1>
	</div>
	<div class="brand">
		<div class="starbucks">
			<a href="#"><img src="/image/starbucks_western_simple.png"></a>
		</div>
		<div class="brand1">
				<a href="#">
					<img src="https://img1.kakaocdn.net/thumb/C300x300.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20220826162903_c3b3a0343ba041ae8b0e51324b4d9406.jpg">
					<img src="https://img1.kakaocdn.net/thumb/C300x300.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20220818140832_b4e44c89232b4db1844caf8414c47412.jpg">
				</a>
		</div>
		<div class="brand2">
				<a href="#">제품이름{vo.product_name}</a><br><br>
				<a href="#">제품가격{vo.product_price}</a><br><br><hr><br>
				<a href="#">제품이름{vo.product_name}</a><br><br>
				<a href="#">제품가격{vo.product_price}</a>
		</div>
	</div>
</section>