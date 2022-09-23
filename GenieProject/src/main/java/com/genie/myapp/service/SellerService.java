  package com.genie.myapp.service;

import java.util.List;
import java.util.Map;

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
	// 주문목록 배송상태 수정 
	public void updateDeliveryStatus(Map deliveryMap);
	// 매출관리 (결제금액)
	public int orderSum();
	// 일별 매출관리
	public List<OrderVO> orderSumByDay();
	// 결제건수
	public int orderCount();
	// 베스트셀러
	public String bestSeller();
  	//판매자 로그인
	public SellerVO loginOk(SellerVO svo);
	//상품관리 - 상품목록
	public List<SellerProductVO> productList(SellerProductVO pvo);
	//회원 선택: 로그인 한 회원
	public SellerVO getSeller(String genie_id);	
	//상품선택 : 수정, 상품내용보기
	public SellerProductVO getProduct(int pid);
	//상품삭제
	public int productDel(int pid);
	//상품수정
	public int productEditOk(SellerProductVO pvo);
}
