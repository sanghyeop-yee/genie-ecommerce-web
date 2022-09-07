package com.genie.myapp.controller;

import java.nio.charset.Charset;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.UserService;
import com.genie.myapp.vo.UserVO;


@Controller
@RequestMapping("/user/*")
public class UserController {
	@Inject
	UserService service;

	@GetMapping("login")
	public ModelAndView adminLogin() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/login");
		return mav;
	}

	@PostMapping("loginOK")
	public ModelAndView loginOk(UserVO vo, HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		UserVO logVO = service.loginOk(vo);
	
		if(logVO != null) {//로그인 성공
			session.setAttribute("logId", logVO.getUser_id());
			session.setAttribute("logName", logVO.getUser_name());
			session.setAttribute("logStatus","Y");
			mav.setViewName("redirect:/");
			
		}else {//로그인 실패
			
			mav.setViewName("redirect:/login");
		}
		return mav;
	}

	@GetMapping("logout")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		session.invalidate();
		mav.setViewName("redirect:/");
		
		return mav;
	}

	//회원가입 폼으로 이동
	@GetMapping("Registragion")
	public ModelAndView RegistragionForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/Registragion");
		return mav;
	}

	 //아이디 중복검사
	@GetMapping("idCheck")
	public ModelAndView idCheck(String user_id) {
		ModelAndView mav = new ModelAndView();
		
		//DB조회  : 아이디가 존재하는지 확인
		int cnt = service.idCheck(user_id);
		 
		mav.addObject("idCnt",cnt);
		mav.addObject("user_id",user_id);
		mav.setViewName("user/idCheck");

		return mav;
	}

	//회원 가입하기
	@PostMapping("UserWrite") 
	public ResponseEntity<String> UserWrite(UserVO vo) {

		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type","text/html; charset=utf-8");
		
		try {//회원가입 성공
			int result = service.UserWrite(vo);

			String msg = "<script>";
			msg += "alert('회원가입이 성공하였습니다.');";
			msg += "location.href='/user/login'";
			msg += "</script>";
			entity = new ResponseEntity<String>(msg,headers,HttpStatus.OK);

		}catch(Exception e) {//회원등록 실패 
			String msg = "<script>";
			msg += "alert('회원가입이 실패하였습니다.');";
			msg += "history.back()";
			msg += "</script>";
			entity = new ResponseEntity<String>(msg,headers,HttpStatus.BAD_REQUEST);
			
			e.printStackTrace();
		}
		return entity;
	}

	//마이페이지
	@GetMapping("MyPage")
	public ModelAndView MyPage(HttpSession session) {
		String user_id = (String)session.getAttribute("logId");

		UserVO vo = service.getUser(user_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo",vo);
		mav.setViewName("/user/MyPage");
	
		return mav;
	}

	//회원정보 수정 DB
	@PostMapping("UserEditOk")
	public ResponseEntity<String> memberEditOk(UserVO vo) {
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type","text/html; charset=UTF-8");
		
		String msg = "<script>";
		int cnt = service.UserEditOk(vo);
			
		if(cnt>0) {//수정됨
			msg+="alert('회원정보가 수정되었습니다.');";
		}else {//수정못함
			msg+="alert('회원 정보 수정이 실패하였습니다.');";	
		}
		msg+="location.href='/user/MyPage';</script>";
		
		entity = new ResponseEntity<String>(msg,headers, HttpStatus.OK);

		return entity;
	}




//////////////////////////////////////////////////////////
	//비밀번호 변경 창
	@GetMapping("ModifyPassword")
	public ModelAndView ModifyPassword(String user_id, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		//DB조회  : 아이디가 존재하는지 확인
		int cnt = service.idCheck(user_id);
		 
		mav.addObject("idCnt",cnt);
		mav.addObject("user_id",user_id);
		mav.setViewName("/user/ModifyPassword");

		return mav;
	}
	
	//비밀번호 변경
	@GetMapping("ModifyPasswordOk")
	public ResponseEntity<String> ModifyPassword(UserVO vo) {
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type","text/html; charset=UTF-8");
		
		String msg = "<script>";
		int cnt = service.UserEditOk(vo);
			
		if(cnt>0) {//수정됨
			msg+="alert('비밀번호가 수정되었습니다.');";
		}else {//수정못함
			msg+="alert('비밀번호 수정이 실패하였습니다.');";	
		}
		msg+="location.href='/user/MyPage';</script>";
		
		entity = new ResponseEntity<String>(msg,headers, HttpStatus.OK);

		return entity;
	}

	//주문목록/배송조회
	@GetMapping("MyOrderList")
	public ModelAndView MyOrderList(HttpSession session) {
		String user_id = (String)session.getAttribute("logId");

		UserVO vo = service.getUser(user_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo",vo);
		mav.setViewName("/user/MyOrderList");
	
		return mav;
	}

	//나의 문의사항 
	@GetMapping("MyInquiryList") 
	public ModelAndView MyInquiryList(HttpSession session) {
		String user_id = (String)session.getAttribute("logId");

		UserVO vo = service.getUser(user_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo",vo);
		mav.setViewName("/user/MyInquiryList");
	
		return mav;
	}
}


