package com.genie.myapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.ProductVO;

@Mapper
@Repository
public interface ProductDAO{
    //상품정보리스트에서 상품정보 가져오기
    public List<ProductVO> Product(ProductVO pVO);
    //장바구니리스트에서 상품정보 가져오기
    public List<CartVO> Cart(CartVO cVO);
}
