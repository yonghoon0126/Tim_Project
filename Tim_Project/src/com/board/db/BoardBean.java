package com.board.db;

import java.sql.Date;

public class BoardBean {

	private int bo_num;
	private String bo_name;
	private String bo_pass;
	private String bo_title;
	private String bo_content;
	private Date bo_date;
	private int bo_readCount;

	public int getBo_num() {
		return bo_num;
	}

	public void setBo_num(int bo_num) {
		this.bo_num = bo_num;
	}

	public String getBo_name() {
		return bo_name;
	}

	public void setBo_name(String bo_name) {
		this.bo_name = bo_name;
	}

	public String getBo_pass() {
		return bo_pass;
	}

	public void setBo_pass(String bo_pass) {
		this.bo_pass = bo_pass;
	}

	public String getBo_title() {
		return bo_title;
	}

	public void setBo_title(String bo_title) {
		this.bo_title = bo_title;
	}

	public String getBo_content() {
		return bo_content;
	}

	public void setBo_content(String bo_content) {
		this.bo_content = bo_content;
	}

	public Date getBo_date() {
		return bo_date;
	}

	public void setBo_date(Date bo_date) {
		this.bo_date = bo_date;
	}

	public int getBo_readCount() {
		return bo_readCount;
	}

	public void setBo_readCount(int bo_readCount) {
		this.bo_readCount = bo_readCount;
	}

	@Override
	public String toString() {
		return "BoardBean [bo_num=" + bo_num + ", bo_name=" + bo_name + ", bo_pass=" + bo_pass + ", bo_title="
				+ bo_title + ", bo_content=" + bo_content + ", bo_date=" + bo_date + ", bo_readCount=" + bo_readCount
				+ "]";
	}

}
