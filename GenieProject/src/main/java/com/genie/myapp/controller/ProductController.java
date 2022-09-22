package com.genie.myapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.ProductService;
import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.ProductVO;

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
	public ModelAndView product_detail(ProductVO PVO) {

		mav = new ModelAndView();
		mav.addObject("plist", service.Product(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("/product_detail");

		return mav;
	}
// -----------------------------------------------------------장바구니---------------------------------------------------------------//
	@GetMapping("cart")
	public ModelAndView cart(CartVO cVO) {
		
		mav = new ModelAndView();
		mav.addObject("clist", service.Cart(cVO));
		mav.addObject("cvo", cVO);
		mav.setViewName("/cart");

		return mav;
	}
// -----------------------------------------------------------메인페이지 카테고리-----------------------------------------------------------------//
	
	@GetMapping("category/birthday")
	public ModelAndView birthdayAndView(ProductVO PVO) {

		mav = new ModelAndView();
		mav.addObject("plist", service.Product(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("category/birthday");

		return mav;
	}

	@GetMapping("category/holiday")
	public ModelAndView holidayAndView(ProductVO PVO) {

		mav = new ModelAndView();
		mav.addObject("plist", service.Product(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("category/holiday");

		return mav;
	}
	@GetMapping("category/anniversary")
	public ModelAndView anniversaryAndView(ProductVO PVO) {

		mav = new ModelAndView();
		mav.addObject("plist", service.Product(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("category/anniversary");

		return mav;
	}
	@GetMapping("category/houses")
	public ModelAndView housesAndView(ProductVO PVO) {

		mav = new ModelAndView();
		mav.addObject("plist", service.Product(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("category/houses");
		
		return mav;
	}
	@GetMapping("category/surprise")
	public ModelAndView surpriseAndView(ProductVO PVO) {
		
		mav = new ModelAndView();
		mav.addObject("plist", service.Product(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("category/surprise");

		return mav;
	}
	@GetMapping("category/cheer")
	public ModelAndView cheerAndView(ProductVO PVO) {

		mav = new ModelAndView();
		mav.addObject("plist", service.Product(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("category/cheer");

		return mav;
	}
	@GetMapping("category/camping")
	public ModelAndView campingAndView(ProductVO PVO) {

		mav = new ModelAndView();
		mav.addObject("plist", service.Product(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("category/camping");

		return mav;
	}
	@GetMapping("category/pet")
	public ModelAndView petAndView(ProductVO PVO) {

		mav = new ModelAndView();
		mav.addObject("plist", service.Product(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("category/pet");

		return mav;
	}
	@GetMapping("category/exercise")
	public ModelAndView exerciseAndView(ProductVO PVO) {

		mav = new ModelAndView();
		mav.addObject("plist", service.Product(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("category/exercise");

		return mav;
	}
	@GetMapping("category/kidult")
	public ModelAndView kidultAndView(ProductVO PVO) {
		
		mav = new ModelAndView();
		mav.addObject("plist", service.Product(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("category/kidult");
		
		return mav;
	}
	@GetMapping("category/cooking")
	public ModelAndView cookingAndView(ProductVO PVO) {

		mav = new ModelAndView();
		mav.addObject("plist", service.Product(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("category/cooking");
		
		return mav;
	}
	@GetMapping("category/homeparty")
	public ModelAndView homepartyAndView(ProductVO PVO) {
		
		mav = new ModelAndView();
		mav.addObject("plist", service.Product(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("category/homeparty");
		
		return mav;
	}


	
	
}