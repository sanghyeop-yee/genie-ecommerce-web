<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jspf"%>
<link rel="stylesheet" href="/js_css/product_style.css" type="text/css"/>
<script src="/js_css/product_js.js"></script>
<style>

</style>
<script>
</script>

<section class="product">
	<div id="title">
		<div class="bubbles">
				<h1 id="mbti"></h1>
		</div>
	</div>
	
	<div class="grid-container">
        <c:forEach var="pvo" items="${plist}">
        <div class="wrapper">
            <div class="product-list">
                <a class="product-title" href="/product_detail"><i class="fa-solid fa-magnifying-glass"></i></a>
                <div class="item">
                    <img src="${pvo.product_image1}">
                </div>
            </div>
            <ul>
                <li>${pvo.company_name}</li>
                <li>${pvo.product_name}</li>
                <li><fmt:formatNumber value="${pvo.product_price}" pattern="#,###원"/></li>
            </ul>
        </div>
        </c:forEach>
    </div>
</section>
<script>
	let query = window.location.href;
	console.log(query);
	let mbti = query.substring(27);
	console.log(mbti);
	
	var element = document.getElementById("mbti");
	
	if(mbti=='E'){
		element.innerText="사교적이고 활동적인 성향의 E를 위한 선물";
	}else if(mbti=='I'){
		element.innerText="신중하고 정적인 성향의 I를 위한 선물";
	}else if(mbti=='S'){
		element.innerText="현실적이고 실용적인 성향의 S를 위한 선물";
	}else if(mbti=='N'){
		element.innerText="이상적이고 관념적인 성향의 N을 위한 선물";
	}else if(mbti=='T'){
		element.innerText="분석적이고 논리적인 성향의 T를 위한 선물";
	}else if(mbti=='F'){
		element.innerText="공감적이고 상황적인 성향의 F를 위한 선물";
	}else if(mbti=='J'){
		element.innerText="계획적이고 체계적인 성향의 J를 위한 선물";
	}else{
		element.innerText="융통적이고 즉흥적인 성향의 P를 위한 선물";
	}
</script>