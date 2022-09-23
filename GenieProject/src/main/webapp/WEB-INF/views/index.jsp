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
         <span><a href="/product?product_category=생일"><img src="https://url.kr/se94dy"><br>생일</a></span>
         <span><a href="/product?product_category=기념일"><img src="https://url.kr/2hgow3"><br>기념일</a></span>
         <span><a href="/product?product_category=명절"><img src="https://url.kr/6g4pda">명절</a></span>
         <span><a href="/product?product_category=집들이"><img src="https://url.kr/2g7qkc"><br>집들이</a></span>
         <span><a href="/product?product_category=서프라이즈"><img src="https://url.kr/a6ec3n"><br>서프라이즈</a></span>
         <span><a href="/product?product_category=응원"><img src="https://url.kr/yc92uk"><br>응원</a></span>
         <span><a href="/product?product_category=캠핑"><img src="https://url.kr/54t3sv"><br>캠핑</a></span>
         <span><a href="/product?product_category=반려동물"><img src="https://url.kr/gvwdne"><br>반려동물</a></span>
         <span><a href="/product?product_category=운동"><img src="https://url.kr/mnhsv1"><br>운동</a></span>
         <span><a href="/product?product_category=키덜트"><img src="https://url.kr/j2te9d"><br>키덜트</a></span>
         <span><a href="/product?product_category=요리"><img src="https://url.kr/6p5217"><br>요리</a></span>
         <span><a href="/product?product_category=홈파티"><img src="https://url.kr/a4851u"><br>홈파티</a></span>
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