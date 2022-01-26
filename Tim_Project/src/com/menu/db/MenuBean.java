package com.menu.db;

public class MenuBean {
    private String mn_name;//메뉴이름
    private String mn_img;//메뉴 사진
    private int mn_price;//메뉴 가격
    private String mn_content;//메뉴 설명
    private String mn_owner;//가게 이름

   
	public String getMn_owner() {
		return mn_owner;
	}
	public void setMn_owner(String mn_owner) {
		this.mn_owner = mn_owner;
	}
	public String getMn_name() {
		return mn_name;
	}
	public void setMn_name(String mn_name) {
		this.mn_name = mn_name;
	}
	public String getMn_img() {
		return mn_img;
	}
	public void setMn_img(String mn_img) {
		this.mn_img = mn_img;
	}
	public int getMn_price() {
		return mn_price;
	}
	public void setMn_price(int mn_price) {
		this.mn_price = mn_price;
	}
	public String getMn_content() {
		return mn_content;
	}
	public void setMn_content(String mn_content) {
		this.mn_content = mn_content;
	}
	  
}
