package com.ict.db;

public class BVO {
	String  b_idx, subject, writer, content, filename, pwd, writedate, hit;
	
	public BVO() {}

	public BVO(String b_idx, String subject, String writer, String content, String filename, String pwd,
			String writedate, String hit) {
		this.b_idx = b_idx;
		this.subject = subject;
		this.writer = writer;
		this.content = content;
		this.filename = filename;
		this.pwd = pwd;
		this.writedate = writedate;
		this.hit = hit;
	}

	public String getB_idx() {
		return b_idx;
	}

	public void setB_idx(String b_idx) {
		this.b_idx = b_idx;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
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

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getWritedate() {
		return writedate;
	}

	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}
	
}
