<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<link rel="stylesheet" href="/js_css/cart_style.css" type="text/css"/>

<div class="wrapper">
    <div class="cart">
        <h1><i class="fa-solid fa-cart-plus"></i><a href="#">장바구니</a></h1>
        <div class="line"></div>
        <div class="cart-product">
            <div>상품이미지</div>
            <div>상품정보</div>
            <div>수량</div>
            <div>상품가격</div>
        </div>

        <div class="line"></div>

        <c:forEach var="cvo" items="${clist}">
            <div class="cart-list">
                <ul>
                    <li>${cvo.product_image1}</li>
                    <li>${cvo.product_name}</li>
                    <li>${cvo.product_quantity}</li>
                    <li><fmt:formatNumber value="${pvo.product_price}" pattern="#,###원" /></li>
                </ul>
            </div>
        </c:forEach>
        <input type = "submit" id="buy" value = "구매하기"/>
    </div>
</div>