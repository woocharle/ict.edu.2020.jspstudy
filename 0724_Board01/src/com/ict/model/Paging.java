package com.ict.model;

public class Paging {
	// 페이지기법 : 전체 정보에서 원하는 일부의 정보를 가져오기
	//              해당 페이지에 시작번호와 끝번호 구하기
	//                            시작블록과 끝블록 구하기 
	
	private int nowPage = 1;
	private int nowBlock = 1;
	private int totalRecord = 0;
	private int totalPage = 0;
	private int totalBlock = 0;
	private int numPerPage = 3;
	private int pagePerBlock = 3;
	
	private int begin = 0;
	private int end = 0;
	private int beginBlock = 0;
	private int endBlock = 0;
	
	
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public int getNowBlock() {
		return nowBlock;
	}
	public void setNowBlock(int nowBlock) {
		this.nowBlock = nowBlock;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getTotalBlock() {
		return totalBlock;
	}
	public void setTotalBlock(int totalBlock) {
		this.totalBlock = totalBlock;
	}
	public int getNumPerPage() {
		return numPerPage;
	}
	public void setNumPerPage(int numPerPage) {
		this.numPerPage = numPerPage;
	}
	public int getPagePerBlock() {
		return pagePerBlock;
	}
	public void setPagePerBlock(int pagePerBlock) {
		this.pagePerBlock = pagePerBlock;
	}
	public int getBegin() {
		return begin;
	}
	public void setBegin(int begin) {
		this.begin = begin;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getBeginBlock() {
		return beginBlock;
	}
	public void setBeginBlock(int beginBlock) {
		this.beginBlock = beginBlock;
	}
	public int getEndBlock() {
		return endBlock;
	}
	public void setEndBlock(int endBlock) {
		this.endBlock = endBlock;
	}

}
