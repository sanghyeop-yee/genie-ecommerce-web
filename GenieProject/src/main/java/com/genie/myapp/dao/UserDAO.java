package com.genie.myapp.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.genie.myapp.vo.UserVO;

@Mapper
@Repository
public interface UserDAO {

    //아이디 중복검사
	public int idCheck(String genie_id);
	// 회원가입
	public int UserWrite(UserVO vo);
	// 로그인
	public UserVO loginOk(UserVO vo);
	//회원 선택: 로그인 한 회원
	public UserVO getUser(String genie_id);
	//회원 정보 수정: DB 업데이트
	public int UserEditOk(UserVO vo);
	//비밀번호 변경
	public int PwdEditOk(UserVO vo);
	
	
}
