package com.genie.myapp.service;

import java.util.List;

import com.genie.myapp.vo.CartVO;
import com.genie.myapp.vo.OrderVO;

public interface OrderService {

    // 구매 결제페이지
    public List<CartVO> readyToPay(CartVO cvo);

    // myorder테이블로
    public int afterPayment(OrderVO ovo);

    // 구매완료 후, 장바구니에서 삭제
    public int afterOrderCart(OrderVO ovo);

    //결제 완료 후, 정보 가져오기
    public List<OrderVO> getOrderList(String genie_id);
    
}
