package com.genie.myapp.vo;

public class AccountVO {
    private String genie_id;
	private String genie_pwd;
    private int member_type;

    @Override
    public String toString() {
        return "AccountVO [genie_id=" + genie_id + ", genie_pwd=" + genie_pwd + ", member_type=" + member_type + "]";
    }
    
    public String getGenie_id() {
        return genie_id;
    }
    public void setGenie_id(String genie_id) {
        this.genie_id = genie_id;
    }
    public String getGenie_pwd() {
        return genie_pwd;
    }
    public void setGenie_pwd(String genie_pwd) {
        this.genie_pwd = genie_pwd;
    }
    public int getMember_type() {
        return member_type;
    }
    public void setMember_type(int member_type) {
        this.member_type = member_type;
    }
    
}
