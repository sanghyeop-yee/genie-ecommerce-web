package com.genie.myapp.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.CertService;


@Controller
@RequestMapping("/cert/*")
public class CertController {

	@Autowired
	CertService CertService;

	ModelAndView mav;
    
    @GetMapping("FindId")
	public ModelAndView FindId() {
		mav = new ModelAndView();
		mav.setViewName("/cert/FindId");

		return mav;
	}

	// 메일로 아이디 보내기
	@PostMapping("sendUserId")
	public ResponseEntity<Object> sendEmail(String user_email){
		List<String> genie_id =CertService.FindId(user_email);
	
		if(genie_id.size() != 0) {
			CertService.sendUserId(user_email, genie_id);
		}
		return new ResponseEntity<Object>(HttpStatus.OK);
	}

	///////////////////////////////////////////////////////

	@GetMapping("FindPwd")
	public ModelAndView FindPwd() {
		mav = new ModelAndView();
		mav.setViewName("/cert/FindPwd");
		
		return mav;
	}
	
	//비밀번호와 연결될 아이디 구분  (보류)
	@GetMapping("FindEmail")
	public ResponseEntity<Object> FindEmail(String genie_id){
		List<String> user_email =CertService.FindEmail(genie_id);
		
		if(user_email.size() != 0) {
			CertService.emailCheck(genie_id, user_email);
		}
		return new ResponseEntity<Object>(HttpStatus.OK);
	}	
	
	@GetMapping("emailCheck")
	public ResponseEntity<Boolean> emailCheck(String genie_id, List<String> user_email){
	boolean emailCheck = CertService.emailCheck(genie_id, user_email);

		return new ResponseEntity<Boolean>(emailCheck, HttpStatus.OK);
	}
	
	@PostMapping("FindPwd_auth")
	public ResponseEntity<Object> authenticateUser(String genie_id, HttpSession session) {

    	Map<String, Object> authStatus = new HashMap<>();
		authStatus.put("genie_id", genie_id);

		authStatus.put("status", false);
		
		session.setMaxInactiveInterval(300);
		session.setAttribute("authStatus", authStatus);

		return new ResponseEntity<Object>(genie_id, HttpStatus.OK);
	}



	// 인증번호 보내기
	@PostMapping("authNum")
	private ResponseEntity<String> authNum(String user_email, HttpSession session){
		String authNum = "";
		for(int i=0;i<6;i++) {
			authNum += (int)(Math.random() * 10);
		}
		
		System.out.println("인증번호 : " + authNum);
		
		if(user_email != null) {
			//System.out.println("이메일로 인증번호 보내기");
			CertService.sendAuthNum(user_email, authNum);
		}
		
		
		Map<String, Object> authNumMap = new HashMap<>();
    
		long createTime = System.currentTimeMillis();
		long endTime = createTime + (300 *1000);

		
		authNumMap.put("createTime", createTime);
		authNumMap.put("endTime", endTime);
		authNumMap.put("authNum", authNum);
		
		session.setMaxInactiveInterval(300);
		session.setAttribute("authNum", authNumMap);
		
		return new ResponseEntity<String>("인증번호가 전송되었습니다", HttpStatus.OK);
	}


	//인증번호 보내기 페이지
	@GetMapping("FindPwd_authOk")

	public String auth(String user_name, HttpSession session) {
		Map<String, Object> authStatus = (Map<String, Object>) session.getAttribute("authStatus");
		if(authStatus == null || !user_name.equals(authStatus.get("user_name"))) {
			return "redirect:/cert/FindPwd";
		}
		
		return "cert/FindPwd_auth";
	}


	// 인증 완료 후

	@PostMapping("authCOM")
	public ResponseEntity<String> authCompletion(HttpSession session) {
		Map<String, Object> authStatus = (Map<String, Object>) session.getAttribute("authStatus");
		if(authStatus == null) {
			return new ResponseEntity<String>("인증시간이 만료되었습니다", HttpStatus.BAD_REQUEST);
		}
		authStatus.put("status", true);
		return new ResponseEntity<String>(HttpStatus.OK);
	}
}
