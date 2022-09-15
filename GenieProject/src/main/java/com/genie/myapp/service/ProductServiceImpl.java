package com.genie.myapp.service;

import org.springframework.stereotype.Service;
import javax.inject.Inject;

import com.genie.myapp.dao.ProductDAO;
import com.genie.myapp.vo.ProductVO;

@Service
public class ProductServiceImpl implements ProductService{

    @Inject
    ProductDAO PDAO;

    @Override
    public ProductVO getProduct(ProductVO pVO) {
        return PDAO.getProduct(pVO);
    }



}