package com.owner.db;

public class OwnerBean {

	private String ow_id;
	private String ow_name;
	private String ow_pwd;
	private String ow_pwd_ck;
	private String ow_phon;
	private String ow_addr;
	private String ow_img;
	

	public String getOw_img() {
		return ow_img;
	}

	public void setOw_img(String ow_img) {
		this.ow_img = ow_img;
	}

	public String getOw_id() {
		return ow_id;
	}

	public void setOw_id(String ow_id) {
		this.ow_id = ow_id;
	}

	public String getOw_name() {
		return ow_name;
	}

	public void setOw_name(String ow_name) {
		this.ow_name = ow_name;
	}

	public String getOw_pwd() {
		return ow_pwd;
	}

	public void setOw_pwd(String ow_pwd) {
		this.ow_pwd = ow_pwd;
	}

	public String getOw_pwd_ck() {
		return ow_pwd_ck;
	}

	public void setOw_pwd_ck(String ow_pwd_ck) {
		this.ow_pwd_ck = ow_pwd_ck;
	}

	public String getOw_phon() {
		return ow_phon;
	}

	public void setOw_phon(String ow_phon) {
		this.ow_phon = ow_phon;
	}

	public String getOw_addr() {
		return ow_addr;
	}

	public void setOw_addr(String ow_addr) {
		this.ow_addr = ow_addr;
	}

	@Override
	public String toString() {
		return "OwnerBean [ow_id=" + ow_id + ", ow_name=" + ow_name + ", ow_pwd=" + ow_pwd + ", ow_pwd_ck=" + ow_pwd_ck
				+ ", ow_phon=" + ow_phon + ", ow_addr=" + ow_addr + "]";
	}

}
