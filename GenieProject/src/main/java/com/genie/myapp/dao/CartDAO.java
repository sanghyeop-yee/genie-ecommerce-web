package com.genie.myapp.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.genie.myapp.vo.ProductVO;

@Mapper
@Repository
public interface CartDAO{
    public ProductVO cart(ProductVO pVO);
}