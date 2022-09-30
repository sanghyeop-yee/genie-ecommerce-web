<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<link rel="stylesheet" href="/js_css/product_style.css" type="text/css"/>
<script src="/js_css/product_js.js"></script>
<style>
#product_order_list{
	text-align:right;
	margin:3vh 1vw;
}
#product_order_list button{
	border:none;
	background-color:none;
	font-size:1.1em;
}
</style>
<section class="product ">
    <div class="bubbles">
        <h1>${pvo.product_category}${pvo.product_tag}</h1>
    </div>
	
	<div id="product_order_list">
		<p>
		<button type="button" onclick="location.href='/product/${pvo.product_category}/pricelist'">가격낮은순</button>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp
		<button type="button" onclick="location.href='/product/${pvo.product_category}/pricelistdesc'">가격높은순</button>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp
		<button type="button" onclick="location.href='/product/${pvo.product_category}/recentlist'">최신순</button>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp
		<button type="button" onclick="location.href='/product/${pvo.product_category}/likelist'">인기순</button> </p>
	</div>
	
    <div class="grid-container">
        <c:forEach var="pvo" items="${plist}">
        <div class="wrapper">
            <div class="product-list">
                <a class="product-title" href="/product_detail?product_id=${pvo.product_id}"><i class="fa-solid fa-magnifying-glass"></i></a>
                <div class="item">
                    <img src="${pvo.product_image1}">
                </div>
            </div>
            <ul>
                <li>${pvo.genie_id}</li>
                <li>${pvo.product_name}</li>
                <li><fmt:formatNumber value="${pvo.product_price}" pattern="#,###원"/></li>
            </ul>
        </div>
        </c:forEach>
    </div>
</section>
