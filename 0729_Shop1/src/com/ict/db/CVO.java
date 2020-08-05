package com.ict.db;

public class CVO {
	private String idx, c_id, c_num, c_name, c_price, c_saleprice, c_quant, c_total;
	
	public CVO() {}

	public CVO(String idx, String c_id, String c_num, String c_name, String c_price, String c_saleprice, String c_quant, String c_total) {
		this.idx = idx;
		this.c_id = c_id;
		this.c_num = c_num;
		this.c_name = c_name;
		this.c_price = c_price;
		this.c_saleprice = c_saleprice;
		this.c_quant = c_quant;
		this.c_total = c_total;
	}

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}


	public String getC_id() {
		return c_id;
	}

	public void setC_id(String c_id) {
		this.c_id = c_id;
	}

	public String getC_num() {
		return c_num;
	}

	public void setC_num(String c_num) {
		this.c_num = c_num;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getC_price() {
		return c_price;
	}

	public void setC_price(String c_price) {
		this.c_price = c_price;
	}

	public String getC_saleprice() {
		return c_saleprice;
	}

	public void setC_saleprice(String c_saleprice) {
		this.c_saleprice = c_saleprice;
	}

	public String getC_quant() {
		return c_quant;
	}

	public void setC_quant(String c_quant) {
		this.c_quant = c_quant;
	}

	public String getC_total() {
		return c_total;
	}

	public void setC_total(String c_total) {
		this.c_total = c_total;
	}


	
}
