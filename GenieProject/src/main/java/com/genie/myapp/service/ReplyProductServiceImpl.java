package com.genie.myapp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.genie.myapp.dao.ReplyProductDAO;
import com.genie.myapp.vo.ReplyProductVO;

@Service
public class ReplyProductServiceImpl implements ReplyProductService{

    @Inject
    ReplyProductDAO DAO;
    
    public List<ReplyProductVO> ReplyProductList(int no){
        return DAO.ReplyProductList(no);
    }
}