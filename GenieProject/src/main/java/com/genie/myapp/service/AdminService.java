package com.genie.myapp.service;

import java.util.List;

import com.genie.myapp.vo.AdminVO;
import com.genie.myapp.vo.UserVO;

public interface AdminService {
	//카테고리리스트
	public List<AdminVO> adminCategoryTag(AdminVO VO);
	
	//태그리스트
	public Object adminTag(AdminVO VO);
	
	// admin 내 태그정보 리스트
	public List<AdminVO> tagAllSelect();

	// adminTagPop 태그정보 뷰
	public AdminVO getadminTag(String product_tag_id);
	
	// adminTagPop 태그정보 수정
	public int adminTagPopEdit(AdminVO vo);
	
	// adminTagPop 태그정보 뷰 삭제
	public int adminTagDel(String product_tag_id);

	///////////카테고리//////////////
	// 카테고리 리스트
	public List<AdminVO> categoryAllSelect();
	
	// 카테고리 정보
	public AdminVO getadcategory(String category_id);
	
	// 카테고리 수정
	public int adcategoryPopEdit(AdminVO vo);
	
	// 카테고리 삭제
	public int adcategoryDel(String category_id);
	///////////카테고리//////////////

	// admember 내 유저정보 리스트
	public List<UserVO> userAllSelect();
		
	// admemberPop 내 유저정보 뷰
	public UserVO getadmember(String user_id);

	// admemberPop 내 유저정보 수정
	public int admemberPopEdit(UserVO vo);
	
	// admember 내 유저정보 삭제
	public int admemberDel(String genie_id);

}
