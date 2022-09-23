package com.genie.myapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.ProductService;
import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.ProductVO;
import com.genie.myapp.vo.SellerVO;

@RestController
@RequestMapping("/")
public class ProductController{
	
	@Autowired
	ProductService service;
	ModelAndView mav = null;

	//제품 리스트보기
	@GetMapping("product")
	public ModelAndView product(ProductVO PVO) {

		mav = new ModelAndView();
		mav.addObject("plist", service.Product(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("/product");
		
		return mav;
	}
	//제폼 상세페이지
	@GetMapping("product_detail")
	public ModelAndView product_detail(@RequestParam("product_id") int product_id,ProductVO PVO, SellerVO svo) {


		mav = new ModelAndView();
		mav.addObject("pvo", service.getProduct(product_id));
		mav.addObject("svo", svo);
		mav.setViewName("/product_detail");

		return mav;
	}
// -----------------------------------------------------------장바구니---------------------------------------------------------------//
	@GetMapping("cart")
	public ModelAndView cart(CartVO cVO) {
		
		mav = new ModelAndView();
		mav.addObject("clist", service.getCart(cVO));
		mav.addObject("cvo", cVO);
		mav.setViewName("/cart");

		return mav;
	}

	@PostMapping("addCart")
	public ModelAndView addCart(CartVO cVO){
		mav=new ModelAndView();


		return mav;
	}
}