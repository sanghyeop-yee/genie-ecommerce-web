package com.genie.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class sellerController {
	
	@RequestMapping("/sellerHome")
	public String seller() {
		return "seller/sellerHome";
	}
}
