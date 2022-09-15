<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
  flex-direction: column;
  background-color: white;
  border-radius: 8px;
}
.vertical-tabs a {
  display: flex;
  align-items: center;
  padding: 0.75em 1em;
  background-color: transparent;
  border-radius: 3px;
  text-decoration: none;
  font-weight: 500;
  color: #3e3e3e;
  transition: 0.15s ease;
}
.vertical-tabls a:first-child {
  border-left: 5px solid red;
}

.vertical-tabs div {
  display: flex;
  align-items: center;
  padding: 0.75em 1em;
}
.vertical-tabs div span {
  width: 40px;
  height: 40px;
  border-radius: 8px;
  display: inline-flex;
  align-items: center;
  justify-content: center;
}
.vertical-tabs div span img {
  max-height: 100%;
}
.vertical-tabs div h3 {
  margin-left: 0.75rem;
  font-weight: 500;
}
.vertical-tabs div h4 {
  margin-left: 0.75rem;
  font-weight: 500;
}

.content-main-top {
    background: white;
    width: 100%;
    height: 200px;
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

.card-grid {
  display: grid;
  grid-template-columns: repeat(1, 1fr);
  -moz-column-gap: 1.5rem;
       column-gap: 1.5rem;
  row-gap: 1.5rem;
}

.card {
  background-color: #fff;
  border-radius: 8px;
  overflow: hidden;
  display: flex;
  flex-direction: column;
}

.card-header {
  display: flex;
  align-items: flex-start;
  justify-content: space-between;
  padding: 1.5rem 1.25rem 1rem 1.25rem;
}
.card-header div {
  display: flex;
  align-items: center;
}
.card-header div span {
  width: 40px;
  height: 40px;
  border-radius: 8px;
  display: inline-flex;
  align-items: center;
  justify-content: center;
}
.card-header div span img {
  max-height: 100%;
}
.card-header div h3 {
  margin-left: 0.75rem;
  font-weight: 500;
}

.card-body {
  padding: 1rem 1.25rem;
  font-size: 0.875rem;
}

.card-footer {
  margin-top: auto;
  padding: 1rem 1.25rem;
  display: flex;
  align-items: center;
  justify-content: flex-end;
  border-top: 1px solid var(--c-border-primary);
}
.card-footer a {
  color: #3e3e3e;
  text-decoration: none;
  font-weight: 500;
  font-size: 0.875rem;
}












table { border-collapse: collapse; border-spacing: 0; }
img { border: 0; max-width: 100%; }

h1 {
  font-family: 'Fredoka One', Helvetica, Tahoma, sans-serif;
  color: #fff;
  text-shadow: 1px 2px 0 #7184d8;
  font-size: 3.5em;
  line-height: 1.1em;
  padding: 6px 0;
  font-weight: normal;
  text-align: center;
}


/* page structure */
#w {
 padding: 2rem 1rem 2rem 1rem;
}

#title {
  display: block;
  width: 100%;
  background: #95a6d6;
  padding: 10px 0;
  -webkit-border-top-right-radius: 6px;
  -webkit-border-top-left-radius: 6px;
  -moz-border-radius-topright: 6px;
  -moz-border-radius-topleft: 6px;
  border-top-right-radius: 6px;
  border-top-left-radius: 6px;
}

#page {
  display: block;
  background: #fff;
  padding: 15px 0;
}

/** cart table **/
#cart {
  display: block;
  border-collapse: collapse;
  margin: 0;
  width: 100%;
  color: #444;
}
#cart thead th {
  padding: 8px 0;
}

#cart thead th.first {
  width: 175px;
  text-align:left;
}
#cart thead th.third {
  width: 130px;
  text-align:left;
}
#cart thead th.fourth {
  width: 230px;
   text-align:left;
}
#cart tbody td {
  text-align: left;
  margin-top: 4px;
}

tr.productitm {
  height: 65px;
  line-height: 65px;
  border-bottom: 1px solid #f2f2f2;
}


#cart tbody td img.thumb {
  vertical-align: bottom;
  margin-bottom: 4px;
  border-radius: 10px;
}

.qtyinput {
  width: 33px;
  height: 22px;
  border: 1px solid #a3b8d3;
  background: #dae4eb;
  color: #616161;
  text-align: center;
}

tr.totalprice, tr.extracosts {
  height: 35px;
  line-height: 35px;
}

.remove {
  /* http://findicons.com/icon/261449/trash_can?id=397422 */
  cursor: pointer;
  position: relative;
  right: 12px;
  top: 5px;
}


.light {
  color: #888b8d;
  text-shadow: 1px 1px 0 rgba(255,255,255,0.45);
  font-size: 1.1em;
  font-weight: normal;
}
.thick {
  color: #272727;
  font-size: 1.7em;
}


/* https://codepen.io/guvootes/pen/eyDAb */
#submitbtn {
  width: 150px;
  height: 35px;
  outline: none;
  border: none;
  border-radius: 5px;
  margin: 0 0 10px 0;
  font-size: 1.3em;
  letter-spacing: 0.05em;
  font-family: Arial, Tahoma, sans-serif;
  color: #fff;
  text-shadow: 1px 1px 0 rgba(0,0,0,0.2);
  cursor: pointer;
  overflow: hidden;
  border-bottom: 1px solid #0071ff;
  background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #66aaff), color-stop(100%, #4d9cff));
  background-image: -webkit-linear-gradient(#66aaff, #4d9cff);
  background-image: -moz-linear-gradient(#66aaff, #4d9cff);
  background-image: -o-linear-gradient(#66aaff, #4d9cff);
  background-image: linear-gradient(#66aaff, #4d9cff);
}
#submitbtn:hover {
  background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #4d9cff), color-stop(100%, #338eff));
  background-image: -webkit-linear-gradient(#4d9cff, #338eff);
  background-image: -moz-linear-gradient(#4d9cff, #338eff);
  background-image: -o-linear-gradient(#4d9cff, #338eff);
  background-image: linear-gradient(#4d9cff, #338eff);
}
#submitbtn:active {
  border-bottom: 0;
  background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #338eff), color-stop(100%, #4d9cff));
  background-image: -webkit-linear-gradient(#338eff, #4d9cff);
  background-image: -moz-linear-gradient(#338eff, #4d9cff);
  background-image: -o-linear-gradient(#338eff, #4d9cff);
  background-image: linear-gradient(#338eff, #4d9cff);
  -webkit-box-shadow: inset 0 1px 3px 1px rgba(0,0,0,0.25);
  -moz-box-shadow: inset 0 1px 3px 1px rgba(0,0,0,0.25);
  box-shadow: inset 0 1px 3px 1px rgba(0,0,0,0.25);
}
</style>

<script>

</script>

<main class="main">

	<div class="responsive-wrapper">

		<div class="content">
			<div class="content-panel">
				<div class="vertical-tabs">
					<div>
						<span><img src="https://pngimg.com/uploads/circle/circle_PNG23.png" /></span>
						<h3>회원정보</h3>
					</div>
					<a href="#"><ul class="fa-ul"><li><i class="fa-li fa fa-envelope"></i>Inbox</li></ul></a>
					<a href="#"><ul class="fa-ul"><li><i class="fa-li fa fa-square"></i>상품관리</li></ul></a>
					<a href="#"><ul class="fa-ul"><li><i class="fa-li fa fa-square"></i>주문관리</li></ul></a>
					<a href="#"><ul class="fa-ul"><li><i class="fa-li fa fa-square"></i>고객관리</li></ul></a>
					<a href="#"><ul class="fa-ul"><li><i class="fa-li fa fa-square"></i>More</li></ul></a>				
				</div>
			</div>
			<div class="content-main">
				<div class="content-main-top">
					<p>관리자 관련 정보를 한번에 볼 수 있는 Dashboard</p>
				</div>
				<div class="card-grid">
					<article class="card">
						<div class="card-header">
							<div>
								<span><img src="https://pngimg.com/uploads/circle/circle_PNG23.png" /></span>
								<h3>상품관리</h3>
							</div>
						</div>

						  <div id="w">
						    <div id="page">
						      <table id="cart">
						        <thead>
						          <tr>
						            <th class="first">이미지</th>
						            <th class="third">상품명</th>
						            <th class="fourth">기업명</th>
						            <th class="fifth">&nbsp;</th>
						          </tr>
						        </thead>
						        <tbody>
						          <!-- 제품 반복 -->
						          <c:forEach var="vo" items="${list }">
						          <tr class="productitm">
						            <td><img src="${vo.product_image1}" class="thumb"></td>
						            <td>${vo.product_id}</td>
						            <td>${vo.product_name}</td>
						            <td><span class="remove"><img src="https://i.imgur.com/h1ldGRr.png" alt="X"></span></td>
						          </tr>
						           </c:forEach>
						           
						        </tbody>
						      </table>
						    </div>
						  </div>

					</article>
				</div>
			</div>
		</div>
	</div>
</main>



     
  


