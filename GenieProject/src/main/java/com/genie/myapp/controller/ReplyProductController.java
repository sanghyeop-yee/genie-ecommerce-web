package com.genie.myapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.genie.myapp.service.ReplyProductService;
import com.genie.myapp.vo.ReplyProductVO;

@RestController
@RequestMapping("/reply/*")
public class ReplyProductController{

    @Autowired
    ReplyProductService service;

    @GetMapping("replyList")
    public List<ReplyProductVO> ReplyProductList(int no){
        return service.ReplyProductList(no);
    }
}