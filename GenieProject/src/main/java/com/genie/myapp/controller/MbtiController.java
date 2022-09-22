package com.genie.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class MbtiController {
	ModelAndView mav;
	
	@GetMapping("genieMbti")
	public ModelAndView genieMbti() {
		mav = new ModelAndView();
		mav.setViewName("mbti/mbtiMain");
		return mav;
	}
}
