<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="./inc/top.jspf"%>

<link rel="stylesheet" href="/js_css/cart_style.css" type="text/css"/>

<!-- jQuery 
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
-->
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>

<Style>
  #invoiceholder{
    width:100%;
    padding-top: 20px;
  }
  #invoice{
    background: #FFF;
  }

  [id*='invoice-']{ /* Targets all id with 'col-' */
    padding: 30px;
  }

  #invoice-top{min-height: 120px;}
  #invoice-mid{min-height: 120px;}
  #invoice-bot{ min-height: 250px;}

  .logo{
    float: left;
    width: 60px;
    height: 37px;
    background: url(/image/logo_western.png) no-repeat;
    background-size: 60px 37px;
  }
  .clientlogo{
    float: left;
    height: 60px;
    width: 60px;
    background: url(http://michaeltruong.ca/images/client.jpg) no-repeat;
    background-size: 60px 60px;
    border-radius: 50px;
  }
  .info{
    display: block;
    float:left;
    margin-left: 20px;
  }
  .info h2{
    margin-bottom: 15px;
  }
  .info h3{
    margin-bottom: 15px;
  }
  .info p{
    margin-bottom: 15px;
    color: gray;
  }
  .title{
    float: right;
  }
  .title p{text-align: right;}
  
  table{
    width: 100%;
    border-radius: 20px;
    box-shadow: 0 0 15px #fbfbfb;
  }
  td{
    padding: 5px 0 5px 15px;
    border-radius: 0 0 15px 15px;
  }
  .tabletitle{
    padding: 5px;
    background: #EEE;

  }
  .service{
    border: 1px solid #EEE; 
    border-radius: 0 0 15px 15px;
  }
  .itemtext-top{
    background: #2DCEF8;
    border: none;
    padding: 10px;
    border-radius: 8px;
    color: #fff;
    margin-bottom: 15px;
  }
  .itemtext-inner{
    border: 1px solid #EEE; 
    border-radius: 8px;
    width: 700px;
    padding: 10px;
    margin-bottom: 10px;
  }
  .item{
    width: 50%; 
    background: #0071e3; 
    border-radius: 15px 15px 0 0;
  }
  .itemtext{
    font-size: .9em;
  }
  #legalcopy{
    margin-top: 30px;
  }
  form{
    float:right;
    margin-top: 30px;
    text-align: right;
  }

  .legal{
    width:70%;
  }

  .submit-wrapper{
  margin: 0;
  }

  #buy{
  margin-top: 30px;
  }
</Style>

<div class="wrapper">
    <div class="cart">

        <!-- partial:index.partial.html -->
        <div id="invoiceholder">

        <div id="headerimage"></div>
        <div id="invoice" class="effect2">
            <div id="invoice-top">
            <div class="logo"></div>
            <div class="info">
                <h2>Genie</h2>
                <p> admin@genie.com <br/>
                    02-564-5843
                </p>
            </div><!--End Info-->
            <div class="title">
                <h2>Invoice #0001</h2>
                <p>2022년 10월 6일</p>
            </div><!--End Title-->
            </div><!--End InvoiceTop-->
            
            <div id="invoice-mid">
            
            <div class="clientlogo"></div>
            <div class="info">
            <h2>구매자 정보</h2>
            <div>
                <h3>${uvo.user_name}</h3>
                <p>${uvo.user_email}<br/>
                   ${uvo.user_tel}<br/>
            </div>

            <div id="project">
            배송목록<br/>
            <c:forEach var="i" begin="0" end="${fn:length(Product_qty)-1}">
                ${Product_name[i]} ${Product_price[i]}원 ${Product_qty[i]}개 <br/>
            </c:forEach>
            <br/>

             <c:set var="total" value="0"/>
                <c:forEach var="i" begin="0" end="${fn:length(Product_qty)}">
              <c:set var="total" value="${total+Product_price[i]*Product_qty[i]}"/>
                </c:forEach>
            
            </div><br/>
                ${total}원
            </div><!--End Invoice Mid-->
            
            <div id="invoice-bot">
            
                <div id="table">
                    <table>
                    <tr class="tabletitle">
                        <td class="item"><h2></h2></td>
                    </tr>
                    
                    <tr class="service">             
                        <td class="tableitem">
                    <input type="button" id="selectAddress" value="배송지 선택" class="itemtext-top">       
                          <p class="itemtext"><input type="text" class="itemtext-inner" id="receiver_name" name="receiver_name" placeholder="받는사람 이름" readonly></p>
                          <p class="itemtext"><input type="text" class="itemtext-inner" id="receiver_zipcode" name="receiver_zipcode" placeholder="우편번호" readonly></p>
                          <p class="itemtext"><input type="text" class="itemtext-inner" id="receiver_addr" name="receiver_addr" placeholder="받는사람 주소" readonly></p>
                          <p class="itemtext"><input type="text" class="itemtext-inner" id="receiver_tel" name="receiver_tel" placeholder="받는 사람 전화번호" readonly></p>
                          </td>
                    </tr>
                    <tr class="service">
                          <td class="tableitem"><p class="itemtext">
                          요청사항 : <input type="text" class="itemtext-inner" id="receipent_request" name="receipent_request" placeholder="요청사항을 적어주세요"></p></td>
                          <%-- 전체 가격 :<input type="text" value='${total}' name="receipent_request" ></p> --%>
                    </tr>
                    
                    </table>
                </div><!--End Table-->
                
                <span class="submit-wrapper">
                    <input type="submit" id="buy" value="결제하기"/>
                </span>
            
            <div id="legalcopy">
                <p class="legal"><strong>교환 또는 환불을 원하시는 분들은 7일 이내에 가능합니다.</strong>
                </p>
            </div>

            </div><!--End InvoiceBot-->
        </div><!--End Invoice-->
        </div><!-- End Invoice Holder-->
        <!-- partial -->

    </div>
</div>
<script>
      $(function(){
          $("#buy").click(function (){        
          var IMP = window.IMP; // 생략가능        
          IMP.init('imp48507577');   
          // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용        
          // i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드        
          IMP.request_pay({
              pg: 'html5_inicis',                  
              pay_method: 'card',         
              merchant_uid: 'merchant_' + new Date().getTime(), 
              name:'${Product_name}',     
              amount: '${total}',//가격          
              buyer_email: '${uvo.user_email}',
              buyer_name: $("#receiver_name").val(),
              buyer_tel: $("#receiver_tel").val(),      
              buyer_postcode: $("#receiver_zipcode").val(),
              buyer_addr: $("#receiver_addr").val()

              /*                  
              모바일 결제시,                
              결제가 끝나고 랜딩되는 URL을 지정                 
              (카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
              */        
              }, function (rsp) {                   
                  if (rsp.success) {                 
                      var msg = '결제가 완료되었습니다.';
                      
                      console.log(rsp.imp_uid);
                      var data = {
                          imp_uid: rsp.imp_uid,
                          merchant_uid: rsp.merchant_uid,
                          pay_method:rsp.pay_method
                      };
                      console.log(data);
                      jQuery.ajax({
                            url: "/orderCompletion", // 예: https://www.myservice.com/payments/complete
                            method: "POST",
                            //headers: { "Content-Type" : "application/json" },
                            data: data
                        }).done(function (data1){
                          console.log("done",data1);
                        }).fail(function(data2){
                          console.log("fail",data2);
                        })
                  } else {                
                          var msg = '결제에 실패하였습니다.';                
                          msg += '에러내용 : ' + rsp.error_msg;            
                  }          
                  alert(msg);
                });      
            });
        });

  $(function(){
    $("#selectAddress").click(function(){
           window.open("/user/addressbook","addressbook","width=500, height=800");
        });
    });
</script>
        