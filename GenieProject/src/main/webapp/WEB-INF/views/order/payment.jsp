<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jspf"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<link rel="stylesheet" href="/js_css/css/cart_style.css" type="text/css"/>
<link rel="stylesheet" href="/js_css/css/payment.css" type="text/css"/>

<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>

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
          <%-- <form type="post" action="/orderCompletion" id="payFrm"> --%>
            <div id="invoice-mid"></div>
        
            <div class="clientlogo"></div>
            <div class="info">
              <h2>구매자 정보</h2>
              <div>
                  
                  <h3>${uvo.user_name}</h3>
                  <li><input type="hidden" name="genie_id" value="${uvo.genie_id}"></li>
                  <p>${uvo.user_email}<br/>
                    ${uvo.user_tel}<br/></p>
              </div>
  
            <div id="project">
             
              <c:set var="sum_of_each" value="0"/>
                <c:forEach items="${plist}" var="pvo">
              <c:set var="sum_of_each" value="${total+pvo.product_price*pvo.cart_qty}"/>
                <li><input type="hidden" id="cart_num" name="cart_num" value="${pvo.cart_num}"></li><br/> 
                <li><input type="hidden" id="product_id" name="product" value="${pvo.product_id}"></li><br/>
                <li><input type="hidden" id="product_name" name="product_name" value="${pvo.product_name}">${pvo.product_name}</li> 
                <li><input type="hidden" id="cart_qty" name="cart_qty" value="${pvo.cart_qty}">${pvo.cart_qty}개</li> 
                <li><input type="hidden" id="sum" name="sum" value="${sum_of_each}">${sum_of_each}원</li><br/>
              </c:forEach></p>
            </div>  

            <c:set var="total" value="0"/>
              <c:forEach var="pvo" items="${plist}">
                <c:set var="total" value="${total+pvo.product_price*pvo.cart_qty}"/>
              </c:forEach><br/>
              <fmt:formatNumber value="${total}" pattern="#,###원"/>
              <li><input type="hidden" id="total" value="${total}"></li>
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
                          <input type="hidden" id="addressStatus" value="N"/>      
                          <p class="itemtext"><input type="text" class="itemtext-inner" id="receiver_name" name="receiver_name" placeholder="받는사람 이름" readonly></p>
                          <p class="itemtext"><input type="text" class="itemtext-inner" id="receiver_zipcode" name="receiver_zipcode" placeholder="우편번호" readonly></p>
                          <p class="itemtext"><input type="text" class="itemtext-inner" id="receiver_addr" name="receiver_addr" placeholder="받는사람 주소" readonly></p>
                          <p class="itemtext"><input type="text" class="itemtext-inner" id="receiver_tel" name="receiver_tel" placeholder="받는 사람 전화번호" readonly></p>
                          </td>
                    </tr>
                    <tr class="service">
                          <td class="tableitem"><p class="itemtext">
                          요청사항 : <input type="text" class="itemtext-inner" id="recipient_request" name="recipient_request" placeholder="요청사항을 적어주세요"></p></td>
                    </tr>
                    
                    </table>
                </div><!--End Table-->
                
                <span class="submit-wrapper">
                    <input type="submit" id="buy" value="결제하기"/>
                </span>
          <%-- </form> --%>

          <div id="legalcopy">
              <p class="legal"><strong>교환 또는 환불을 원하시는 분들은 7일 이내에 가능합니다.</strong></p>
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
      
      $("#selectAddress").change(function(){
        $("#addressStatus").val("N");
      });

      if($("#addressStatus").val()!='Y'){
        alert("주소를 선택하세요");
        return false;
      }

      if($("#recipient_request").val()==""){
        alert("요청사항을 입력하세요");
        return false;
      }

      IMP.request_pay({
          pg: 'html5_inicis',                  
          pay_method: 'card',         
          merchant_uid: 'merchant_' + new Date().getTime(), 
          name:'<c:forEach var="pvo" items="${plist}">${pvo.product_name} </c:forEach>',     
          amount: '${total}',//가격          
          buyer_email: '${uvo.user_email}',
          buyer_name: $("#receiver_name").val(),
          buyer_tel: $("#receiver_tel").val(),      
          buyer_postcode: $("#receiver_zipcode").val(),
          buyer_addr: $("#receiver_addr").val()
      
          }, function (rsp) { 
              if(rsp.success) {
                  var msg = '결제가 완료되었습니다.';
         
                  var orderData = {
                      order_num: rsp.imp_uid,
                      merchant_uid: rsp.merchant_uid,
                      genie_id:$("input[name=genie_id]").val(),
                      cart_num: $("input[name=cart_num]").val(),
                      product_id: $("input[name=product_id]").val(),
                      product_name: $("input[name=product_name]").val(),
                      order_qty: $("input[name=cart_qty]").val(),
                      order_price: $("input[name=sum]").val(),
                      recipient_name: $("#receiver_name").val(),
                      recipient_phone: $("#receiver_tel").val(),      
                      recipient_address: $("#receiver_addr").val(),
                      recipient_request: $("#recipient_request").val(),
                      payment_method: rsp.pay_method,
                                       
                  };//data
                  $.ajax({
                    url: "/order/orderCompletion", // 예: https://www.myservice.com/payments/complete
                    data: orderData,
                    method: "get",
                    contentType: "application/json",
                    async: false,
                    success:function(result){

                      window.location.replace("/order/completion");
                      console.log(orderData);

                    },error:function(e){
                      console.log(e.responseText);
                    }
                  });
              } else {                
                var msg = '결제에 실패하였습니다.';                
                msg += '에러내용 : ' + rsp.error_msg;            
              }          
              alert(msg);
            });
          });
      });

window.onload=function(){

  $("#selectAddress").click(function(){
      window.open("/user/addressbook","addressbook","width=500, height=800");
    });
  };
</script>
