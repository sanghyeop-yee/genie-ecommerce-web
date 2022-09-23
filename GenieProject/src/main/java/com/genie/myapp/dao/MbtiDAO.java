package com.genie.myapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.genie.myapp.vo.SellerProductVO;

@Mapper
@Repository
public interface MbtiDAO {
	
	//상품목록 - MBTI E
	public List<SellerProductVO> getProduct(String mbti);
}
