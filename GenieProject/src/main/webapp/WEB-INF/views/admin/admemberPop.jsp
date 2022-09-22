<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
@import url('https://fonts.googleapis.com/css?family=Poppins');

/* 기본구조 */

h1 {
  text-align: center;
  font-size: 30px;
  font-weight: 600;
  margin-left: 30px;
  color: #2DCEF8; 
  margin-bottom: 50px;
}

h2 {
  text-align: center;
  font-size: 16px;
  font-weight: 600;
  text-transform: uppercase;
  display:inline-block;
  margin: 40px 8px 10px 8px; 
  color: #cccccc;
}
h3 {
  text-align: left;
  font-size: 16px;
  font-weight: 600;
  margin-left: 30px;
  color: #ccc; 
  margin-bottom: 50px;
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
  justify-content: center;
  width: 100%;
  min-height: 100%;
  padding: 20px;
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

input[type=button], input[type=submit] {
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

input[type=text] {
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

.userReg {
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

.comReg{
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
function admemberDel(){
	if(confirm("${vo.genie_id} 회원을 삭제하시겠습니까?")){
		location.href="/admin/admemberDel?genie_id=${vo.genie_id}";
	}
}
</script>

<div class="wrapper">
  <div id="formContent">
    <!-- 타이틀 -->
    <h1>고객정보관리</h1>

    <!-- 로그인폼-->
    <form method="post" action="/admin/admemberPopEdit" id="admemberPopFrm">
    <p>아이디</p>
     	<input type="text" id="genie_id" class="second" name="genie_id" value=${vo.genie_id}>
   	<p>이름</p>
   		<input type="text" id="user_name" class="second" name="user_name" value=${vo.user_name}>
   	<p>연락처</p>
   		<input type="text" id="user_tel" class="second" name="user_tel" value=${vo.user_tel}>
   	<p>이메일</p>
   		<input type="text" id="user_email" class="second" name="user_email" value=${vo.user_email}>
   	<p>우편번호</p>
   		<input type="text" id="user_zipcode" class="second" name="user_zipcode" value=${vo.user_zipcode}>
   	<p>주소</p>
   		<input type="text" id="user_addr" class="second" name="user_addr" value=${vo.user_addr}>
   	<p>상세주소</p>
   		<input type="text" id="user_detailaddr" class="second" name="user_detailaddr" value=${vo.user_detailaddr}>
   	<p>성별</p>
   		<input type="text" id="user_gender" class="second" name="user_gender" value=${vo.user_gender}>
   	<p>가입일</p>
   		<input type="text" id="sign_in_date" class="second" name="sign_in_date" value=${vo.sign_in_date}>
   	<p>결제방식</p>
   		<input type="text" id="payment_method" class="second" name="payment_method" value=${vo.payment_method}>   	
      <input type="submit" class="fourth" value="수정">
      <a href="javascript:admemberDel()"><input type="button" class="fourth" value="삭제"></a>
      <a href="javascript:window.history.back()"><input type="button" class="fourth" value="뒤로가기"></a>
    </form>
  </div>
</div>