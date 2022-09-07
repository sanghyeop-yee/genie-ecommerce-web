package com.genie.myapp.service;

import com.genie.myapp.vo.UserVO;


public interface UserService {
    
    //아이디 중복검사
	public int idCheck(String user__id);
	// 회원가입
	public int UserWrite(UserVO vo);
	// 로그인
	public UserVO loginOk(UserVO vo);
	//회원 선택: 로그인 한 회원
	public UserVO getUser(String user_id);
	//회원 정보 수정: DB 업데이트
	public int UserEditOk(UserVO vo);
}
