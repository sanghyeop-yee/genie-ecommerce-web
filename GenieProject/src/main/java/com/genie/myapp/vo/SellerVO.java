package com.genie.myapp.vo;

public class SellerVO {
	private String seller_id;
	private String seller_pwd;
	private String seller_pwd2;
	
	private String seller_tel;
	private String tel1;
	private String tel2;
	private String tel3;
	
	private String seller_email;
	private String seller_reg_no;
	private String company_name;
	private String ceo_name;
	private String seller_website;
	
	private String seller_address;
	private String sel_addr;
	private String sel_detailaddr;
	
	private String writedate;
	private String seller_status;
	private String approval_date;

	
	public String getSeller_id() {
		return seller_id;
	}
	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}
	public String getSeller_pwd() {
		return seller_pwd;
	}
	public void setSeller_pwd(String seller_pwd) {
		this.seller_pwd = seller_pwd;
	}
	public String getSeller_pwd2() {
		return seller_pwd2;
	}
	public void setSeller_pwd2(String seller_pwd2) {
		this.seller_pwd2 = seller_pwd2;
	}
	public String getSeller_tel() {
		return tel1+"-"+tel2+"-"+tel3;
	}
	public void setSeller_tel(String seller_tel) {
		this.seller_tel = seller_tel;
		String telSplit[] = seller_tel.split("-");
		tel1 = telSplit[0];
		tel2 = telSplit[1];
		tel3 = telSplit[2];
	}
	public String getTel1() {
		return tel1;
	}
	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}
	public String getTel2() {
		return tel2;
	}
	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}
	public String getTel3() {
		return tel3;
	}
	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}
	public String getSeller_email() {
		return seller_email;
	}
	public void setSeller_email(String seller_email) {
		this.seller_email = seller_email;
	}
	public String getSeller_reg_no() {
		return seller_reg_no;
	}
	public void setSeller_reg_no(String seller_reg_no) {
		this.seller_reg_no = seller_reg_no;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getCeo_name() {
		return ceo_name;
	}
	public void setCeo_name(String ceo_name) {
		this.ceo_name = ceo_name;
	}
	public String getSeller_website() {
		return seller_website;
	}
	public void setSeller_website(String seller_website) {
		this.seller_website = seller_website;
	}
	public String getSeller_address() {
		return sel_addr+","+sel_detailaddr;
	}
	public void setSeller_address(String seller_address) {
		this.seller_address = seller_address;
		String addrSplit[] = seller_address.split(",");
		sel_addr = addrSplit[0];
		sel_detailaddr = addrSplit[1];
	}
	public String getSel_addr() {
		return sel_addr;
	}
	public void setSel_addr(String sel_addr) {
		this.sel_addr = sel_addr;
	}
	public String getSel_detailaddr() {
		return sel_detailaddr;
	}
	public void setSel_detailaddr(String sel_detailaddr) {
		this.sel_detailaddr = sel_detailaddr;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public String getSeller_status() {
		return seller_status;
	}
	public void setSeller_status(String seller_status) {
		this.seller_status = seller_status;
	}
	public String getApproval_date() {
		return approval_date;
	}
	public void setApproval_date(String approval_date) {
		this.approval_date = approval_date;
	}
	
	
}
