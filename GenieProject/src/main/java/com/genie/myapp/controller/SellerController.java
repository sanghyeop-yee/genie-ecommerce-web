package com.genie.myapp.controller;

import java.nio.charset.Charset;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.SellerService;

import com.genie.myapp.vo.SellerProductVO;
import com.genie.myapp.vo.AccountVO;
import com.genie.myapp.vo.OrderVO;


import com.genie.myapp.vo.SellerVO;

@RestController
@RequestMapping("/seller/*")
public class SellerController {
	
	@Inject
	SellerService service;
	ModelAndView mav = null;
	
	//업체 회원가입 폼 보기
	@GetMapping("sellerForm")
	public ModelAndView sellerForm() {
		mav = new ModelAndView();
		mav.setViewName("seller/sellerForm");
		return mav;
	}
	// Seller(UI 참고용)
	@GetMapping("sellerHome")
	public ModelAndView sellerHome() {
		mav = new ModelAndView();
		mav.setViewName("seller/sellerHome");
		return mav;
	}

	// Seller 메인페이지
	@GetMapping("sellerMain")
	public ModelAndView sellerMain() {
		mav = new ModelAndView();
		mav.setViewName("seller/sellerMain");
		return mav;
	}
	
	// Seller 주문관리 
	@GetMapping("sellerOrder")
	public ModelAndView sellerOrder(OrderVO vo) {
		mav = new ModelAndView();
		System.out.println(vo.toString());
		mav.addObject("list", service.sellerOrder(vo));
		mav.addObject("vo",vo);
		mav.setViewName("seller/sellerOrder");
		return mav;
	}
	
	// Seller 매출관리
	@GetMapping("sellerSales")
	public ModelAndView sellerSales() {
		mav = new ModelAndView();
		mav.setViewName("seller/sellerSales");
		return mav;
	}
	
	//업체 상품등록 폼 보기
	@GetMapping("productForm")
	public ModelAndView productForm() {
		mav = new ModelAndView();
		mav.setViewName("seller/sellerProductForm");
		return mav;
	}
	
	//seller 상품관리 페이지
	@GetMapping("sellerProduct")
	public ModelAndView sellerProduct() {
		mav = new ModelAndView();
		mav.setViewName("seller/sellerProduct");
		return mav;
	}
	
	//아이디 중복검사
	@GetMapping("sellerIdCheck")
	public ModelAndView sellerIdCheck(String genie_id) {
		
		//DB조회 : 아이디 중복 확인
		int cnt = service.idCheck(genie_id);
		
		mav = new ModelAndView();
		mav.addObject("idCnt",cnt);
		mav.addObject("genie_id",genie_id);
		mav.setViewName("seller/sellerIdCheck");
		return mav;
	}
	
	//seller 회원가입하기
	@PostMapping("sellerWrite")
	public ResponseEntity<String> sellerWrite(SellerVO vo, AccountVO avo){
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type", "text/html; charset=utf-8");
		
		try {//회원가입성공
			int account = service.AccountWrite(avo);
			int seller = service.sellerWrite(vo);
			
			
			String msg = "<script>";
			msg += "alert('회원가입을 성공하였습니다.');";
			msg += "location.href='/user/login';";
			msg += "</script>";
			entity = new ResponseEntity<String>(msg,headers,HttpStatus.OK);
			
		}catch(Exception e) {//회원가입실패
			
			String msg = "<script>";
			msg += "alert('회원가입에 실패하였습니다.');";
			msg += "history.back();";
			msg += "</script>";
			entity = new ResponseEntity<String>(msg,headers,HttpStatus.BAD_REQUEST);
			
			e.printStackTrace();
		}
		return entity;
	}
	
	//seller 상품등록
	@PostMapping("productWrite")
	public ResponseEntity<String> productWrite(SellerProductVO vo, HttpServletRequest request){
		vo.setGenie_id((String)request.getSession().getAttribute("logId")); //세션 로그인 아이디
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type", "text/html; charset=utf-8");
		
		try {//상품등록 성공
			int result = service.productWrite(vo);
			
			String msg = "<script>";
			msg += "alert('상품이 등록되었습니다.');";
			msg += "location.href='/seller/sellerProduct';";
			msg += "</script>";
			entity = new ResponseEntity<String>(msg,headers,HttpStatus.OK);
			
		}catch(Exception e) {//상품등록 실패
			
			String msg = "<script>";
			msg += "alert('상품등록이 실패하였습니다.');";
			msg += "history.back();";
			msg += "</script>";
			entity = new ResponseEntity<String>(msg,headers,HttpStatus.BAD_REQUEST);
			
			e.printStackTrace();
		}
		return entity;
	}
}
