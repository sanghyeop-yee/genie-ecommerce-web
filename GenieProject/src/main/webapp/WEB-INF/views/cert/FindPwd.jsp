<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<style>
  @import url('https://fonts.googleapis.com/css?family=Poppins');
 
.find_info {
	width: 350px;
	max-width: 90%;
	margin: 0 auto;
	margin-top: 50px;
}
 
.find_id_page .find_info input, .find_password_page .find_info input {
	border-radius: 5px;
	border: 1px solid #666;
	width: 75%;
	min-width: 150px;
	height: 30px;
	padding: 0 5px;
}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>

$(document).ready(function(){
	
	function usernameCheck() {
		let submit = false;
		const username = $("input[name=username]").val().replaceAll(" ", "");
		if(!username) {
			return false;
		}
		
		$.ajax({
			url: "/overlapCheck",
			type: "GET",
			async: false,
			data: {
				value : username,
				valueType : "username"
			}
		})
		.done(function(result){
			if(result == 1) {
				submit = true;
			} 
		})
		.fail(function(){
			alert("에러");
		})
		return submit;
	}
	
	
	$(".next_page").click(function(){
		if(!usernameCheck()) {
			swal("아이디를 정확히 입력해주세요");
			return;
		}
		const data = {
			username : $(".username").val(),	
		}
		
		$.ajax({
			url: "/find/password/auth",
			type: "POST",
			data: data
		})
		.then(function(result){
			location.href= "/find/password/auth?username=" + result;
		})
		.fail(function(){
			alert('에러');
		})
	})
	
		
	})


</script>
<section class="home">
    <div class="find_info">
		<h3>가입하신 아이디를 입력해주세요</h3>
		<input type="text" name="user_name" class="user_name">
		<button class="find_btn">찾기</button>
	</div>
<section>