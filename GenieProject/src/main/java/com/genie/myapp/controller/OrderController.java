package com.genie.myapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.OrderService;
import com.genie.myapp.service.UserService;

import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.OrderVO;

@RestController
@RequestMapping("/order/*")
public class OrderController {

	@Autowired
	UserService userService;

	@Autowired
	OrderService orderService;

    @Autowired
	PlatformTransactionManager transactionManager;
	
	@Autowired
	TransactionDefinition definition;
	
	TransactionStatus status;
	
	ModelAndView mav = null;

    // --------------------------------------------상품
	// 결제페이지-----------------------------------------------------
	@GetMapping("payment")
	public ModelAndView payment(HttpSession session, CartVO cvo) {

		String genie_id = (String) session.getAttribute("logId");
		//System.out.println("주문정보 받아온 것 cvo : " + cvo.toString());

		List<CartVO> lvo = orderService.readyToPay(cvo);
		System.out.println("주문정보 가져오기 : " + cvo.toString());

		mav = new ModelAndView();
		mav.addObject("plist", lvo);
		mav.addObject("uvo", userService.getUser(genie_id));
		mav.setViewName("/order/payment");

		return mav;
	}

	@GetMapping("orderCompletion")
	public ResponseEntity<String> orderCompletion(OrderVO ovo) {

		System.out.println("카트에 담긴 정보"+ovo);
		orderService.afterPayment(ovo);// myorder테이블에 저장
		orderService.afterOrderCart(ovo);// 장바구니 삭제
		return new ResponseEntity<String>(HttpStatus.OK);
	}

	@GetMapping("completion")
	public ModelAndView completion(HttpSession session) {

		String genie_id = (String) session.getAttribute("logId");
		List<OrderVO> ovo = orderService.getOrderList(genie_id);

		mav = new ModelAndView();
		mav.addObject("olist", ovo);
		mav.setViewName("/order/completion");

		return mav;
	}
    
}
