package com.genie.myapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.genie.myapp.vo.AdminProductVO;
import com.genie.myapp.vo.AdminVO;
//추상클래스 
@Mapper
@Repository
public interface AdminDAO {
	//글목록
	public List<AdminVO> adminCategoryTag(AdminVO VO);

	public List<AdminVO> adminTag(AdminVO VO);
	
	public List<AdminProductVO> adminProduct(AdminProductVO VO);
	
}
