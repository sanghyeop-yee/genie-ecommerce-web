package com.genie.myapp.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.CertService;
import com.genie.myapp.service.UserService;


@Controller
@SuppressWarnings("unchecked")
@RequestMapping("/cert/*")
public class CertController {

	@Inject
	UserService service;
	
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
	
	@ResponseBody
	@GetMapping("overlapCheck")
	public int overlapCheck(String value, String valueType) {
//		value = 중복체크할 값
//		valeuType = username, nickname
		System.out.println(valueType);
		System.out.println(value);
		int count = CertService.overlapCheck(value, valueType);
		
		System.out.println(count);
		return count;
	}
	
	@GetMapping("emailCheck")
	public ResponseEntity<Boolean> emailCheck(String genie_id, String user_email){
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

	// 인증번호 보내기 페이지
	@GetMapping("FindPwd_auth")
	public String auth(String genie_id, HttpSession session) {
    	Map<String, Object> authStatus = (Map<String, Object>) session.getAttribute("authStatus");
    	if(authStatus == null || !genie_id.equals(authStatus.get("genie_id"))) {
        	return "redirect:/cert/FindPwd";
   		}
    	return "/cert/FindPwd_auth";
	}



	// 인증번호 보내기
	@PostMapping("authNum")
	private ResponseEntity<String> authNum(String user_email, HttpSession session){
		String authNum = "";
		for(int i=0;i<6;i++) {
			authNum += (int)(Math.random() * 10);
		}
		
		System.out.println("인증번호는 : " + authNum);
		System.out.println("이메일은 : " + user_email);
		
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

	// 인증번호가 맞는지 확인
	@PostMapping("authNumCheck")
	private ResponseEntity<String> authNumCheck(String authNum, HttpSession session){

		Map<String, Object> sessionAuthNumMap = (Map<String, Object>) session.getAttribute("authNum");
		String msg = "";
		
		if(sessionAuthNumMap == null) {
			msg = "인증번호를 전송해주세요";
			return new ResponseEntity<String>(msg, HttpStatus.BAD_REQUEST);
		}
		
		// 인증번호 만료시간
		long endTime = (long) sessionAuthNumMap.get("endTime");
		
		// 현재시간이 만료시간이 지났다면
		if(System.currentTimeMillis() > endTime) {
			msg = "인증시간이 만료되었습니다";
			session.setAttribute(authNum, null);
			session.setMaxInactiveInterval(0);
			return new ResponseEntity<String>(msg, HttpStatus.BAD_REQUEST);
		}
		
		// 인증번호
		String sessionAuthNum = (String) sessionAuthNumMap.get("authNum");
		
		if(!authNum.equals(sessionAuthNum)) {
			msg = "인증번호가 일치하지 않습니다";
			return new ResponseEntity<String>(msg, HttpStatus.BAD_REQUEST);
		} else {
			// 인증번호가 일치하면
			return new ResponseEntity<String>(HttpStatus.OK);
		}
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

	// 비밀번호 변경 페이지
	@GetMapping("modify_pwd")
	public String modifyPassword(String genie_id, HttpSession session) {
		Map<String, Object> authStatus = (Map<String, Object>) session.getAttribute("authStatus");
		
		if(authStatus == null || !genie_id.equals(authStatus.get("genie_id"))) {
			return "redirect:cert/modify_pwd";
		}
		
		// 페이지에 왔을때 인증이 안되있다면
		if(!(boolean) authStatus.get("status")) {
			return "redirect:/cert/FindPwd_auth";
		}
		return "/cert/password";
	}


	// 비밀번호 변경
	@PatchMapping("modify_pwd")
	public ResponseEntity<String> modifyPassword(String user_pwd, String genie_id, HttpSession session) {
		CertService.PwdEditOk(genie_id, user_pwd);
		session.setMaxInactiveInterval(0);
		session.setAttribute("authStatus", null);

		return new ResponseEntity<String>("비밀번호를 변경했습니다",HttpStatus.OK);
	}


}
