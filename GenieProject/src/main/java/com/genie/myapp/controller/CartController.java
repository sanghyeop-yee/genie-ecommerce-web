package com.genie.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.vo.ProductVO;

@Controller
@RequestMapping("/")
public class CartController{

	ModelAndView mav;
	
	@GetMapping("cart")
	public ModelAndView cart(ProductVO cart) {
		mav = new ModelAndView();
		mav.addObject("c", cart);
		mav.setViewName("/cart");
		return mav;
	}
}