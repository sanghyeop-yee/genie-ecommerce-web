package com.genie.myapp.service;

import java.util.List;

public interface CertService {

    public List<String> FindId(String user_email);
    void sendUserId(String user_email, List<String> user_names);

    public List<String> FindEmail(String genie_id);
    public boolean emailCheck(String genid_id, List<String> user_email);
    void sendAuthNum(String user_email, String authNum);
	
    

}
