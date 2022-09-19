package com.genie.myapp.service;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.genie.myapp.dao.UserDAO;
import com.genie.myapp.vo.AccountVO;
import com.genie.myapp.vo.UserVO;

@Service
public class UserServiceImpl implements UserService{

    @Inject
    UserDAO dao;

    @Override
    public int idCheck(String genie_id) {
        return dao.idCheck(genie_id);
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
    public UserVO getUser(String genie_id) {
        return dao.getUser(genie_id);
    }

    @Override
    public int UserEditOk(UserVO vo) {
        return dao.UserEditOk(vo);
    }

    @Override
    public int PwdEditOk(UserVO vo) {
        return dao.PwdEditOk(vo);
    }

    @Override
    public int MyDeliveryEditOk(UserVO vo) {
        return dao.MyDeliveryEditOk(vo);
    }
    
    @Override
    public int Delivery(UserVO vo) {
        return dao.Delivery(vo);
    } 
    @Override
    public int AccountWrite(AccountVO avo) {
       return dao.AccountWrite(avo);
    }

       
}
 