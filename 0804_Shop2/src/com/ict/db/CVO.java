package com.ict.db;

public class CVO {
	private String c_idx, p_num, p_name, p_price, p_su, id;

	public CVO(String c_idx, String p_num, String p_name, String p_price, String p_su, String id) {
		super();
		this.c_idx = c_idx;
		this.p_num = p_num;
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_su = p_su;
		this.id = id;
	}

	public String getC_idx() {
		return c_idx;
	}

	public void setC_idx(String c_idx) {
		this.c_idx = c_idx;
	}

	public String getP_num() {
		return p_num;
	}

	public void setP_num(String p_num) {
		this.p_num = p_num;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_price() {
		return p_price;
	}

	public void setP_price(String p_price) {
		this.p_price = p_price;
	}

	public String getP_su() {
		return p_su;
	}

	public void setP_su(String p_su) {
		this.p_su = p_su;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	} 
	
	
}
