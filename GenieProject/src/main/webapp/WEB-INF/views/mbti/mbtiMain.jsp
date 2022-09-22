<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jspf"%>
<style>
/*----------백그라운드-----------*/
.container {
	position: relative;
	width: 100%;
    margin: 0;
    padding: 10vh 10vw;
	background: #f5f5f7;
}
/*--------mbti-------------*/
#title{
	text-align:center;
	font-size:2.5em;
	margin:12vh 0;
}
.mbti_list{
	display: grid;
	grid-template-columns: 12vw 12vw 12vw 12vw;
	justify-content: space-evenly;
	row-gap: 4rem;
	margin-bottom:12vh;
}
.mbti_list img{
	width:100%;
	height:auto;
	border-radius:50%;
	box-shadow: 0 0 50px #b4b4b4;
}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
</script>

<section class="container">
	<div id="title">
		<h1>MBTI별 선물 추천</h1>
	</div>
	<div class="mbti_list">
		<span><a href=""><img src="/image/mbtiE.png"/></a></span>
		<span><a href=""><img src="/image/mbtiS.png"/></a></span>
		<span><a href=""><img src="/image/mbtiT.png"/></a></span>
		<span><a href=""><img src="/image/mbtiJ.png"/></a></span>
		<span><a href=""><img src="/image/mbtiI.png"/></a></span>
		<span><a href=""><img src="/image/mbtiN.png"/></a></span>
		<span><a href=""><img src="/image/mbtiF.png"/></a></span>
		<span><a href=""><img src="/image/mbtiP.png"/></a></span>
	</div>
</section>
