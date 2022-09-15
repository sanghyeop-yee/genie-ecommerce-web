  package com.genie.myapp.service;

import java.util.List;

import com.genie.myapp.vo.OrderVO;

import com.genie.myapp.vo.SellerProductVO;
import com.genie.myapp.vo.SellerVO;



public interface SellerService {
	
	//아이디 중복검사
	public int idCheck(String seller_id);
	//seller 회원가입
	public int sellerWrite(SellerVO vo);

	//seller 상품등록
	public int productWrite(SellerProductVO vo);

  // 주문목록 
  public List<OrderVO> sellerOrder(OrderVO vo);


}
