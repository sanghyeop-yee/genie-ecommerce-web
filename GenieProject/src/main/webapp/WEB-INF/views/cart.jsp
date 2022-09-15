<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>

<style>
/* --------------------회색부분설정-------------------- */
.wrapper{
    background-color: #f5f5f7;
    width: 100%;
    height: 100vh;
    margin:0;
    padding: 3em 13em;
}
/* -------------------------------------그리드스타일 <hr>위에 부분------------------------------------- */
.cart{
    background-color: #fff;
    width: auto;
    height: 100%;
    margin: 0;
    box-shadow: 0 0 5px #b4b4b4;
    font-weight: bold;
    border-radius: 10px;
}
.cart h1{
    padding: 1em 1em 1.5em 1em;
    color: #1d1d1f;

}
.cart>h1>i{
    margin: 0 1em;
}
.line{
    width : 90%;
    height: .2vh;
    background-color: #6e6e73;
    margin: 0 5%;
}
.cart-product{
    display: grid;
    grid-template-columns: 12vw 25vw 12vw 8vw;
    padding: 1em;
    align-items: center;
    justify-content: center;
}
/* -----------------db연동 실제 데이터가 들어갈 곳------------------ */
.cart-list>ul{
    margin: 1em 5em;
    padding: 0;
    list-style-type: none;
}
.cart-list>ul>li{
    margin-bottom: 1em;
    float: left;
    padding: 1em;
    border-radius: 10px;
    width: 20%;
    box-shadow: 0 0 5px #b4b4b4;
}
.cart-list>ul>li:nth-child(4n+2){
    width: 40%;
}
/* --------------------------------구매하기버튼---------------------- */
#buy{
    margin-left: 65em;
    margin-top: 10em;
    background-color: #0071e3;
    color: #fff;
    padding: 1%;
    width: 10em;
    border: none;
    border-radius: 10px;
    cursor: pointer;
}
#buy:hover{
    background-color: #0077ed;
    color: #fff;
	transition: .4s;
}
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
        <div class="cart-list">
            <ul>
                <li>{vo.product_image1}</li>
                <li>{vo.product_name}</li>
                <li>{vo.product_quantity}</li>
                <li>{vo.product_price}</li>
            </ul>
        </div>
        <div class="cart-list">
            <ul>
                <li>{vo.product_image1}</li>
                <li>{vo.product_name}</li>
                <li>{vo.product_quantity}</li>
                <li>{vo.product_price}</li>
            </ul>
        </div>
        <div class="cart-list">
            <ul>
                <li>{vo.product_image1}</li>
                <li>{vo.product_name}</li>
                <li>{vo.product_quantity}</li>
                <li>{vo.product_price}</li>
            </ul>
        </div>
        <input type = "submit" id="buy" value = "구매하기"/>
    </div>
</div>