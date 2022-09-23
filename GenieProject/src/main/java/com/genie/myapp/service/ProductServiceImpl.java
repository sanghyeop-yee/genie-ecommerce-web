package com.genie.myapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import com.genie.myapp.dao.ProductDAO;
import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.ProductVO;

@Service
public class ProductServiceImpl implements ProductService{

    @Autowired
    ProductDAO dao;

	@Override
	public List<ProductVO> Product(ProductVO pVO) {
		return dao.Product(pVO);
	}

	@Override
	public List<CartVO> getCart(CartVO cVO) {
		return dao.getCart(cVO);
	}

	@Override
	public CartVO addCart(CartVO cVo) {
		return dao.addCart(cVo);
	}

	@Override
	public boolean overlapProduct(CartVO cVo) {
		return dao.overlapProduct(cVo);
	}

	@Override
	public ProductVO getProduct(int no) {
		return dao.getProduct(no);
	}

}