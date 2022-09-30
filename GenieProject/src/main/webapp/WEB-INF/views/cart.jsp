<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<link rel="stylesheet" href="/js_css/cart_style.css" type="text/css"/>

<div class="wrapper">
    <div class="cart">
        <h1><i class="fa-solid fa-cart-plus"></i><a href="#">장바구니</li></a></h1>
        <div class="line"></div>
        <div class="cart-product">
            <div>상품이미지</div>
            <div>상품정보</div>
            <div>수량</div>
            <div>상품가격</div>
        </div>

        <div class="line"></div>
        <form type="post" action="/payment">
        <c:forEach var="cvo" items="${clist}">
            <div class="cart-list">
                <div><img src='${cvo.product_image1}'></div>
                <div>${cvo.product_name}</div>
                <div><fmt:formatNumber value="${cvo.cart_qty}" pattern="#,###개" /></div>
                <div><fmt:formatNumber value="${cvo.product_price*cvo.cart_qty}" pattern="#,###원" /></div>
                <div><input type="button" value='Del' cart_num="${cvo.cart_num}"/></div>
                <div><input type="hidden" value="${cvo.cart_num}"></div>
            </div>
        </c:forEach>

        <c:set var = "total" value = "0" />
            <c:forEach var="cvo" items="${clist}" varStatus="status">
            <c:set var= "total" value="${total+cvo.product_price*cvo.cart_qty}"/>
        </c:forEach>
        <div class="total-price">총 상품가격 : <fmt:formatNumber value="${total}" pattern="#,###원" /></div>
        
        <span class="submit-wrapper">
            <a href="http://localhost:9070/">계속 쇼핑하기</a>
            <input type="submit" id="buy" value="구매하기"/>
        </span>

        </form>
    </div>
</div>

<script>
	$(document).on('click','.cart-list input[value=Del]',function(){

		var params = {cart_num: $(this).attr('cart_num')};
		    $.ajax({
				url:"/delProduct",
				data:params,
				success:function(result){
                    alert("제품이 삭제되었습니다.");
					location.reload();
				},error:function(e){
					console.log(e.responseText);
				}
			});	
	    });
</script>