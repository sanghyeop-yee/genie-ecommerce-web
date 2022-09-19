package com.genie.myapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


import com.genie.myapp.vo.SellerProductVO;
import com.genie.myapp.vo.AccountVO;
import com.genie.myapp.vo.OrderVO;


import com.genie.myapp.vo.SellerVO;


@Mapper
@Repository
public interface SellerDAO {


  // 주문목록
  List<OrderVO> sellerOrder(OrderVO vo);
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
	//회원 선택: 로그인 한 회원
	public SellerVO getSeller(String genie_id);	



}
