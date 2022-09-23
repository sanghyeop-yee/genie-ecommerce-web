package com.genie.myapp.service;

import java.util.List;

import com.genie.myapp.vo.SellerProductVO;

public interface MbtiService {
	
	//상품목록 - MBTI E
	public List<SellerProductVO> getProduct(String mbti);
}
