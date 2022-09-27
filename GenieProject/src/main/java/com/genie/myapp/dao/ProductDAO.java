package com.genie.myapp.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.ProductVO;
import com.genie.myapp.vo.SellerVO;

@Mapper
@Repository
public interface ProductDAO{
    //상품정보리스트에서 상품정보 가져오기
    public List<ProductVO> product(ProductVO pVO);
    //제품 상세정보(구매페이지)
    public ProductVO getProduct(int no);



    //장바구니 가져오기(상품포함)
    public List<CartVO> getCart(String genie_id);



    // //장바구니에 상품 넣기
    // public CartVO addCart(CartVO cVo);

    //지니페이지 제품 선택
    public List<ProductVO> selectProduct(Map<String, Object> map);
    //상세페이지 관리자정보 가져오기
    public SellerVO getSeller(int product_id);
}
