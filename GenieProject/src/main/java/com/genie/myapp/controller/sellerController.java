package com.genie.myapp.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/seller/*")
public class SellerController {
	
	ModelAndView mav = null;
	
	//업체 회원가입 폼 보기
	@GetMapping("sellerForm")
	public ModelAndView sellerForm() {
		mav = new ModelAndView();
		mav.setViewName("seller/sellerForm");
		return mav;
	}
	// Seller 홈
	@GetMapping("sellerMain")
	public ModelAndView sellerMain() {
		mav = new ModelAndView();
		mav.setViewName("seller/sellerMain");
		return mav;
	}
	
	// Seller 주문관리 
	@GetMapping("sellerOrder")
	public ModelAndView sellerOrder() {
		mav = new ModelAndView();
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
	
}
