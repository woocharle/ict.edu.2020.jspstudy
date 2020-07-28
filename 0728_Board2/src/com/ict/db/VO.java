package com.ict.db;

public class VO {
	private String idx, writer,title, content, pwd, hit, groups, step, lev, regdate, filename;
	
    public VO() {}

	public VO(String idx, String writer, String title, String content, String pwd, String hit, String groups,
			String step, String lev, String regdate, String filename) {
		super();
		this.idx = idx;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.pwd = pwd;
		this.hit = hit;
		this.groups = groups;
		this.step = step;
		this.lev = lev;
		this.regdate = regdate;
		this.filename = filename;
	}

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}

	public String getGroups() {
		return groups;
	}

	public void setGroups(String groups) {
		this.groups = groups;
	}

	public String getStep() {
		return step;
	}

	public void setStep(String step) {
		this.step = step;
	}

	public String getLev() {
		return lev;
	}

	public void setLev(String lev) {
		this.lev = lev;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	
	
}
