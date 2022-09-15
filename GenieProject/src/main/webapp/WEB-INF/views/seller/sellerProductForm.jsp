<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

body {
  line-height: 1.5;
  min-height: 100vh;
  font-family: "Be Vietnam Pro", sans-serif;
  background: #f2f2f2;
}


.responsive-wrapper {
  width: 90%;
  max-width: 1280px;
  margin-left: auto;
  margin-right: auto;
}

.content {
  margin-top: 2rem;
  display: flex;
  align-items: flex-start;
}

.content-panel {
  display: none;
  max-width: 280px;
  width: 25%;
  padding: 2rem 1rem 2rem 1rem;
  margin-right: 3rem;
}

@media (min-width: 800px) {
  .content-panel {
    display: block;
  }
}

.vertical-tabs {
  display: flex;
  align-items: center;
  flex-direction: column;
  background-color: white;
  border-radius: 8px;
  height: 900px;
  width:280px; /*임시로 추가 !!!*/
}
.vertical-tabs a {
  
  align-items: center;
  padding: 0.3em 1em;
  background-color: transparent;
  border-radius: 3px;
  text-decoration: none;
  font-weight: 500;
  color: #3e3e3e;
  transition: 0.15s ease;
}
.fa-ul {
	margin-left: 0px;
}

.vertical-tabs div {
	margin-bottom: 30px;
}

.vertical-tabs div span {
  width: 200px;
  height: 200px;
  border-radius: 8px;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  padding: 20px;
}
.vertical-tabs div span img {
  max-height: 100%;
}
.vertical-tabs div h3 {
  
  align-items: center;
  text-align: center;
  font-weight: 500;
}

.content-main-top {
    background: white;
    width: 100%;
    height: 900px;
    margin-bottom: 30px;
    border-radius: 8px;
}

.content-main-top p{
  margin-top: 0;
  margin-bottom: .5rem;
  font-weight: 500;
  line-height: 1.2;
  padding: 1rem;
}

.content-main {
  padding-top: 2rem;
  padding-bottom: 6rem;
  flex-grow: 1;
}

/*---------------------------------*/
.container{
		padding:30px;
		width:100%;
		/*height:1000px;*/
		background-color:white;
		/*margin:0 auto;*/
		font-size:23px;
		box-sizing: border-box;
		border-radius:15px;
		/*-webkit-border-radius: 10px 10px 10px 10px;
		-webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
    	box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);*/
	    overflow:auto;
	}
	ul,li{
		/*margin:0;
		padding:0;*/
		list-style-type:none;
	}
	.container>p{
		font-size:27px;
		margin-top:20px;
		margin-bottom:20px;
		margin-left: 25px;
		padding:10px;
		font-weight:bold;
	}
	.proFrm{
		/*width: 400px;
	    height: 1000px;*/
	    margin: 30px auto;
	    margin-top: 0;
	    margin-left:20px;
	    padding: 20px;
	    padding-bottom: 30px;
	}
	.proFrm p{
		padding:10px;
		padding-left:0;
		font-weight:bold;
	}
	input[type=text]{
		width:60%;
		height:50px;
		background-color: #fff;
    	border: none;
    	color: #0d0d0d;
		border-radius:15px;
		font-size:20px;
		padding:20px;
		margin:5px;
		border: 2px solid #808080;
    	border-radius: 10px 10px 10px 10px;
	}
	textarea{
		width:60%;
		background-color: #fff;
    	border: none;
    	color: #0d0d0d;
		border-radius:15px;
		font-size:20px;
		padding:20px;
		margin:5px;
		border: 2px solid #808080;
    	border-radius: 10px 10px 10px 10px;
	}
	#nameDiv>p, #priceDiv>p, #infoDiv p, #countDiv>p{
		/*float:left;*/
		margin:10px;
		margin-left:0;
		display: inline-block;
	}
	#nameDiv input, #priceDiv input, #infoDiv textarea, #countDiv input{
		width:65%;
		padding:10px;
		display:inline-block;
		transition: ease .40s;
		float:right;
		margin:10px;
		margin-right:15px;
	}
	#infoDiv{
		overflow:auto;
	}
	input[type=checkbox] {
		zoom: 1.5;
	}
	label{
		display: inline-block;
    	width: 140px;
    	line-height: 50px;
    	font-size:20px;
	}
	.subTag{
		font-size:20px;
		margin:0
	}
	#formSubmit{
		padding:10px 100px 10px 100px;
		display:block;
		margin:50px auto;
		font-size: 23px;
		background: #7eabf2;
		color: #fff;
		border:none;
		border-radius: 10px;
		transition: ease .40s;
	}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function(){
		//유효성 검사
		$("#productFrm").submit(function(){
			//상품명
			if($("#product_name").val()==""){
				alert("상품명을 입력하세요.");
				return false;
			}
			//금액
			if($("#product_price").val()==""){
				alert("판매금액을 입력하세요.");
				return false;
			}
			//상품설명
			if($("#product_info").val()==""){
				alert("상품설명을 입력하세요.");
				return false;
			}
			//상품수량
			if($("#product_stock").val()==""){
				alert("상품수량을 입력하세요.");
				return false;
			}
			//이미지1
			if($("#product_image1").val()==""){
				alert("상품이미지(1)를 첨부하세요.");
				return false;
			}
			//이미지2
			if($("#product_image2").val()==""){
				alert("상품이미지(2)를 첨부하세요.");
				return false;
			}
			//이미지3
			if($("#product_image3").val()==""){
				alert("상품이미지(3)를 첨부하세요.");
				return false;
			}
			//카테고리
			
			//태그
			
			
			return true;
		});
	});
</script>

<main class="main">

	<div class="responsive-wrapper">

		<div class="content">
			<div class="content-panel">
				<div class="vertical-tabs">
					<div>
						<span><img src="../images/seller/profile-1.png" /></span>
						<h3>업체이름</h3>
					</div>
					<a href="/seller/productForm"><ul class="fa-ul"><li><i class="fa fa-plus-circle" aria-hidden="true"></i> 상품등록</li></ul></a>
					<a href="/seller/sellerProduct"><ul class="fa-ul"><li><i class="fa fa-gift" aria-hidden="true"></i> 상품관리</li></ul></a>
					<a href="/seller/sellerOrder"><ul class="fa-ul"><li><i class="fa fa-shopping-cart" aria-hidden="true"></i> 주문관리</li></ul></a>
					<a href="/seller/sellerSales"><ul class="fa-ul"><li><i class="fa fa-area-chart" aria-hidden="true"></i> 매출관리</li></ul></a>
					<a href="#"><ul class="fa-ul"><li><i class="fa fa-question-circle" aria-hidden="true"></i> 문의관리</li></ul></a>				
				</div>
			</div>
			<div class="content-main">
				<div class="container">
					<p>상품등록</p>
					<form method="post" action="/seller/productWrite" id="productFrm">
						<ul class="proFrm">
							<div id="nameDiv">
								<p>상품명</p>
								<input type="text" id="product_name" name="product_name" placeholder="상품명을 입력하세요"/>
							</div>
							<div id="priceDiv">
								<p>판매금액</p>
								<input type="text" id="product_price" name="product_price" placeholder="판매금액을 입력하세요"/>
							</div>
							<div id="infoDiv">
								<p>상품설명</p>
								<textarea rows="4" id="product_info" name="product_info"></textarea>
							</div>
							<div id="countDiv">
								<p>상품수량</p>
								<input type="text" id="product_stock" name="product_stock" placeholder="상품수량을 입력하세요"/>
							</div>
							<div>
								<p>상품이미지</p>
								<input type="file" name="product_image1" id="product_image1"/>
								<input type="file" name="product_image2" id="product_image2"/>
								<input type="file" name="product_image3" id="product_image3"/>
							</div>
							<div>
								<p>카테고리</p>
								<label><input type="checkbox" name="product_category" value="1"/>생일</label>
								<label><input type="checkbox" name="product_category" value="2"/>기념일</label>
								<label><input type="checkbox" name="product_category" value="3"/>명절</label>
								<label><input type="checkbox" name="product_category" value="4"/>집들이</label>
								<label><input type="checkbox" name="product_category" value="5"/>서프라이즈</label>
								<label><input type="checkbox" name="product_category" value="6"/>응원</label>
								<label><input type="checkbox" name="product_category" value="7"/>감사</label>
								<label><input type="checkbox" name="product_category" value="8"/>결혼</label>
								<label><input type="checkbox" name="product_category" value="9"/>출산</label>
								<label><input type="checkbox" name="product_category" value="10"/>임신</label>
								<label><input type="checkbox" name="product_category" value="11"/>개업</label>
								<label><input type="checkbox" name="product_category" value="12"/>위로</label>
							</div>
							<div>
								<p>태그</p>
								<p class="subTag">대상</p>
								<label><input type="checkbox" name="product_tag" value="1"/>부모님</label>
								<label><input type="checkbox" name="product_tag" value="2"/>배우자</label>
								<label><input type="checkbox" name="product_tag" value="3"/>연인</label>
								<label><input type="checkbox" name="product_tag" value="4"/>가족/친척</label>
								<label><input type="checkbox" name="product_tag" value="5"/>친구/지인</label>
								<label><input type="checkbox" name="product_tag" value="6"/>스승/멘토</label>
								<label><input type="checkbox" name="product_tag" value="7"/>회사</label>
								<p class="subTag">특정기념일</p>
								<label><input type="checkbox" name="product_tag" value="8"/>생일</label>
								<label><input type="checkbox" name="product_tag" value="9"/>기념일</label>
								<label><input type="checkbox" name="product_tag" value="10"/>백일</label>
								<label><input type="checkbox" name="product_tag" value="11"/>집들이</label>
								<label><input type="checkbox" name="product_tag" value="12"/>서프라이즈</label>
								<label><input type="checkbox" name="product_tag" value="13"/>응원</label>
								<label><input type="checkbox" name="product_tag" value="14"/>감사</label>
								<label><input type="checkbox" name="product_tag" value="15"/>결혼</label>
								<label><input type="checkbox" name="product_tag" value="16"/>출산</label>
								<label><input type="checkbox" name="product_tag" value="17"/>임신</label>
								<label><input type="checkbox" name="product_tag" value="18"/>개업</label>
								<label><input type="checkbox" name="product_tag" value="19"/>위로</label>
								<p class="subTag">나이</p>
								<label><input type="checkbox" name="product_tag" value="20"/>0-10대</label>
								<label><input type="checkbox" name="product_tag" value="21"/>10-20대</label>
								<label><input type="checkbox" name="product_tag" value="22"/>20-30대</label>
								<label><input type="checkbox" name="product_tag" value="23"/>30-40대</label>
								<label><input type="checkbox" name="product_tag" value="24"/>50-60대</label>
								<label><input type="checkbox" name="product_tag" value="25"/>70대 이상</label>
								<p class="subTag">성별</p>
								<label><input type="checkbox" name="product_tag" value="26"/>남성</label>
								<label><input type="checkbox" name="product_tag" value="27"/>여성</label>
								<label><input type="checkbox" name="product_tag" value="28"/>남여공용</label>
							</div>
							<li><input type="submit" id="formSubmit" value="상품등록"/></li>
						</ul>
					</form>
				</div>
			</div>
		</div>
	</div>
</main>