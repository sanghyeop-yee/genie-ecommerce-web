package com.genie.myapp.service;

import java.util.List;

import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.ProductVO;

public interface ProductService{
    public List<ProductVO> Product(ProductVO pVO);
    public ProductVO getProduct(int no);

    public List<CartVO> getCart(CartVO cVO);
    public CartVO addCart(CartVO cVo);
    public boolean overlapProduct(CartVO cVo);
}