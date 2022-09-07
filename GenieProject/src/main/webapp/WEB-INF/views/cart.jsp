<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>

<style>
.wrapper{
    background-color: #f5fcfb;
    width: 100%;
    height: 100vh;
    margin:0;
    padding: 3em 13em;
}
.cart{
    background-color: #fff;
    width: auto;
    height: 100%;
    margin: 0;
    box-shadow: 0 0 15px #278178;
    font-weight: bold;
    border-radius: 10px;
}
.cart h1{
    padding: 1em 1em 1.5em 1em;
    color: #278178;

}
.cart>h1>i{
    margin: 0 1em;
}
.line{
    width : 90%;
    height: .2vh;
    background-color: #278178;
    margin: 0 5%;
}
.cart-product{
    display: grid;
    grid-template-columns: 10vw 38vw 6vw 5vw;
    padding: 1em;
    align-items: center;
    justify-content: center;
}
/* -------------------------------------그리드스타일------------------------------------- */
.cart-content>ul{
    margin: 2% 5%;
    padding: 0;
    list-style-type: none;
}
.cart-content>ul>li{
    background-color: #fff;
    padding: 3.2%;
    float: left;
    border : 1px solid #fff;
    border-radius: 5px;
    box-shadow: 0 0 1px #278178;
}
.cart-content>ul>li:nth-child(4n+2){
    width: 62%;
}
/* -----------------------------------리스트스타일----------------------------------------- */
.buy a{
    margin: 30% 1% 1% 80%;
    background-color: #96aee0;
    color: #2b4b91;
    padding: 1%;
    width: 10%;
    display: flex;
    justify-content: center;
    border-radius: 15px
}
.buy a:hover{
    background-color: #2b4b91;
    color: #dbe3f4;
	transition: .4s;
}
/* --------------------------------구매하기버튼---------------------- */

</style>

<div class="wrapper">
    <div class="cart">
        <h1><i class="fa-solid fa-cart-plus"></i><a href="#">장바구니</a></h1>
        <div class="line"></div>
        <div class="cart-product">
            <div>상품이미지</div>
            <div>상품정보(그리드스타일)</div>
            <div>수량</div>
            <div>상품가격</div>
        </div>
        <div class="line"></div>
        <div class="cart-content">
            <ul>
                <li>상품이미지</li>
                <li>상품정보(리스트 스타일)</li>
                <li>수량</li>
                <li>상품가격</li>
            </ul>
        </div>
        <div class="cart-content">
            <ul>
                <li>상품이미지</li>
                <li>상품정보(리스트 스타일)</li>
                <li>수량</li>
                <li>상품가격</li>
            </ul>
        </div>
        <div class="cart-content">
            <ul>
                <li>상품이미지</li>
                <li>상품정보(리스트 스타일)</li>
                <li>수량</li>
                <li>상품가격</li>
            </ul>
        </div>
        <div class="buy">
            <a href="/">구매하기</a>
        </div>
    </div>
</div>