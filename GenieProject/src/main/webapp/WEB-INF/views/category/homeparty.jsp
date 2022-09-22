<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jspf"%>
<link rel="stylesheet" href="/js_css/product_style.css" type="text/css"/>
<script src="/js_css/product_js.js"></script>

<section class="product ">
    <div class="bubbles">
        <h1>홈파티</h1>
    </div>

    <div class="grid-container">
        <div class="wrapper">
            <c:forEach var="pvo" items="${plist}">
            <article class="product-list">
                <a class="product-title" href="#"><i class="fa-solid fa-magnifying-glass"></i></a>
                <div class="item">
                    <a href="#">
                        <img src="${pvo.product_image1}">
                    </a>
                </div>
            </article>
                <ul>
                    <li>${pvo.genie_id}</li>
                    <li>${pvo.product_name}</li>
                    <li>${pvo.product_price}원</li>
                </ul>
            </c:forEach>
        </div>
    </div>
</section>

