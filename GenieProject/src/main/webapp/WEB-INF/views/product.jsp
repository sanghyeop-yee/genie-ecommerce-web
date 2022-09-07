<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/top.jspf"%>
<style>
.home{
	position: relative;
	width: 100%;
    margin: 0;
    padding:3em 13em;

	/*background: url(../img/background.jpg);*/
	background: #effaf9;
	background-size: cover;
	background-position: center;
}
.home .bubbles{
    display:flex;
    justify-content: center;
    align-items: center;
}
.bubbles {
    display: inline-block;
    font-family: 'Josefin Sans', sans-serif;
    position: relative;
    margin-bottom: 6em;
}
.bubbles h1 {
    position: relative;
    margin: 1em 0 0;
    font-family: 'Josefin Sans', sans-serif;
    color: #1a534e;
    z-index: 2;
}
.individual-bubble {
    position: absolute;
    border-radius: 100%;
    bottom: 10px;
    background-color: #81d8d0;
    z-index: 1;
}
img{
    width: 100%;
    height: auto;
}
.grid-container{
    /* grid style */
	display: grid;
	grid-template-columns: repeat(auto-fill, minmax(18%, 4fr));
    grid-gap: 2em;
    justify-content: center;
    align-items: center;
}
.product-list{
    position:relative;
}
.item{
    line-height: 0;
    overflow: hidden;
    border-radius: 15px;
    box-shadow: 0 0 15px #278178;
}
.item img{
    filter: blur(0px);
    transition: filter 0.3s ease-in;
    transform: scale(1.1);
}
.product-title{
    font-size: 1.5em;
    font-weight: bold;
    text-decoration: none;
    z-index: 1;
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    left: 0;
    opacity: 0;
    transition: opacity .5s;
    background: rgba(181,232,226,0.4);
    color: #1a534e;

    /* position the text in t’ middle*/
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;

    border-radius: 15px;
    
}
.product-list:hover .product-title {
    opacity: 1;
}
.product-list:hover .item img {
    filter: blur(2px);
}
.wrapper>ul>li:nth-child(1){
    color: #59ccc0;
    padding-top: .6em;
}
.wrapper>ul>li:nth-child(2){
    color: #257870;
    font-size: 1.1em;
    padding-bottom: .6em;
}
.wrapper>ul>li:nth-child(3){
    color: #1f635c;
    font-size: 1.3em;
    font-weight: bold;
}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
jQuery(document).ready(function($){
 var bArray = [];
 var sArray = [4,6,8,10];
    for (var i = 0; i < $('.bubbles').width(); i++) {
    bArray.push(i);
    }
 function randomValue(arr) {
    return arr[Math.floor(Math.random() * arr.length)];
 }
setInterval(function(){
    var size = randomValue(sArray);
    $('.bubbles').append('<div class="individual-bubble" style="left: ' + randomValue(bArray) + 'px; width: ' + size + 'px; height:' + size + 'px;"></div>');
    $('.individual-bubble').animate({
        'bottom': '100%',
        'opacity' : '-=0.7'
    }, 3000, function(){
        $(this).remove()
    });
    }, 350);
});
</script>

<section class="home">
    <div class="bubbles">
        <h1>찾으시는 선물이 없으셨나요? 그럼 전체 상품을 둘러보세요!</h1>
    </div>

    <div class="grid-container">
        <div class="wrapper">
            <article class="product-list">
                <a class="product-title" href="#"><i class="fa-solid fa-magnifying-glass"></i></a>
                <div class="item">
                    <a href="#">
                        <img src="https://media.tiffany.com/is/image/tiffanydm/GTD_FooterLinks_Guide?$tile$&wid=988&hei=988&fmt=webp">
                    </a>
                </div>
            </article>
            <ul>
                <li>판매자</li>
                <li>상품이름</li>
                <li>가격</li>
            </ul>
        </div>
        <div class="wrapper">
            <article class="product-list">
                <a href="#" class="product-title"><i class="fa-solid fa-magnifying-glass"></i></ul></a>
                <div class="item">
                    <a href="#">
                        <img src="https://media.tiffany.com/is/image/Tiffany/EcomItemL2/-12796153_941231_ED.jpg?&op_usm=1.75,1.0,6.0&$cropN=0.1,0.1,0.8,0.8&defaultImage=NoImageAvailableInternal&&defaultImage=NoImageAvailableInternal&fmt=webp">
                    </a>
                </div>
            </article>
            <ul>
                <li>판매자</li>
                <li>상품이름</li>
                <li>가격</li>
            </ul>
        </div>
        <div class="wrapper">
            <article class="product-list">
                <a href="#" class="product-title"><i class="fa-solid fa-magnifying-glass"></i></ul></a>
                <div class="item">
                    <a href="#">
                        <img src="https://media.tiffany.com/is/image/Tiffany/EcomItemL2/tiffany-ttrue-63961507_1001409_ED_M.jpg?&op_usm=1.75,1.0,6.0&$cropN=0.1,0.1,0.8,0.8&defaultImage=NoImageAvailableInternal&&defaultImage=NoImageAvailableInternal&fmt=webp">
                    </a>
                </div>
            </article>
            <ul>
                <li>판매자</li>
                <li>상품이름</li>
                <li>가격</li>
            </ul>
        </div>
        <div class="wrapper">
            <article class="product-list">
                <a href="#" class="product-title"><i class="fa-solid fa-magnifying-glass"></i></ul></a>
                <div class="item">
                    <a href="#">
                        <img src="https://media.tiffany.com/is/image/tiffanydm/GTD_FooterLinks_LifetimeService?$tile$&wid=988&hei=988&fmt=webp">
                    </a>
                </div>
            </article>
            <ul>
                <li>판매자</li>
                <li>상품이름</li>
                <li>가격</li>
            </ul>
        </div>
        <div class="wrapper">
            <article class="product-list">
                <a href="#" class="product-title"><i class="fa-solid fa-magnifying-glass"></i></ul></a>
                <div class="item">
                    <a href="#">
                        <img src="https://media.tiffany.com/is/image/tiffanydm/GTD_FooterLinks_Experts?$tile$&wid=988&hei=988&fmt=webp">
                    </a>
                </div>
            </article>
            <ul>
                <li>판매자</li>
                <li>상품이름</li>
                <li>가격</li>
            </ul>
        </div>
        <div class="wrapper">
            <article class="product-list">
                <a href="#" class="product-title"><i class="fa-solid fa-magnifying-glass"></i></ul></a>
                <div class="item">
                    <a href="#">
                        <img src="https://media.tiffany.com/is/image/Tiffany/EcomItemL2/2-375mm-63452769_995305_ED.jpg?&op_usm=1.5,1.0,6.0&$cropN=0.1,0.1,0.8,0.8&defaultImage=NoImageAvailableInternal&&defaultImage=NoImageAvailableInternal&fmt=webp">
                    </a>
                </div>
            </article>
            <ul>
                <li>판매자</li>
                <li>상품이름</li>
                <li>가격</li>
            </ul>
        </div>
        <div class="wrapper">
            <article class="product-list">
                <a href="#" class="product-title"><i class="fa-solid fa-magnifying-glass"></i></ul></a>
                <div class="item">
                    <a href="#">
                        <img src="https://media.tiffany.com/is/image/Tiffany/EcomItemL2/tiffany-1837makers-22-mm-68122449_1003482_ED.jpg?&op_usm=1.5,1.0,6.0&$cropN=0.1,0.1,0.8,0.8&defaultImage=NoImageAvailableInternal&&defaultImage=NoImageAvailableInternal&fmt=webp">
                    </a>
                </div>
            </article>
            <ul>
                <li>판매자</li>
                <li>상품이름</li>
                <li>가격</li>
            </ul>
        </div>
        <div class="wrapper">
            <article class="product-list">
                <a href="#" class="product-title"><i class="fa-solid fa-magnifying-glass"></i></ul></a>
                <div class="item">
                    <a href="#">
                        <img src="https://media.tiffany.com/is/image/Tiffany/EcomItemL2/tiffany-tt1-67795253_1040716_AV_3_M.jpg?&op_usm=1.75,1.0,6.0&defaultImage=NoImageAvailableInternal&&defaultImage=NoImageAvailableInternal&fmt=webp">
                    </a>
                </div>
            </article>
            <ul>
                <li>판매자</li>
                <li>상품이름</li>
                <li>가격</li>
            </ul>
        </div>
        <div class="wrapper">
            <article class="product-list">
                <a href="#" class="product-title"><i class="fa-solid fa-magnifying-glass"></i></ul></a>
                <div class="item">
                    <a href="#">
                        <img src="https://media.tiffany.com/is/image/Tiffany/EcomItemL2/tiffany-hardwear-38172409_1017524_AV_4_M.jpg?&op_usm=1.0,1.0,6.0&defaultImage=NoImageAvailableInternal&&defaultImage=NoImageAvailableInternal&fmt=webp">
                    </a>
                </div>
            </article>
            <ul>
                <li>판매자</li>
                <li>상품이름</li>
                <li>가격</li>
            </ul>
        </div>
        <div class="wrapper">
            <article class="product-list">
                <a href="#" class="product-title"><i class="fa-solid fa-magnifying-glass"></i></ul></a>
                <div class="item">
                    <a href="#">
                        <img src="https://media.tiffany.com/is/image/Tiffany/EcomItemL2/tiffany-hardwear-60451109_1011583_ED_M.jpg?&op_usm=1.0,1.0,6.0&$cropN=0.1,0.1,0.8,0.8&defaultImage=NoImageAvailableInternal&&defaultImage=NoImageAvailableInternal&fmt=webp">
                    </a>
                </div>
            </article>
            <ul>
                <li>판매자</li>
                <li>상품이름</li>
                <li>가격</li>
            </ul>
        </div>
        <div class="wrapper">
            <article class="product-list">
                <a href="#" class="product-title"><i class="fa-solid fa-magnifying-glass"></i></ul></a>
                <div class="item">
                    <a href="#">
                        <img src="https://media.tiffany.com/is/image/Tiffany/EcomItemL2/tiffany-tt1-68127246_1013908_ED.jpg?&op_usm=2.0,1.0,6.0&$cropN=0.1,0.1,0.8,0.8&defaultImage=NoImageAvailableInternal&&defaultImage=NoImageAvailableInternal&fmt=webp">
                    </a>
                </div>
            </article>
            <ul>
                <li>판매자</li>
                <li>상품이름</li>
                <li>가격</li>
            </ul>
        </div>
        <div class="wrapper">
            <article class="product-list">
                <a href="#" class="product-title"><i class="fa-solid fa-magnifying-glass"></i></ul></a>
                <div class="item">
                    <a href="#">
                        <img src="https://media.tiffany.com/is/image/Tiffany/EcomItemL2/tiffany-tt1-67786572_1042151_SV_2_M.jpg?&op_usm=2.0,1.0,6.0&defaultImage=NoImageAvailableInternal&&defaultImage=NoImageAvailableInternal&fmt=webp">
                    </a>
                </div>
            </article>
            <ul>
                <li>판매자</li>
                <li>상품이름</li>
                <li>가격</li>
            </ul>
        </div>
    </div>
</section>

