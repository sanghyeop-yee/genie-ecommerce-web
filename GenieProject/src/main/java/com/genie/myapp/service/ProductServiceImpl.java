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
	public List<CartVO> Cart(CartVO cVO) {
		return dao.Cart(cVO);
	}

}