<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>

<script>
    $(document).ready(function(){
	
        const URLSearch = new URLSearchParams(location.search);
        const user_name = URLSearch.get("user_name"); 
        
        // 인증번호 발송했는지 여부
        const authNum = (function(){
            let send = false;
            const isSend = function(set){
                if(!set) {
                    return send;
                } else {
                    send = set;
                }
            }
            return {isSend : isSend}
        })();
        
        
        // 인증번호 보내기
        function sendAuthNum(data, func){
            $.ajax({
                url: "/send/authNum",
                type: "POST",
                data: data 
            })
            .then(function(result){
                swal({
                    text: result
                })
                .then(function(){
                    func();
                })
            })
            .fail(function(){
                alert("에러");
            })
        }
        
            
        // 인증번호 보낸 뒤 함수
        function sendAuthNumFnc(inputBox){
            inputBox.prop("readonly", false);
            inputBox.focus();
            timer.start();
            authNum.isSend(true);
        }
        
        
        // 이메일로 인증번호 보내기
        $(".auth_num_send_eemail").click(function(){
            const data = {
                email : $(".email").val(),
                user_name : user_name
            }
            if(!emailCheck(data.email)) {
                swal("이메일을 정확히 입력해주세요");
                return;
            }
            
            if(!timer.status().isStart) {
                swal('잠시 후 다시 시도해주세요');
                return;
            }
            
            const inputBox = $(this).siblings(".auth_num");
            
            // username의 이메일이 맞는지 확인 
            $.ajax({
                url: "/find/password/emailCheck",
                type: "GET",
                data : data
            })
            .then(function(result){
                if(result) {
                    sendAuthNum({email : data.email}, function(){
                        sendAuthNumFnc(inputBox);
                    });
                    
                } else {
                    swal("가입하신 이메일과 일치하지 않습니다");
                }
            })
            .fail(function(){
                alert("에러");
            })
        })	
    
    
    
        // 인증완료 후 함수
        function authCompletion(){
            $.ajax({
                url: "/auth/completion",
                type: "POST",
            })
            .then(function(){
                location.href = "/modify/password?user_name=" + user_name;
            })
            .fail(function(result){
                swal(result.responseText);
            })
        }
    
    
    
    
        // 인증번호 입력 후 다음 버튼
        $(".move_modify").click(function(){
            if(!authNum.isSend()) {
                swal("인증번호를 발송해주세요");
                return;
            }
            let authNumber = "";
            
            $("input[type=radio]:checked").each(function(){
                authNumber = $(this).siblings(".auth").find(".auth_num").val(); 
            })
            
            if(!authNumber) {
                return;
            }
            
            $.ajax({
                url: "/send/authNumCheck",
                type: "POST",
                data: {authNum : authNumber}
            })
            .then(function(){
                authCompletion();
            })
            .fail(function(result){
                swal(result.responseText);
            })
        })
    })

</script>
	<section class="find_info">
		<div class="find">
			<div id="find_by_email">
				<input type="radio" id="email" value="email" name="find">
				<label for="email">가입한 이메일로 찾기</label>
				
				<div class="auth">
					<input type="email" class="email" placeholder="이메일을 입력해주세요" maxlength="50">
					<button type="button" class="auth_num_send_eemail">인증번호받기</button>
					<input type="text" class="auth_num" name="authNum" readonly maxlength="6"  placeholder="인증번호6자리입력">
					<span class="timer"></span>
				</div>
			</div>
        </div>
				
		<button class="move_modify">다음</button>
	</section>