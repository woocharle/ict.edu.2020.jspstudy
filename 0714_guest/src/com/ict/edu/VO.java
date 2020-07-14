package com.ict.edu;

public class VO {
	private String idx, m_name, m_sub, m_cnt, m_email, m_pw, m_reg;
	
	public VO() {}

	public VO(String idx, String m_name, String m_sub, String m_cnt, String m_email, String m_pw, String m_reg) {
		this.idx = idx;
		this.m_name = m_name;
		this.m_sub = m_sub;
		this.m_cnt = m_cnt;
		this.m_email = m_email;
		this.m_pw = m_pw;
		this.m_reg = m_reg;
	}

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_sub() {
		return m_sub;
	}

	public void setM_sub(String m_sub) {
		this.m_sub = m_sub;
	}

	public String getM_cnt() {
		return m_cnt;
	}

	public void setM_cnt(String m_cnt) {
		this.m_cnt = m_cnt;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_pw() {
		return m_pw;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public String getM_reg() {
		return m_reg;
	}

	public void setM_reg(String m_reg) {
		this.m_reg = m_reg;
	}
		
}
