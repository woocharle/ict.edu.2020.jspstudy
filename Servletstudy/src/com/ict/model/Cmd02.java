package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Cmd02 {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String msg=""; //결과를 받을 html파일이름.
		//일처리
		int luck= (int)(Math.random()*101);
		
		msg = "너의 운수는"+ String.valueOf(luck) + "%입니다.";
		
		return msg;
	}
}