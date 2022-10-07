package com.genie.myapp.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.LikeVO;
import com.genie.myapp.vo.PagingVO;
import com.genie.myapp.vo.ProductVO;
import com.genie.myapp.vo.SellerVO;

@Mapper
@Repository
public interface ProductDAO{
    
    //상품정보리스트에서 상품정보 가져오기
    public List<ProductVO> listProduct(ProductVO pVO);
    //제품 상세정보(구매페이지)
    public ProductVO getProduct(int no);

    //메인페이지 페이징
    public List<ProductVO> mainAllSelect(PagingVO pVO);
    // 상세페이지 좋아요 수 가져오기
    public ProductVO likeStatus(int product_id);

    // 조회수 증가
    public void hitCount(int product_id);

    //지니페이지 제품 선택
    public List<ProductVO> selectProduct(Map<String, Object> map);
    //상세페이지 관리자정보 가져오기
    public SellerVO getSeller(int product_id);

    //장바구니 가져오기(상품포함)
    public List<CartVO> getCart(String genie_id);
    //장바구니 상품 넣기
    public int addCart(CartVO cvo);
    //장바구니 제품 삭제
    public int delCart(int cart_num, String genie_id);
    //여러 제품 삭제
    public int delMultiCart(CartVO cvo);

    //구매완료 후, 장바구니에서 삭제
    public int payEndCart(String genie_id);
    //구매 완료 후, myorder로 넘기기
    public int myorder(String genie_id, CartVO cvo, String imp_uid);

    // 상세페이지 logid 좋아요 확인
    public LikeVO likeCheck(int product_id, String genie_id);

}