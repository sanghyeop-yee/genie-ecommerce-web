package com.genie.myapp.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.genie.myapp.dao.SellerDAO;

import com.genie.myapp.vo.SellerProductVO;
import com.genie.myapp.vo.AccountVO;
import com.genie.myapp.vo.InquiryVO;
import com.genie.myapp.vo.OrderVO;
import com.genie.myapp.vo.PagingVO;
import com.genie.myapp.vo.SellerVO;


@Service
public class SellerServiceImpl implements SellerService {
	
	@Inject
	SellerDAO dao;
  
// 주문목록
  @Override
	public List<OrderVO> sellerOrder(OrderVO vo, String seller_id) {
		return dao.sellerOrder(vo, seller_id);
	}

  @Override
	public int idCheck(String genie_id) {
		return dao.idCheck(genie_id);
	}

	@Override
	public int sellerWrite(SellerVO vo) {
		return dao.sellerWrite(vo);

	}

	@Override
	public int productWrite(SellerProductVO vo) {
		return dao.productWrite(vo);
	}

	@Override
	public int AccountWrite(AccountVO avo) {
		return dao.AccountWrite(avo);
	}

	@Override
	public SellerVO loginOk(SellerVO svo) {
		return dao.loginOk(svo);
	}

	@Override
	public List<SellerProductVO> productList(SellerProductVO pvo) {
		return dao.productList(pvo);
	}
	
	@Override
	public SellerVO getSeller(String genie_id) {
		return dao.getSeller(genie_id);
	}

	@Override
	public SellerProductVO getProduct(int pid) {
		return dao.getProduct(pid);
	}

	@Override
	public int productEditOk(SellerProductVO pvo) {
		return dao.productEditOk(pvo);
	}

	@Override
	public int productDel(int pid) {
		return dao.productDel(pid);
	}

	@Override
	public void updateDeliveryStatus(Map deliveryMap) {
		dao.updateDeliveryStatus(deliveryMap);
	}

	@Override
	public List<InquiryVO> inquiryList(InquiryVO vo, String Genie_id) {
		return dao.inquiryList(vo, Genie_id);
	}

	@Override
	public int orderSum(String seller_id) {
		return dao.orderSum(seller_id);
	}

	@Override
	public List<OrderVO> orderSumByDay(String seller_id) {
		return dao.orderSumByDay(seller_id);
	}

	@Override
	public int orderCount(String seller_id) {
		return dao.orderCount(seller_id);
	}

	@Override
	public String bestSeller(String seller_id) {
		return dao.bestSeller(seller_id);
	}

	@Override
	public int deliveryPending(String seller_id) {
		return dao.deliveryPending(seller_id);
	}

	@Override
	public int todayOrder(String seller_id) {
		return dao.todayOrder(seller_id);
	}

	@Override
	public int deliveringOrder(String seller_id) {
		return dao.deliveringOrder(seller_id);
	}

	@Override
	public List<OrderVO> revenueByProduct(String seller_id) {
		return dao.revenueByProduct(seller_id);
	}

}
