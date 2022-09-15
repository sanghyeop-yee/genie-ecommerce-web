package com.genie.myapp.service;

import java.util.List;

public interface CertService {

    void sendUserId(String user_email, List<String> user_names);
    public boolean emailCheck(String user_name, String user_email);
    void sendAuthNum(String email, String authNum);
	public List<String> FindId(String email);
    

}
