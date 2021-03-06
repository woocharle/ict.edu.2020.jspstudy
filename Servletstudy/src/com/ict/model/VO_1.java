package com.ict.model;

public class VO_1 {
	// 성적구하기
	private String name;
	private String grd;
	private int kor;
	private int eng;
	private int math;
	private int sum;
	private double avg;

	
	//사칙연산
	private String su1;
	private String su2;
	private String op;

	//시급
	private int dan;
	private int time;
	
	public VO_1() {
		// TODO Auto-generated constructor stub
	}
	
	public VO_1(String name, String grd, int kor, int eng, int math, int sum, double d_avg, int dan, int time,
			    String su1, String su2, String op) 
	{
		this.name = name;
		this.grd = grd;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
		this.sum = sum;
		this.avg = d_avg;
		
		//사칙연산
		this.su1 = su1;
		this.su2 = su2;
		this.op = op;
		
		//일당
		this.dan = dan;
		this.time = time;

		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGrd() {
		return grd;
	}

	public void setGrd(String grd) {
		this.grd = grd;
	}

	public int getKor() {
		return kor;
	}

	public void setKor(int kor) {
		this.kor = kor;
	}

	public int getEng() {
		return eng;
	}

	public void setEng(int eng) {
		this.eng = eng;
	}

	public int getMath() {
		return math;
	}

	public void setMath(int math) {
		this.math = math;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}

	public double getAvg() {
		return avg;
	}

	public void setAvg(double d_avg) {
		this.avg = d_avg;
	}

	// 일당
	
	public int getDan() {
		return dan;
	}

	public void setDan(int dan) {
		this.dan = dan;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}
	
	// 사칙연산

	public String getSu1() {
		return su1;
	}

	public void setSu1(String su1) {
		this.su1 = su1;
	}

	public String getSu2() {
		return su2;
	}

	public void setSu2(String su2) {
		this.su2 = su2;
	}
	
	public String getOp() {
		return op;
	}

	public void setOp(String op) {
		this.op = op;
	}
}
