package com.genie.myapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.genie.myapp.service.AdminService;
import com.genie.myapp.vo.AdminVO;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
		
	@Autowired
	AdminService service;
	ModelAndView mav = null;
	
		@GetMapping("adminLogin")
		public ModelAndView adminLogin() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("admin/adminLogin");
			return mav;
		}

		@GetMapping("adminMain")
		public ModelAndView adminMain() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("admin/adminMain");
			return mav;
		}
		
		@GetMapping("adminProduct")
		public ModelAndView adminProduct() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("admin/adminProduct");
			return mav;
		}

		@GetMapping("adminPro")
		public ModelAndView adminPro() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("admin/adminPro");
			return mav;
		}
		
		@GetMapping("adminCategoryTag")
		public ModelAndView adminCategoryTag() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("admin/adminCategoryTag");
			return mav;
		}
		
		//카테고리 
		@GetMapping("adminCategoryTag")
		public ModelAndView adminCategoryTag(AdminVO VO) {
			mav = new ModelAndView();
			System.out.println(VO.toString());
			mav.addObject("list", service.adminCategoryTag(VO));
			mav.addObject("VO", VO);
			mav.setViewName("admin/adminCategoryTag");
			return mav;
		}

		//태그
		@GetMapping("adminTag")
		public ModelAndView adminTag(AdminVO VO) {
			mav = new ModelAndView();
			System.out.println(VO.toString());
			mav.addObject("list", service.adminTag(VO));
			mav.addObject("VO", VO);
			mav.setViewName("admin/adminTag");
			return mav;
		}
		
}
