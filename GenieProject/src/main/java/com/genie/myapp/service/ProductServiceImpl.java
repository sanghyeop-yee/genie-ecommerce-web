package com.genie.myapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.genie.myapp.dao.ProductDAO;
import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.ProductVO;
import com.genie.myapp.vo.SellerVO;

@Service
public class ProductServiceImpl implements ProductService{

    @Autowired
    ProductDAO dao;

	@Override
	public List<ProductVO> listProduct(ProductVO pVO) {
		return dao.listProduct(pVO);
	}
	
	@Override
	public ProductVO getProduct(int no) {
		return dao.getProduct(no);
	}

	@Override
	public List<ProductVO> selectProduct(Map<String, Object> map) {
		return dao.selectProduct(map);
	}

	@Override
	public List<CartVO> getCart(String genie_id) {
		return dao.getCart(genie_id);
	}

	@Override
	public SellerVO getSeller(int product_id) {
		return dao.getSeller(product_id);
	}

	@Override
	public int addCart(CartVO cvo) {
		return dao.addCart(cvo);
	}

	@Override
	public int delProduct(int cart_num, String genie_id) {
		return dao.delProduct(cart_num, genie_id);
	}


}