  package com.genie.myapp.service;

import java.util.List;

import com.genie.myapp.vo.AccountVO;
import com.genie.myapp.vo.OrderVO;

import com.genie.myapp.vo.SellerProductVO;
import com.genie.myapp.vo.SellerVO;



public interface SellerService {
	
	//아이디 중복검사
	public int idCheck(String genie_id);
	//seller 회원가입
	public int sellerWrite(SellerVO vo);
	//seller 회원가입 (Account)
	public int AccountWrite(AccountVO avo);
	//seller 상품등록
	public int productWrite(SellerProductVO vo);

	// 주문목록 
	public List<OrderVO> sellerOrder(OrderVO vo);
  	//판매자 로그인
	public SellerVO loginOk(SellerVO svo);
	//상품관리 - 상품목록
	public List<SellerProductVO> productList(SellerProductVO pvo);
	//회원 선택: 로그인 한 회원
	public SellerVO getSeller(String genie_id);	


}
