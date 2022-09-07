package com.genie.myapp.service;

import java.util.List;

import com.genie.myapp.vo.AdminProductVO;
import com.genie.myapp.vo.AdminVO;

public interface AdminService {
	//글목록
	public List<AdminVO> adminCategoryTag(AdminVO pVO);

	public Object adminTag(AdminVO VO);
	
	public List<AdminProductVO> adminProduct(AdminProductVO VO);
}
