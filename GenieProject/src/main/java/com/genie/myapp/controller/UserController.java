package com.genie.myapp.controller;

import java.nio.charset.Charset;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.AdministerService;
import com.genie.myapp.service.SellerService;
import com.genie.myapp.service.UserService;
import com.genie.myapp.vo.AccountVO;
import com.genie.myapp.vo.DeliveryVO;
import com.genie.myapp.vo.OrderVO;
import com.genie.myapp.vo.SellerVO;
import com.genie.myapp.vo.UserVO;


@RestController
@RequestMapping("/user/*")
public class UserController {

	@Inject
	UserService service;

	@Inject
	SellerService service_s;

	@Inject
	AdministerService service_a;

	ModelAndView mav=null;

	@Autowired
	PlatformTransactionManager transactionManager;

	@Autowired
	TransactionDefinition definition;


	 //아이디 중복검사
	@GetMapping("idCheck")
	public ModelAndView idCheck(String genie_id) {

		//DB조회  : 아이디가 존재하는지 확인
		int cnt = service.idCheck(genie_id);

		mav = new ModelAndView();

		mav.addObject("idCnt",cnt);
		mav.addObject("genie_id",genie_id);
		mav.setViewName("/user/idCheck");

		return mav;
	}

	//회원 가입하기
	@PostMapping("UserWrite") 
	public ResponseEntity<String> UserWrite(UserVO vo, AccountVO avo) {

		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type","text/html; charset=utf-8");
		TransactionStatus status= transactionManager.getTransaction(definition);
		
		System.out.println("avo : " + avo.toString());
		
		try {//회원가입 성공
			
			service.AccountWrite(avo);
			service.UserWrite(vo);

			String msg = "<script>";
			msg += "alert('회원가입을 성공하였습니다.');";
			msg += "location.href='/login';";
			msg += "</script>";
			entity = new ResponseEntity<String>(msg,headers,HttpStatus.OK);

			transactionManager.commit(status);

		}catch(Exception e) {//회원등록 실패

			String msg = "<script>";
			msg += "alert('회원가입이 실패하였습니다.');";
			msg += "history.back()";
			msg += "</script>";
			entity = new ResponseEntity<String>(msg,headers,HttpStatus.BAD_REQUEST);
			
			transactionManager.rollback(status);
			e.printStackTrace();
			
		}

		return entity;
	}

//////////////////////////////////////////////////////////

	//마이페이지
	@GetMapping("MyPage")
	public ModelAndView MyPage(HttpSession session) {

		String genie_id = (String)session.getAttribute("logId"); 
		UserVO vo = service.getUser(genie_id);

		String seller_id = (String)session.getAttribute("logId"); 
		SellerVO svo = service_s.getSeller(seller_id);

		mav = new ModelAndView();

		mav.addObject("svo",svo);
		mav.addObject("vo",vo);
		mav.setViewName("/user/MyPage");
	
		return mav;
	}
  
	//회원정보 수정 DB
	@PostMapping("UserEditOk")
	public ResponseEntity<String> UserEditOk(UserVO vo) {
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type","text/html; charset=UTF-8");
		
		String msg = "<script>";
		int cnt = service.UserEditOk(vo);
			
		if(cnt>0) {//수정됨
			msg+="alert('회원정보가 수정되었습니다.');";
		}else {//수정못함
			msg+="alert('회원 정보 수정이 실패하였습니다.');";	
		}
		msg+="location.href='/user/MyPage';</script>";
		
		entity = new ResponseEntity<String>(msg,headers, HttpStatus.OK);

		return entity;
	}

	//주문목록/배송조회
	@GetMapping("MyOrderList")
	public ModelAndView MyOrderList(HttpSession session) {

		String genie_id = (String)session.getAttribute("logId");
		UserVO vo = service.getUser(genie_id);
		List<OrderVO> orderList =service.getOrder(genie_id);
		
		mav = new ModelAndView();
		mav.addObject("list",orderList);
		mav.addObject("vo",vo);
		mav.setViewName("/user/MyOrderList");
	
		return mav;
	}

	//배송지 관리
	@GetMapping("MyDeliveryList") 
	public ModelAndView MyDeliveryLIst(HttpSession session) {
		
		String genie_id = (String)session.getAttribute("logId");
		UserVO vo = service.getUser(genie_id);
		List<DeliveryVO> dlist = service.getDeliveryList(genie_id);	

		mav = new ModelAndView();
		mav.addObject("vo", vo);
		mav.addObject("dlist", dlist);
		mav.setViewName("/user/MyDeliveryList");
	
		return mav;
	}

	//배송지 
	@PostMapping("addDelivery")
	public ResponseEntity<String> addDelivery(UserVO vo) {
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type","text/html; charset=UTF-8");
	
		String msg = "<script>";
		int cnt = service.addDelivery(vo);

		if(cnt>0) {//수정됨
			msg+="alert('배송지가 등록되었습니다.');";
		}else {//수정못함
			msg+="alert('배송지 등록에 실패하였습니다.');";
		}
		msg+="location.href='/user/MyDeliveryList';</script>";

		entity = new ResponseEntity<String>(msg,headers, HttpStatus.OK);

		return entity;
	}

	//주문 결제 페이지의 주소 추가창
	@PostMapping("addAddressbook")
	public ResponseEntity<String> addAddressbook(UserVO vo) {
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type","text/html; charset=UTF-8");
	
		String msg = "<script>";
		int cnt = service.addDelivery(vo);

		if(cnt>0) {//수정됨
			msg+="alert('배송지가 등록되었습니다.');";
		}else {//수정못함
			msg+="alert('배송지 등록에 실패하였습니다.');";
		}
		msg+="location.href='/user/addressbook';</script>";
		//msg+="location.reload();</script>";
		entity = new ResponseEntity<String>(msg,headers, HttpStatus.OK);

		return entity;
	}

	@GetMapping("delDelivery")
	public int delDelivery(int address_num, HttpSession session){
		String genie_id = (String)session.getAttribute("logId");
		return service.delDelivery(address_num, genie_id);
	}

	@GetMapping("addressbook")
	public ModelAndView addressbook(HttpSession session){

		String genie_id=(String)session.getAttribute("logId");
		List<DeliveryVO> dlist=service.getDeliveryList(genie_id);

		mav=new ModelAndView();
		mav.addObject("dlist", dlist);
		mav.setViewName("/user/addressbook");
		return mav;
	}


	

	@GetMapping("Addaddressbook")
	public ModelAndView Addaddressbook(HttpSession session){

		String genie_id=(String)session.getAttribute("logId");
		UserVO vo=service.getUser(genie_id);
		List<DeliveryVO> dlist=service.getDeliveryList(genie_id);

		mav=new ModelAndView();
		mav.addObject("vo", vo);
		mav.addObject("dlist", dlist);
		mav.setViewName("/user/Addaddressbook");
		return mav;
	}
	
  
	//나의 문의사항 
	@GetMapping("MyInquiryList") 
	public ModelAndView MyInquiryList(HttpSession session) {
		
		String genie_id = (String)session.getAttribute("logId");
		UserVO vo = service.getUser(genie_id);

		ModelAndView mav = new ModelAndView();
		mav.addObject("vo",vo);
		mav.setViewName("/user/MyInquiryList");
	
		return mav;
	}
	
	//찜한 상품 리스트
	@GetMapping("MyLikeList")
	public ModelAndView MyLikeList(HttpSession session){
		String genie_id = (String)session.getAttribute("logId");
		UserVO vo = service.getUser(genie_id);

		mav = new ModelAndView();
		mav.addObject("list",service.getLikeList(genie_id));
		mav.addObject("vo",vo);
		mav.setViewName("/user/MyLikeList");
	
		return mav;

	}

	////////////////////////////////////////////////////////////////////

	@GetMapping("PwdEdit")
	public ModelAndView PwdChange(HttpSession session) {
		
		String genie_id = (String)session.getAttribute("logId"); 
		UserVO vo = service.getUser(genie_id);
		
		mav = new ModelAndView();
		mav.addObject("vo",vo);
		mav.setViewName("/user/PwdEdit");
		
		return mav;
	}

	@PostMapping("PwdEditOk")
	public ResponseEntity<String> PwdEditOk(UserVO vo) {
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		headers.add("Content-Type","text/html; charset=UTF-8");
		
		String msg = "<script>";
		int cnt = service.PwdEditOk(vo);
		
		if(cnt>0) {//수정함
			msg+="alert('비밀번호가 수정되었습니다.');";
		}else {//수정못함
			msg+="alert('비밀번호 수정이 실패하였습니다.');";	
		}
		msg+="window.close();</script>";
		
		entity = new ResponseEntity<String>(msg,headers, HttpStatus.OK);

		return entity;
	}
////////////////////////////////////////////////////////////////

// @ModelAttribute("roles")
// public Map<String,Role> roles(){
// 	Map<String, Role> map = new LinkedHashMap<>();
//         map.put("관리자", Role.ROLE_ADMIN);
//         map.put("판매자", Role.ROLE_SELLER);
//         map.put("사용자", Role.ROLE_USER);
//         return map;
// }
}