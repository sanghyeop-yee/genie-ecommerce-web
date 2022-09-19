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

import com.genie.myapp.service.AdministerService;
import com.genie.myapp.service.SellerService;
import com.genie.myapp.service.UserService;

import com.genie.myapp.vo.AccountVO;
import com.genie.myapp.vo.AdministerVO;
import com.genie.myapp.vo.ProductVO;
import com.genie.myapp.vo.SellerVO;
import com.genie.myapp.vo.UserVO;


@Controller
@RequestMapping("/user/*")
public class UserController {

	@Inject
	UserService service;

	@Inject
	SellerService service_s;

	@Inject
	AdministerService service_a;

	ModelAndView mav;

	@GetMapping("login")
	public ModelAndView adminLogin() {
		mav = new ModelAndView();
		mav.setViewName("user/login");
		return mav;
	}

	@PostMapping("loginOK")
	public ModelAndView loginOk(UserVO vo, SellerVO svo, AdministerVO avo, HttpSession session ) {
		
		mav = new ModelAndView();

		UserVO logVO = service.loginOk(vo);
		SellerVO slogVO =service_s.loginOk(svo);
		AdministerVO alogVO = service_a.loginOk(avo);
	
		if(logVO != null) {//로그인 성공

			session.setAttribute("logId", logVO.getGenie_id());
			session.setAttribute("logName", logVO.getUser_name());
			session.setAttribute("logStatus","Y");
			mav.setViewName("redirect:/");
			
			return mav;

		}else if(slogVO !=null){

			session.setAttribute("logId", slogVO.getGenie_id());
			session.setAttribute("logName", slogVO.getCompany_name());
			session.setAttribute("logStatus","Y");
			mav.setViewName("redirect:/seller/sellerMain");

			return mav;

		}else if(alogVO != null){

			//session.setAttribute("logId", );
			//session.setAttribute("logName", );
			session.setAttribute("logStatus","Y");
			mav.setViewName("redirect:/admin/adminTag");

			return mav;

		}else{//로그인 실패

			session.setAttribute("msg","아이디 또는 비밀번호 오류입니다.");
			mav.setViewName("redirect:/user/login");

			return mav;
			
		}
	}

	@GetMapping("logout")
	public ModelAndView logout(HttpSession session) {
		mav = new ModelAndView();
		session.invalidate();
		mav.setViewName("redirect:/");
		
		return mav;
	}

	//회원가입 폼으로 이동
	@GetMapping("Registration")
	public ModelAndView RegistragionForm() {

		mav = new ModelAndView();
		mav.setViewName("/user/Registration");

		return mav;
	}

	 //아이디 중복검사
	@GetMapping("idCheck")
	public ModelAndView idCheck(String genie_id) {

		//DB조회  : 아이디가 존재하는지 확인
		int cnt = service.idCheck(genie_id);

		mav = new ModelAndView();

		mav.addObject("idCnt",cnt);
		mav.addObject("genie_id",genie_id);
		mav.setViewName("user/idCheck");

		return mav;
	}

	//회원 가입하기
	@PostMapping("UserWrite") 
	public ResponseEntity<String> UserWrite(UserVO vo, AccountVO avo) {

		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type","text/html; charset=utf-8");
		
			

		try {//회원가입 성공
			
			int account = service.AccountWrite(avo);
			int user = service.UserWrite(vo);
			//int Delivery = service.Delivery(vo);

			String msg = "<script>";
			msg += "alert('회원가입을 성공하였습니다.');";
			msg += "location.href='/user/login';";
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

//////////////////////////////////////////////////////////

	//마이페이지
	@GetMapping("MyPage")
	public ModelAndView MyPage(HttpSession session) {

		String genie_id = (String)session.getAttribute("logId"); 
		UserVO vo = service.getUser(genie_id);

		String seller_id = (String)session.getAttribute("logId"); 
		SellerVO svo = service_s.getSeller(seller_id);

		mav = new ModelAndView();

		mav.addObject("svo",svo);
		mav.addObject("vo",vo);
		mav.setViewName("/user/MyPage");
	
		return mav;
	}
  
	//회원정보 수정 DB
	@PostMapping("UserEditOk")
	public ResponseEntity<String> UserEditOk(UserVO vo) {
		
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

	//주문목록/배송조회
	@GetMapping("MyOrderList")
	public ModelAndView MyOrderList(HttpSession session, ProductVO pVo) {

		String genie_id = (String)session.getAttribute("logId");
		UserVO vo = service.getUser(genie_id);
		
		mav = new ModelAndView();
		mav.addObject("pVo",pVo);
		mav.addObject("vo",vo);
		mav.setViewName("/user/MyOrderList");
	
		return mav;
	}

	//배송지 관리
	@GetMapping("MyDeliveryList") 
	public ModelAndView MyDeliveryLIst(HttpSession session) {
		
		String genie_id = (String)session.getAttribute("logId");
		UserVO vo = service.getUser(genie_id);


		new ModelAndView();

		
		mav = new ModelAndView();

		mav.addObject("vo",vo);
		mav.setViewName("/user/MyDeliveryList");
	
		return mav;
	}

	//회원정보 수정 DB
	@PostMapping("MyDeliveryEditOk")
	public ResponseEntity<String> MyDeliveryEditOk(UserVO vo) {
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type","text/html; charset=UTF-8");
	

		String msg = "<script>";
		int cnt = service.MyDeliveryEditOk(vo);

		if(cnt>0) {//수정됨
			msg+="alert('배송지가 등록되었습니다.');";
		}else {//수정못함
			msg+="alert('배송지 등록에 실패하였습니다.');";	
		}
		msg+="location.href='/user/MyPage';</script>";
		
		entity = new ResponseEntity<String>(msg,headers, HttpStatus.OK);

		return entity;
	}
  
	//나의 문의사항 
	@GetMapping("MyInquiryList") 
	public ModelAndView MyInquiryList(HttpSession session) {
		
		String genie_id = (String)session.getAttribute("logId");
		UserVO vo = service.getUser(genie_id);

		ModelAndView mav = new ModelAndView();
		mav.addObject("vo",vo);
		mav.setViewName("/user/MyInquiryList");
	
		return mav;
	}
  
	////////////////////////////////////////////////////////////////////

	@GetMapping("PwdEdit")
	public ModelAndView PwdChange(HttpSession session) {
		
		String genie_id = (String)session.getAttribute("logId"); 
		UserVO vo = service.getUser(genie_id);
		
		mav = new ModelAndView();
		mav.addObject("vo",vo);
		mav.setViewName("/user/PwdEdit");
		
		return mav;
	}

	@PostMapping("PwdEditOk")
	public ResponseEntity<String> PwdEditOk(UserVO vo) {
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type","text/html; charset=UTF-8");
		
		String msg = "<script>";
		int cnt = service.PwdEditOk(vo);
		
		if(cnt>0) {//수정됨
			msg+="alert('비밀번호가 수정되었습니다.');";
		}else {//수정못함
			msg+="alert('비밀번호 수정이 실패하였습니다.');";	
		}
		msg+="window.close();</script>";
		
		entity = new ResponseEntity<String>(msg,headers, HttpStatus.OK);

		return entity;
	}
////////////////////////////////////////////////////////////////
}