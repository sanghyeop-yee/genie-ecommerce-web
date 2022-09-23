<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<style>
nav {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-top: 45px;
    padding-left: 8%;
    padding-right: 8%;
}

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



</style>


<main class="main">

	<div class="responsive-wrapper">

		<div class="content">
			<div class="content-panel">
				<div class="vertical-tabs">
					<div>
						<span><img src="../images/seller/profile-1.png" /></span>
						<h3>${logName}님</h3>
					</div>
					<a href="sellerMain"><ul class="fa-ul"><li><i class="fa fa-pie-chart" aria-hidden="true"></i> 대시보드</li></ul></a>
					<a href="productForm"><ul class="fa-ul"><li><i class="fa fa-plus-circle" aria-hidden="true"></i> 상품등록</li></ul></a>
					<a href="sellerProduct"><ul class="fa-ul"><li><i class="fa fa-gift" aria-hidden="true"></i> 상품관리</li></ul></a>
					<a href="sellerOrder"><ul class="fa-ul"><li><i class="fa fa-shopping-cart" aria-hidden="true"></i> 주문관리</li></ul></a>
					<a href="sellerSales"><ul class="fa-ul"><li><i class="fa fa-area-chart" aria-hidden="true"></i> 매출관리</li></ul></a>
					<a href="sellerQna"><ul class="fa-ul"><li><i class="fa fa-question-circle" aria-hidden="true"></i> 문의관리</li></ul></a>					
				</div>
			</div>
			<div class="content-main">
				<div class="content-main-top">
					<p>${logName }님 매출관리 Dashboard</p>
					<div class="card">
						총 매출 ${orderSum }
					</div>
					<div class="card">
						총 결제건수 ${orderCount }
					</div>
					<div class="card">
						이달의 상품 ${bestSeller }
					</div>
					
				<div class="cards">
	                <div class="card">
	                    <div class="top">
	                        <div class="left">
	                            <span class="material-symbols-sharp">local_shipping</span>
	                            <h2>총 매출</h2>
	                        </div>
	                        <div class="right">
	                           <!--카드에 오른쪽 상단에 추가하고싶은 내용이나, 아이콘 넣을 공간-->
	                        </div>
	                    </div>
	                    <div class="middle">
	                        <h1>${orderSum }원</h1>
	                    </div>
	                    <div class="bottom">
	                        <!--카드 아래에 추가내용--> 
	                    </div>
	                </div>
	                <!-- end of card 1 -->
	                <div class="card">
	                    <div class="top">
	                        <div class="left">
	                            <span class="material-symbols-sharp">inventory_2</span>
	                            <h2>이달의 상품</h2>
	                        </div>
	                        <div class="right">
	                             <!--카드에 오른쪽 추가하고싶은 내용이나, 아이콘 넣을 공간-->
	                        </div>
	                    </div>
	                    <div class="middle">
	                        <h1>토이스토리 우디</h1>
	                    </div>
	                    <div class="bottom">
	                       <!--카드 아레에 추가내용-->
	                    </div>
	                </div>
	                <!-- end of card 2 -->
	                <div class="card">
	                    <div class="top">
	                        <div class="left">
	                            <span class="material-symbols-sharp">support_agent</span>
	                            <h2>미답변 문의</h2>
	                        </div>
	                        <div class="right">
	                            <!--카드 오른쪽 상단에 추가하고싶은 내용이나, 아이콘 넣을 공간-->
	                        </div>
	                    </div>
	                    <div class="middle">
	                        <h1>10 건의 미답변 문의가 있습니다.</h1>
	                    </div>
	                    <div class="bottom">
	                        <!--카드 아레에 추가내용-->
	                    </div>
	                </div>
	                <!-- end of card 3 -->
	            </div>
	            <!-- end of cards -->
					
					
		          <!-- 차트 (chart js)-->
		          <h3 style="text-align:center;">일별 매출</h3>
		          <canvas id="chart"></canvas>
		          
		          <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.6.0/chart.min.js" integrity="sha512-GMGzUEevhWh8Tc/njS0bDpwgxdCJLQBWG3Z2Ct+JGOpVnEmjvNx6ts4v6A2XJf1HOrtOsfhv3hBKpK9kE5z8AQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>		          
		          <script>
					var jsonData = ${json}; // Controller 에서 가공하여 넘겨준 데이터를 jstl 문법을 통해 변수에 담기
					var jsonObject = JSON.stringify(jsonData); // js에서 문자열형태로 사용할 수 있도록 변환
					var jData = JSON.parse(jsonObject); // json객체로 사용할수 있게 json.parse 메소드 이용
					// -> js 에서 jData 변수를 사용하여 데이터 다룰수 있게됨.
					
					// 차트표현을 위해 필요한 핵심데이터들이 각각 들어갈 js 배열 객체 선언
					var labelList = new Array();
					var valueList = new Array();
					var colorList = new Array();
					
					// jData 에 담겨있는 변수들을 추출하여 위에서 선언한 각각의 js array 에 분배
					for(var i=0; i<jData.length; i++){ // jData 길이만큼 반복문 수행
						var d = jData[i]; // 각각의 json 데이터안에 입력디어 있는 값중
						labelList.push(d.date); // date (month_day) 에 해당하는 부분을 labelList에 삽입
						valueList.push(d.sales); // sales (total_sales) 에 해당하는 부분을 valueList에 삽입
						colorList.push(colorize()); // 랜덤한 색상값을 생성해 반환
					}
					
					function colorize(){
						var r = Math.floor(Math.random()*200);
						var g = Math.floor(Math.random()*200);
						var b = Math.floor(Math.random()*200);
						var color = 'rgba(' + r + ', ' + g + ', ' + b +  ', 0.7)';
						return color;
					}
					
					// 각각의 리스트를 chart js 형식에 넣어주기
					var data = {
							labels: labelList,
							datasets: [{
								label: '매출(원)',
								backgroundColor: colorList,
								data: valueList
								
							}],
							options: {
								title: {
									display: true,
									text: '일별 매출'
								}
							}
					};
					
					const chart = document.querySelector("#chart").getContext('2d');
					new Chart(chart, {
						type: 'line',
						data: data
					})
					
					</script>
				</div>
			</div>
		</div>
	</div>
</main>