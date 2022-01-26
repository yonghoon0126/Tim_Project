package com.consumer.db;

public class ConsumerBean {

	private String con_id;
	private String con_name;
	private String con_pwd;
	private String con_pwd_ck;
	private String con_phon;

	public String getCon_id() {
		return con_id;
	}

	public void setCon_id(String con_id) {
		this.con_id = con_id;
	}

	public String getCon_name() {
		return con_name;
	}

	public void setCon_name(String con_name) {
		this.con_name = con_name;
	}

	public String getCon_pwd() {
		return con_pwd;
	}

	public void setCon_pwd(String con_pwd) {
		this.con_pwd = con_pwd;
	}

	public String getCon_pwd_ck() {
		return con_pwd_ck;
	}

	public void setCon_pwd_ck(String con_pwd_ck) {
		this.con_pwd_ck = con_pwd_ck;
	}

	public String getCon_phon() {
		return con_phon;
	}

	public void setCon_phon(String con_phon) {
		this.con_phon = con_phon;
	}

	@Override
	public String toString() {
		return "ConsumerBean [con_id=" + con_id + ", con_name=" + con_name + ", con_pwd=" + con_pwd + ", con_pwd_ck="
				+ con_pwd_ck + ", con_phon=" + con_phon + "]";
	}

}
