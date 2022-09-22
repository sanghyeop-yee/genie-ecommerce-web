package com.genie.myapp.service;

import java.util.List;

public interface CertService {

    public List<String> FindId(String user_email);
    void sendUserId(String user_email, List<String> genie_id);


    public int overlapCheck(String value, String valueType);
    public boolean emailCheck(String genid_id, String user_email);

    public int PwdEditOk(String genie_id, String user_pwd);
    void sendAuthNum(String user_email, String authNum);

	
    
}
 