<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<link rel="stylesheet" href="/js_css/index_style.css" type="text/css"/>

<!--Genie 메인화면--->
<section class="index">
   <div class="index-list">      
      <a href="/genie"><img src="/image/banner_western_simple.png"></a>
   </div>

   <div class="category">
      <h1>카테고리</h1>
      <div class="category-list">
         <span><a href="/product?product_category=생일"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20220223091003_007dc2b6f60645a8bc2682e97914b829.jpg"></a><br>생일</span>
         <span><a href="/product?product_category=기념일"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20201230162217_a70c12a712654a93abff864fa4b8c4c8.jpg"></a><br>기념일</span>
         <span><a href="/product?product_category=명절"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20210914165131_70edddb11adf42b9990c00dbc256e159.jpg"></a><br>명절</span>
         <span><a href="/product?product_category=집들이"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20220719152430_cebe5a5c6ffe441d915d86fb9252cd3c.jpg"></a><br>집들이</span>
         <span><a href="/product?product_category=서프라이즈"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20220824221511_46cfa4fe71924de994089f8e72fa3f0b.jpeg"></a><br>서프라이즈</span>
         <span><a href="/product?product_category=응원"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20211005162429_5cbf39fcbe2d46808d8062529a6dce0c.jpg"></a><br>응원</span>
         <span><a href="/product?product_category=캠핑"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20210204142320_8234442ad995426b9d435a6c517b03f6.jpg"></a><br>캠핑</span>
         <span><a href="/product?product_category=반려동물"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20220811095044_2727e0aefe8041bc80816bb2608ba7d1.jpg"></a><br>반려동물</span>
         <span><a href="/product?product_category=운동"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20211118135132_e0dcbca05541406bb068af2ae1060846.jpg"></a><br>운동</span>
         <span><a href="/product?product_category=키덜트"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20211120143602_cdfc50813bb04f8fb564baedc545944b.jpg"></a><br>키덜트</span>
         <span><a href="/product?product_category=요리"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20200306123008_899deea4eb61446592892a873765dc55"></a><br>요리</span>
         <span><a href="/product?product_category=홈파티"><img src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20211209174807_32d9b22304584f5e9323e8978631440e.jpg"></a><br>홈파티</span>
      </div>
   </div>
   
   <div class="ranking-list">
      <h1>고민될 땐 선물랭킹!<h1>
      <div>
         <a href="/product?product_tag=여자"><img src="/image/gender_female_long.png"></a>
         <a href="/product?product_tag=남여공용"><img src="/image/gender_all_long.png"></a>
         <a href="/product?product_tag=남자"><img src="/image/gender_male_long.png"></a>
      </div>
   <div>

   <div class="best-tag">
      <h1># 모두의 인기 태그</h1>
      <div class="tag-button">
         <button onclick="location.href='/product?product_tag=연인'">#연인</button>
         <button onclick="location.href='/product?product_tag=생일'">#생일</button>
         <button onclick="location.href='/product?product_tag=20대'">#20대</button>
         <button onclick="location.href='/product?product_tag=여성'">#여성</button>
         <button onclick="location.href='/product?product_tag=부모님'">#부모님</button>
         <button onclick="location.href='/product?product_tag=회사동료'">#회사동료</button>
         <button onclick="location.href='/product?product_tag=결혼'">#결혼</button>
         <button onclick="location.href='/mbti/mbtiMain'">#mbti</button>
      </div>
   </div>

   <div class="recommend">
      <div class="box1">금주의 추천상품</div>
      <a href="/product" class="box2"></a>
      <a href="/product" class="box3"></a>
      <a href="/product" class="box4"></a>
      <div class="box5" style="font-size: 2rem;"><a href="/">브랜드1 상품명</a></div>
      <div class="box6" style="font-size: 1.5rem;"><a href="/">브랜드1 가격</a></div>
      <div class="box7" style="font-size: 2rem;"><a href="/">브랜드2 상품명</a></div>
      <div class="box8" style="font-size: 1.5rem;"><a href="/">브랜드2 가격</a></div>
   </div>
</section>