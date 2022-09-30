package com.genie.myapp.controller;

import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.ProductService;
import com.genie.myapp.service.SellerService;
import com.genie.myapp.service.UserService;
import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.ProductVO;
import com.genie.myapp.vo.TagVO;


@RestController
@RequestMapping("/")
public class ProductController{
	
	@Autowired
	ProductService productService;

	@Autowired
	SellerService sellerService;

	@Autowired
	UserService userService;
	

	ModelAndView mav = null;
	Map<String, Object> map = null;

	//제품 리스트보기
	@GetMapping("product")
	public ModelAndView product(ProductVO PVO) {

		mav = new ModelAndView();
		mav.addObject("plist", productService.listProduct(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("/product");

		return mav;
	}

	//제폼 상세페이지
	@GetMapping("product_detail")
	public ModelAndView product_detail(@RequestParam("product_id") int product_id) {

		mav = new ModelAndView();
		mav.addObject("pvo", productService.getProduct(product_id));
		mav.addObject("svo", productService.getSeller(product_id));
		mav.setViewName("/product_detail");

		return mav;
	}
//---------------------------------------------- 지니페이지 상품 정보 검색 ----------------------------------------------------------//
	@PostMapping("selectProduct")
	public ModelAndView selectProduct(ProductVO pvo, TagVO tvo) {
		
		map = new HashMap<String, Object>();
		map.put("p", pvo);
		map.put("t", tvo);
		
		mav = new ModelAndView();
		mav.addObject("plist",productService.selectProduct(map));
		mav.setViewName("/product");
		
		return mav;
	}
// -----------------------------------------------------------장바구니---------------------------------------------------------------//
	@GetMapping("cart")
	public ModelAndView cart(CartVO cvo, HttpSession session) {
		
		String genie_id = (String)session.getAttribute("logId"); 
		List<CartVO> cartList = productService.getCart(genie_id);
		//System.out.print(cartList);

		mav = new ModelAndView();
		mav.addObject("clist", cartList);
		mav.setViewName("/cart");

		return mav;
	}

	@PostMapping("addCart")
	public ResponseEntity<String> addCart(CartVO cvo){

		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type","text/html; charset=utf-8");

		try {
			
			int addCart = productService.addCart(cvo);
			System.out.print(addCart);


			String msg = "<script>";
			msg += "alert('장바구니에 추가되었습니다.');";
			msg += "location.href='/cart';";
			msg += "</script>";
			entity = new ResponseEntity<String>(msg,headers,HttpStatus.OK);

		}catch(Exception e) {

			String msg = "<script>";
			msg += "alert('장바구니 추가 에러');";
			msg += "history.back()";
			msg += "</script>";

			entity = new ResponseEntity<String>(msg,headers,HttpStatus.BAD_REQUEST);
			
			e.printStackTrace();
		}

		return entity;
	}

	//댓글삭제
	@GetMapping("delProduct")
	public int delProduct(int cart_num, HttpSession s) {
		String genie_id = (String)s.getAttribute("logId");
		return productService.delProduct(cart_num, genie_id);	
	}

	//--------------------------------------------상품 결제페이지-----------------------------------------------------
	@GetMapping("payment")
	public ModelAndView payment(HttpSession session){
		
		String genie_id = (String)session.getAttribute("logId"); 
		List<CartVO> cartList = productService.getCart(genie_id);
		//System.out.print(cartList);

		mav = new ModelAndView();
		mav.addObject("clist", cartList);

		mav.setViewName("/payment");
		return mav;
	}
}