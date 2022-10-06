<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<link rel="stylesheet" href="/js_css/cart_style.css" type="text/css"/>


<div class="wrapper">
    <div class="cart">
        <h1><i class="fa-solid fa-cart-plus"></i><a href="#">장바구니</li></a></h1>
        <div class="line"></div>
        <div class="cart-product">
            <div><input type="checkbox" id="allChk"/>전체선택</div>
            <div>상품이미지</div>
            <div>상품정보</div>
            <div>가격</div>
            <div>수량</div>
            <div>합계</div>
        </div>

        <div class="line"></div>
        <form type="post" action="/payment" id="multiChk">
            <c:forEach var="cvo" items="${clist}">
                <div class="cart-list">
                <input type="checkbox" id= "noList" name="noList" value="${cvo.cart_num}"/>
                    <div><img src='${cvo.product_image1}'></div>
                    <div>${cvo.product_name}</div>
                    <div class="product_price"><fmt:formatNumber value="${cvo.product_price}" pattern="#,###원"/></div>
                    <div class="cart_qty"><input type="text" size="2" maxlength="4" value="${cvo.cart_qty}" onkeyup="javascript:cart.changePNum(${cvo.cart_num});"/></div>
                    <div onclick="javascript:cart.changePNum(${cvo.cart_num});"><i class="fas fa-arrow-alt-circle-up up"></i></div>
                    <div onclick="javascript:cart.changePNum(${cvo.cart_num});"><i class="fas fa-arrow-alt-circle-down down"></i></div>
                    <div><input type="text" size="4" maxlength="4" value="${cvo.product_price*cvo.cart_qty}"/></div>
                    <div><input type="button" style="background:#b90e0a; border:none; padding: 10px; border-radius:8px; color: #fff;" value='Del' cart_num="${cvo.cart_num}"/></div>
                </div>
            </c:forEach>
            <input type="button" class="abutton" value= "선택상품삭제" onclick="javascript:cart.delCheckedItem();">
            <div id="total-price" name="total-price">총 상품가격 : 0</div>
        </form>
        
        <span class="submit-wrapper">
            <a href="http://localhost:9070/">계속 쇼핑하기</a>
            <input type="submit" id="buy" value="구매하기"/>
        </span>

        </form>
    </div>
</div>
<script>
    $(function(){
        //리스트 전체 선택
        $("#allChk").click(function(){
            $(".cart-list input[type=checkbox]").prop("checked",$("#allChk").prop("checked"));
           
        });
        
        $("#multiChk").click(function(){
            var countChk = 0;
            $(".cart-list input[name=noList]").each(function(idx,obj){
                if(obj.checked){ // input 태그가 체크 상태이면 true
                    countChk++;
                }
            });
            $("#listFrm").submit();
        });
    });
</script>
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
<script src="/js_css/cart_js.js"></script>