package com.genie.myapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.genie.myapp.vo.ReplyProductVO;

@Mapper
@Repository
public interface ReplyProductDAO{
    
    public List<ReplyProductVO> ReplyProductList(int no);
}