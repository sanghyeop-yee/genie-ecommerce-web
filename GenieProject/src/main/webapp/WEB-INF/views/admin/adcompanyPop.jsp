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
	if(confirm("${vo.genie_id} 업체를 삭제하시겠습니까?")){
		location.href="/admin/adcompanyDel?genie_id=${vo.genie_id}";
	}
}
</script>

<div class="wrapper">
  <div id="formContent">
    <!-- 타이틀 -->
    <h1>고객정보관리</h1>

    <!-- 로그인폼-->
    <form method="post" action="/admin/adcompanyPopEdit" id="adcompanyPopFrm">
    <p>아이디</p>
     	<input type="text" id="genie_id" class="second" name="genie_id" value=${vo.genie_id}>
    <p>연락처</p>
     	<input type="text" id="seller_tel" class="second" name="seller_tel" value=${vo.seller_tel}>
    <p>이메일</p>
     	<input type="text" id="seller_email" class="second" name="seller_email" value=${vo.seller_email}>
    <p>상점번호</p>
     	<input type="text" id="seller_reg_no" class="second" name="seller_reg_no" value=${vo.seller_reg_no}>
    <p>상점명</p>
     	<input type="text" id="company_name" class="second" name="company_name" value=${vo.company_name}>
    <p>대표자명</p>
     	<input type="text" id="ceo_name" class="second" name="ceo_name" value=${vo.ceo_name}>
    <p>주소</p>
     	<input type="text" id="seller_address" class="second" name="seller_address" value=${vo.seller_address}>
     	<!-- vo 주소 표기법 해결할 것 -->
    <p>상점사이트</p>
     	<input type="text" id="seller_website" class="second" name="seller_website" value=${vo.seller_website}>
    <p>가입신청일</p>
     	<input type="text" id="writedate" class="second" name="writedate" value=${vo.writedate}>
    <p>상점상태</p>
     	<input type="text" id="seller_status" class="second" name="seller_status" value=${vo.seller_status}>
    <p>상점승인일</p>
     	<input type="text" id="approval_date" class="second" name="approval_date" value=${vo.approval_date}>
	
      <input type="submit" class="fourth" value="수정">
      <a href="javascript:adcompanyDel()"><input type="button" class="fourth" value="삭제"></a>
      <a href="/admin/adcompany"><input type="button" class="fourth" value="뒤로가기"></a>
    </form>
  </div>
</div>