package com.genie.myapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.genie.myapp.dao.AdminDAO;
import com.genie.myapp.vo.AdminVO;

@Service
public class AdminServiceImple implements AdminService {
	@Autowired
	AdminDAO dao;

	@Override
	public List<AdminVO> adminCategoryTag(AdminVO VO) {
		return dao.adminCategoryTag(VO);
	}

	@Override
	public List<AdminVO> adminTag(AdminVO VO) {
		return dao.adminTag(VO);
	}
}
