package com.genie.myapp.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.genie.myapp.vo.ProductVO;

@Mapper
@Repository
public interface ProductDAO{
    //제품정보 가져오기
    public ProductVO getProduct(ProductVO pVO);

}
