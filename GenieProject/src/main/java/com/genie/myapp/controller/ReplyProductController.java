package com.genie.myapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.genie.myapp.service.ReplyProductService;
import com.genie.myapp.vo.LikeVO;
import com.genie.myapp.vo.ReplyProductVO;

@RestController
@RequestMapping("/reply/*")
public class ReplyProductController{

    @Autowired
    ReplyProductService service;

    @GetMapping("replyProductList")
    public List<ReplyProductVO> replyProductList(int no){
        return service.replyProductList(no);
    }
    
    @PostMapping("replyProductWrite")
	public int replyWrite(ReplyProductVO vo, HttpSession session) {
		vo.setGenie_id((String)session.getAttribute("logId")); // 작성자
		
		return service.replyProductWrite(vo);
	}

 	@PostMapping("replyProductEdit")
 	public int replyEdit (ReplyProductVO vo, HttpSession session) {
 		vo.setGenie_id((String)session.getAttribute("logId"));
 		return service.replyProductEdit(vo);
 	}
 	
 	@GetMapping("replyProductDel")
 	public int replyDel(int reply_no, HttpSession session) {
 		String genie_id = (String)session.getAttribute("logId");
 		return service.replyProductDelete(reply_no, genie_id);
 	}

	@PostMapping("likeInsert")
	public int likeInsert(LikeVO vo, HttpSession session){
		vo.setGenie_id((String)session.getAttribute("logId"));
        System.out.println(vo.toString());

		return service.likeInsert(vo);
	}
}