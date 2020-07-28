package com.ict.db;

public class CVO {
	String c_idx, writer, content, pwd, writedate, b_idx;
	
	public CVO() {}

	public CVO(String c_idx, String writer, String content, String pwd, String writedate, String b_idx) {
		this.c_idx = c_idx;
		this.writer = writer;
		this.content = content;
		this.pwd = pwd;
		this.writedate = writedate;
		this.b_idx = b_idx;
	}

	public String getC_idx() {
		return c_idx;
	}

	public void setC_idx(String c_idx) {
		this.c_idx = c_idx;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getwritedate() {
		return writedate;
	}

	public void setwritedate(String writedate) {
		this.writedate = writedate;
	}

	public String getB_idx() {
		return b_idx;
	}

	public void setB_idx(String b_idx) {
		this.b_idx = b_idx;
	}
	
}
