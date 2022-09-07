package com.genie.myapp.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.genie.myapp.dao.UserDAO;
import com.genie.myapp.vo.UserVO;

@Service
public class UserServiceImpl implements UserService{

    @Inject
    UserDAO dao;

    @Override
    public int idCheck(String user_id) {
        return dao.idCheck(user_id);
    }

    @Override
    public int UserWrite(UserVO vo) {
        return dao.UserWrite(vo);
    }

    @Override
    public UserVO loginOk(UserVO vo) {
        return dao.loginOk(vo);
    }

    @Override
    public UserVO getUser(String user_id) {
        return dao.getUser(user_id);
    }

    @Override
    public int UserEditOk(UserVO vo) {
        return dao.UserEditOk(vo);
    }
}
 