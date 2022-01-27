package com.reservation.db;

public class ReservationBean {
	private String rev_time ;
	private String rev_date ;
	private String rev_name;//식당이름
	private String rev_id;//손님아이디
	private int rev_num;
	
	
	public String getRev_date() {
		return rev_date;
	}
	public void setRev_date(String rev_date) {
		this.rev_date = rev_date;
	}
	public int getRev_num() {
		return rev_num;
	}
	public void setRev_num(int rev_num) {
		this.rev_num = rev_num;
	}
	public String getRev_time() {
		return rev_time;
	}
	public void setRev_time(String rev_time) {
		this.rev_time = rev_time;
	}
	public String getRev_name() {
		return rev_name;
	}
	public void setRev_name(String rev_name) {
		this.rev_name = rev_name;
	}
	public String getRev_id() {
		return rev_id;
	}
	public void setRev_id(String rev_id) {
		this.rev_id = rev_id;
	}
	@Override
	public String toString() {
		return "ReservationBean [rev_time=" + rev_time + ", rev_date=" + rev_date + ", rev_name=" + rev_name
				+ ", rev_id=" + rev_id + ", rev_num=" + rev_num + "]";
	}
	

}
