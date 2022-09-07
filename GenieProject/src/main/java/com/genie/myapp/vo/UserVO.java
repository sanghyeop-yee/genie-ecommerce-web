package com.genie.myapp.vo;

public class UserVO {
    private String user_id;
	private String user_pwd;
	
    private String user_name;
	private String user_phone_num;
	private String user_phone_num1;
	private String user_phone_num2;
	private String user_phone_num3;
	
	private String user_zipcode;
	private String user_addr;
	private String user_detailaddr;
    private char user_gender;
	private String user_email;
    private String sign_in_date;
    private String payment_method;

    @Override
    public String toString() {
        return "UserVO [payment_method=" + payment_method + ", sign_in_date=" + sign_in_date + ", user_addr="
                + user_addr + ", user_detailaddr=" + user_detailaddr + ", user_email=" + user_email + ", user_gender="
                + user_gender + ", user_id=" + user_id + ", user_name=" + user_name + ", user_phone_num="
                + user_phone_num + ", user_phone_num1=" + user_phone_num1 + ", user_phone_num2=" + user_phone_num2
                + ", user_phone_num3=" + user_phone_num3 + ", user_pwd=" + user_pwd + ", user_zipcode=" + user_zipcode
                + "]";
    }
    public String getUser_id() {
        return user_id;
    }
    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
    public String getUser_pwd() {
        return user_pwd;
    }
    public void setUser_pwd(String user_pwd) {
        this.user_pwd = user_pwd;
    }
    public String getUser_phone_num() {
        return user_phone_num1 + "-"+user_phone_num2+"-"+user_phone_num3;
    }
    public void setUser_phone_num(String user_phone_num) {
        this.user_phone_num = user_phone_num;
        String telSplit[] = user_phone_num.split("-");
		user_phone_num1 = telSplit[0];
		user_phone_num2 = telSplit[1];
		user_phone_num3 = telSplit[2];
    }
    public String getUser_phone_num1() {
        return user_phone_num1;
    }
    public void setUser_phone_num1(String user_phone_num1) {
        this.user_phone_num1 = user_phone_num1;
    }
    public String getUser_phone_num2() {
        return user_phone_num2;
    }
    public void setUser_phone_num2(String user_phone_num2) {
        this.user_phone_num2 = user_phone_num2;
    }
    public String getUser_phone_num3() {
        return user_phone_num3;
    }
    public void setUser_phone_num3(String user_phone_num3) {
        this.user_phone_num3 = user_phone_num3;
    }
    public String getUser_zipcode() {
        return user_zipcode;
    }
    public void setUser_zipcode(String user_zipcode) {
        this.user_zipcode = user_zipcode;
    }
    public String getUser_addr() {
        return user_addr;
    }
    public void setUser_addr(String user_addr) {
        this.user_addr = user_addr;
    }
    public String getUser_detailaddr() {
        return user_detailaddr;
    }
    public void setUser_detailaddr(String user_detailaddr) {
        this.user_detailaddr = user_detailaddr;
    }
    public char getUser_gender() {
        return user_gender;
    }
    public void setUser_gender(char user_gender) {
        this.user_gender = user_gender;
    }
    public String getUser_email() {
        return user_email;
    }
    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }
    public String getSign_in_date() {
        return sign_in_date;
    }
    public void setSign_in_date(String sign_in_date) {
        this.sign_in_date = sign_in_date;
    }
    public String getPayment_method() {
        return payment_method;
    }
    public void setPayment_method(String payment_method) {
        this.payment_method = payment_method;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }
}
