<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jspf" %>
<style>
  @import url('https://fonts.googleapis.com/css?family=Poppins');

  .home {
    position: relative;
    width: 100%;
    margin: 0;
    padding: 2% 23%;
    background: #d3f1ee;
    background-size: cover;
    background-position: center;
  }
  /* 기본구조 */
  .home .bubbles{
      display:flex;
      justify-content: center;
      align-items: center;
  }
  .bubbles {
      display: inline-block;
      font-family: 'Josefin Sans', sans-serif;
      position: relative;
      /* margin-bottom: 6em; */
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
  p{
    text-align: left;
    font-size: 16px;
    font-weight: 600;
    margin-left: 30px;
    
    color: #363636; 
  }
  /*메인구조 */

  .wrapper {
    display: flex;
    align-items: center;
    flex-direction: column; 
    /* justify-content: center; */
    width: 100%;
    height: 100vh;
    margin-top: 3em;
  }

  #formContent {
    -webkit-border-radius: 10px 10px 10px 10px;
    border-radius: 10px 10px 10px 10px;
    background: #fff;
    padding: 30px;
    width: 90%;
    max-width: 450px;
    position: relative;
    padding: 20px;
    -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
    box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
    text-align: center;
  }


  /*타입별로 css 주기*/

  input[type=submit] {
    background-color: #56baed;
    border: none;
    color: #fff;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 20px;
    width: 85%;
    border: 2px solid #f6f6f6;
    border-radius: 10px 10px 10px 10px;
  }

  input[type=text],[type=password] {
    background-color: #f6f6f6;
    border: none;
    color: #0d0d0d;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 10px;
    width: 85%;
    border: 2px solid #f6f6f6;
    border-radius: 10px 10px 10px 10px;
  }

  input[type=text]:placeholder {
    color: #cccccc;
  }

  #userReg {
    background-color: #F7D25A;
    border: none;
    color: #fff;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 5px;
    margin-top:50px;
    width: 85%; 
    border: 2px solid #f6f6f6;
    border-radius: 10px 10px 10px 10px;
  }

  #comReg{
    background-color: #E162A2;
    border: none;
    color: #fff;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 5px;
    width: 85%;
    border: 2px solid #f6f6f6;
    border-radius: 10px 10px 10px 10px;
  }
</style>
<script>
	$(function(){
		$('#log').submit(function(){
			if($("#user_id").val()==""){
				alert("아이디를 입력하세요..");
				return false;
			}
			if($("#user_pwd").val()==""){
				alert("비밀번호를 입력하세요..");
				return false;
			}
			return true;
		});
	});
</script>
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
    <h1>지니에서 당신의 마음을 찾아보세요</h1>
  </div>

  <div class="wrapper">
    <div id="formContent">
      <!-- 타이틀 -->


      <!-- 로그인폼-->
      <form method="post" action="/user/loginOK" id="log">
        <p>아이디</p>
        <input type="text" id="user_id" class="second" name="user_id" placeholder="아이디를 입력하세요">
      <!-- 비밀번호 -->
      <p>비밀번호</p>
        <input type="password" id="user_pwd" class="third" name="user_pwd" placeholder="비밀번호를 입력하세요">
        <input type="submit" class="fourth" value="로그인">
      </form>
      <!-- 로그인폼-->
      <form method="post" action="/user/loginOK" id="log">
        <li><a href="/user/Registragion"><input type="button" id="userReg" value="일반회원 회원가입"></a></li>
        <li><a href="/seller/sellerForm"><input type="button" id="comReg" value="기업회원 회원가입"></a></li>
      </form>
    </div>
  </div>
<section>