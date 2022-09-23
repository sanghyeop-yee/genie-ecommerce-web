package com.genie.myapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.genie.myapp.dao.MbtiDAO;
import com.genie.myapp.vo.SellerProductVO;

@Service
public class MbtiServiceImpl implements MbtiService {
	
	@Autowired
	MbtiDAO dao;

	@Override
	public List<SellerProductVO> getProduct(String mbti) {
		return dao.getProduct(mbti);
	}
}
