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
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.AdminService;
import com.genie.myapp.service.ProductService;
import com.genie.myapp.service.SellerService;
import com.genie.myapp.service.UserService;
import com.genie.myapp.vo.AdminVO;
import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.LikeVO;
import com.genie.myapp.vo.PagingVO;
import com.genie.myapp.vo.PaymentVO;
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

	@Autowired
	AdminService adminService;
	

	ModelAndView mav = null;
	Map<String, Object> map = null;

	@Autowired
	PlatformTransactionManager transactionManager;

	@Autowired
	TransactionDefinition definition;

	@GetMapping("/")
	public ModelAndView index(AdminVO vo, ProductVO PVO, PagingVO pVO) {

		mav = new ModelAndView();
		mav.addObject("tlist", adminService.adminTag(vo));
		mav.addObject("plist", productService.listProduct(PVO));
		mav.addObject("pvo", PVO);
		//pVO.setTotalRecord(productService.mainAllSelect(PVO));
		mav.setViewName("/index");
	
		return mav;
	}


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
	public ModelAndView product_detail(@RequestParam("product_id") int product_id, HttpSession session) {
		mav = new ModelAndView();
		String genie_id = (String)session.getAttribute("logId");

		productService.hitCount(product_id);
		mav.addObject("pvo", productService.getProduct(product_id));
		mav.addObject("svo", productService.getSeller(product_id));
		mav.addObject("lvo", productService.likeStatus(product_id));
		mav.addObject("cvo", productService.likeCheck(product_id, genie_id));
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



	//장바구니에서 제품 삭제
	@GetMapping("delCart")
	public int delCart(HttpSession session, int cart_num) {
		String genie_id = (String)session.getAttribute("logId");
		return productService.delCart(cart_num, genie_id);

	}

	//장바구니에서 제품 삭제
	@GetMapping("delMultiCart")
	public ModelAndView delMultiCart(HttpSession session, CartVO cvo) {

		mav=new ModelAndView();
		System.out.println(cvo.toString());
		//String genie_id = (String)session.getAttribute("logId");
		int cnt = productService.delMultiCart(cvo);

		System.out.print("지워진 상품 : "+cnt);
		mav.setViewName("redirect:/cart");
		return mav;
	}

	//--------------------------------------------상품 결제페이지-----------------------------------------------------
	@GetMapping("payment")
	public ModelAndView payment(HttpSession session, PaymentVO pvo){
		
		String genie_id = (String)session.getAttribute("logId"); 

		session.setAttribute("Product_name", pvo.getProduct_name());
		session.setAttribute("Product_qty", pvo.getP_num());
		session.setAttribute("Product_price", pvo.getProduct_price());
		session.setAttribute("total", pvo.getTotal());
		
		

		mav = new ModelAndView();
		mav.addObject("plist", pvo);
		mav.addObject("uvo",userService.getUser(genie_id));

		mav.setViewName("/payment");
		return mav;
	}

	@PostMapping("orderCompletion")
	public ResponseEntity<String> completion(HttpSession session, CartVO cvo, @RequestParam("imp_uid") String imp_uid){
		
		System.out.println(imp_uid);
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type","text/html; charset=utf-8");

		TransactionStatus status= transactionManager.getTransaction(definition);

		String genie_id = (String)session.getAttribute("logId"); 

		try {

			//주문완료 정보 넘기기 
			int ocnt=productService.myorder(genie_id, cvo, imp_uid);
			System.out.print(ocnt);
		
			//장바구니 삭제
			int cnt= productService.payEndCart(genie_id);
			System.out.println("삭제된 레코드 수:"+cnt);

			String msg = "<script>";
			msg += "location.href='/';";
			msg += "</script>";
			entity = new ResponseEntity<String>(msg,headers,HttpStatus.OK);

			transactionManager.commit(status);

		}catch(Exception e) {

			String msg = "<script>";
			msg += "history.back()";
			msg += "</script>";

			entity = new ResponseEntity<String>(msg,headers,HttpStatus.BAD_REQUEST);
			
			transactionManager.rollback(status);
			e.printStackTrace();
		}
		
		return entity;
	}

	@GetMapping("completion")
	public ModelAndView completion(ProductVO PVO) {


		mav = new ModelAndView();
		mav.setViewName("completion");

		return mav;
	}



	//----------------------------- 제품 리스트 보이기 index -----------------------------------//
	@GetMapping("index")
	public ModelAndView productList(ProductVO PVO) {

		mav = new ModelAndView();
		mav.addObject("plist", productService.listProduct(PVO));
		mav.addObject("pvo", PVO);
		mav.setViewName("/index");

		return mav;
	}

}