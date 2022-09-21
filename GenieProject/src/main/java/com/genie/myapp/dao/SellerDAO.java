package com.genie.myapp.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


import com.genie.myapp.vo.SellerProductVO;
import com.genie.myapp.vo.AccountVO;
import com.genie.myapp.vo.OrderVO;


import com.genie.myapp.vo.SellerVO;


@Mapper // 실행시 인터페이스에서 매퍼 파일을 읽어 들이도록 지정합니다
@Repository
public interface SellerDAO {


	// 주문목록
	List<OrderVO> sellerOrder(OrderVO vo);
  	//주문목록 배송상태 수정 
	public void updateDeliveryStatus(Map deliveryMap); // 매퍼파일의 id가 updateDeliveryStatus 인 SQL문을 호출합니다 
	//아이디 중복검사
	public int idCheck(String genie_id);
	//seller 회원가입
	public int sellerWrite(SellerVO vo);
	//seller 회원가입 (Account)
	public int AccountWrite(AccountVO avo);
	//seller 상품등록
	public int productWrite(SellerProductVO vo);
	//판매자 로그인
	public SellerVO loginOk(SellerVO svo);
	//상품관리 - 상품목록
	public List<SellerProductVO> productList(SellerProductVO pvo);
	//회원 선택: 로그인 한 회원
	public SellerVO getSeller(String genie_id);	



}
