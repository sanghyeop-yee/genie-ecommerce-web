package com.genie.myapp.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.MbtiService;
import com.genie.myapp.vo.SellerProductVO;

@Controller
@RequestMapping("/")
public class MbtiController {
	
	@Inject
	MbtiService service;
	ModelAndView mav;
	
	//mbti 메인페이지
	@GetMapping("mbti/mbtiMain")
	public ModelAndView genieMbti() {
		mav = new ModelAndView();
		mav.setViewName("mbti/mbtiMain");
		return mav;
	}
	
	//mbti 상품 리스트
	@GetMapping("mbti/{mbti}")
	public ModelAndView mbtiList(@PathVariable("mbti") String mbti) {
		mav = new ModelAndView();
		//System.out.println(mbti);
		
		mav.addObject("plist", service.getProduct(mbti));
		//mav.addObject("pvo", pvo);
		mav.setViewName("mbti/mbtiList");
		
		return mav;
	}
}
