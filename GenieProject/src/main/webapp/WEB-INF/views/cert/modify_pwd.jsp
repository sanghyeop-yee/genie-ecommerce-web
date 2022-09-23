<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	
<section class="home">
<form method="post" action="/cert/modify_pwd" id="logFrm">
	<h3>새로운 비밀번호로 재설정해주세요</h3>
    <div id="passwordForm">
		<input type="hidden" value="${genie_id}" name="genie_id"/>
		<p>새 비밀번호</p>
			<input type="password" id="genie_pwd" name="genie_pwd" placeholder="새 비밀번호를 입력하세요">
		<p>새 비밀번호 다시 입력</p>
			<input type="password" id="genie_pwd2" name="genie_pwd2" placeholder="새 비밀번호를 입력하세요"><br/><br/>
			<input type="submit" value="비밀번호 변경"/><br/>
	</div>
</form>
<section>

 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>   
<script>

    const URLSearch = new URLSearchParams(location.search);
    const genie_id = URLSearch.get("genie_id"); 


    $(function(){

        $("#logFrm").submit(function(){

            if($("#genie_pwd").val()==""){
                alert("비밀번호를 입력하세요..");
                $("#user_id").focus();

                return false;
            }

            if($("#genie_pwd").val() != $("#genie_pwd2").val()){
                alert("비밀번호가 일치하지 않습니다.");
                $("#genie_pwd").focus();

                return false;
            }
                return true;
            });
        });
    

</script>
