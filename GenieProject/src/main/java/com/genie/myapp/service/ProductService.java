package com.genie.myapp.service;

import java.util.List;
import java.util.Map;

import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.ProductVO;
import com.genie.myapp.vo.SellerVO;


public interface ProductService{
    public List<ProductVO> listProduct(ProductVO pVO);
    public ProductVO getProduct(int no);

    public int addCart(CartVO cvo);
    public List<CartVO> getCart(String genie_id);

    public SellerVO getSeller(int product_id);
    public List<ProductVO> selectProduct(Map<String, Object> map);
    
    public int delProduct(int cart_num, String genie_id);


}   