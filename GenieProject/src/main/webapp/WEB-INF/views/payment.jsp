<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<link rel="stylesheet" href="/js_css/cart_style.css" type="text/css"/>

<div class="wrapper">
    <h1>구매자정보</h1>
    <div class="cart">
        <div>이름</div>
        <div>이메일</div>
        <div>휴대폰 번호</div>

        <h1><i class="fa-solid fa-cart-plus"></i>받는 사람 정보</li></h1>
        <div class="line"></div>

        <div class="cart-product">
           <div>이름</div>
            <div>배송주소</div>
            <div>연락처</div>
            <div>배송 요청사항</div>
        </div>

        <div class="line"></div>
        <form type="post" action="/paymentOk">
        <c:forEach var="cvo" items="${clist}">
            <div class="cart-list">
                <div><img src='${cvo.product_image1}'></div>
                <div>${cvo.product_name}</div>
                <div><fmt:formatNumber value="${cvo.cart_qty}" pattern="#,###개" /></div>
                <div><fmt:formatNumber value="${cvo.product_price*cvo.cart_qty}" pattern="#,###원" /></div>
                <div><input type="hidden" value="${cvo.cart_num}"></div>
            </div>
        </c:forEach>

        <c:set var = "total" value = "0" />
            <c:forEach var="cvo" items="${clist}" varStatus="status">
            <c:set var= "total" value="${total + cvo.product_price*cvo.cart_qty}"/>
        </c:forEach>
        
        <div class="payment">
        <h1>결제정보</h1>
        <div>총 상품가격</div>
        <div>총 결제금액</div>
        <div>결제방법
        
        
        
        </div>



        </div>
        
        <div class="total-price">총 상품가격 : <fmt:formatNumber value="${total}" pattern="#,###원" /></div>
            <input type="submit" id="buy" value="구매하기"/>
        </form>
    </div>
</div>
