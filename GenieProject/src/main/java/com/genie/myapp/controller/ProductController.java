package com.genie.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.genie.myapp.vo.ProductVO;

@Controller
@RequestMapping("/")
public class ProductController{
	

	ModelAndView mav;

	@GetMapping("product")
	public ModelAndView product(ProductVO jp1) {
		mav = new ModelAndView();
		mav.addObject("jp", jp1);
		mav.setViewName("/product");
		return mav;
	}
	
}