package com.ict.edu;

public class VO {
	private String idx, name, sub, con, fp, email, pw, reg;

	public VO() {
		// TODO Auto-generated constructor stub
	}
	
	public VO(String idx, String name, String sub, String con, String fp, String email, String pw, String reg) {
		this.idx = idx;
		this.name = name;
		this.sub = sub;
		this.con = con;
		this.fp = fp;
		this.email = email;
		this.pw = pw;
		this.reg = reg;
	}

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSub() {
		return sub;
	}

	public void setSub(String sub) {
		this.sub = sub;
	}

	public String getCon() {
		return con;
	}

	public void setCon(String con) {
		this.con = con;
	}

	public String getFp() {
		return fp;
	}

	public void setFp(String fp) {
		this.fp = fp;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getReg() {
		return reg;
	}

	public void setReg(String reg) {
		this.reg = reg;
	}
	
}
