<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<style>
 h1{
    display: flex;
    justify-content: center;
 }
 .box1{
    grid-area: box1;
 }
 .box2{
    grid-area: box2;
 }
 .box3{
    grid-area: box3;
 }
 .box4{
    grid-area: box4;
 }
 .box5{
    grid-area: box5;
 }
 .box6{
    grid-area: box6;
 }
 .box7{
    grid-area: box7;
 }
 .box8{
    grid-area: box8;
 }
 .box9{
    grid-area: box9;
 }
 .box10{
    grid-area: box10;
 }
 .box11{
    grid-area: box11;
 }
 .box12{
    grid-area: box12;
 }
 .box13{
    grid-area: box13;
 }
.box-wrapper{
    margin: 20vh 0;
    display: grid;
    width: 100%;
    height: auto;
    grid-template-columns: 20% 20% 20% 20% 20%;
    grid-template-rows: 10vh 10vh 10vh 10vh 10vh 10vh 10vh;
    grid-template-areas:
    "box1 box1 box1 box5 box5"
    "box1 box1 box1 box6 box6"
    "box1 box1 box1 box7 box7"
    "box1 box1 box1 box8 box8"
    "box1 box1 box1 box9 box9"
    "box2 box3 box4 box10 box10"
    "box2 box3 box4 box11 box11"
    "box2 box3 box4 box12 box13";
    align-content: center;
    justify-content: center;
    align-items: center;
}  
</style>

<section class="product_detail">
    <h1>상세페이지</h1>
    <div class="box-wrapper"> 
        <div class="box1">
            상품이미지
        </div>
        <div class="box2">
            이미지1
        </div>
        <div class="box3">
            이미지2
        </div>
        <div class="box4">
            이미지3
        </div>
        <div class="box5">
            상품제목
        </div>
        <div class="box6">
            상품가격
        </div>
        <div class="box7">
            상품카테고리
        </div>
        <div class="box8">
            상품설명
        </div>
        <div class="box9">
            회사이름
        </div>
        <div class="box10">
            셀러명
        </div>
        <div class="box11">
            셀러주소
        </div>
        <div class="box12">
            장바구니
        </div>
        <div class="box13">
            구매하기
        </div>
    </div>
</section>