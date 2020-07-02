package com.ict.model;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Cmd01 {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String msg=""; //결과를 받을 html파일이름.
		//일처리
		Calendar now = Calendar.getInstance();
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MONTH)+1;
		int day = now.get(Calendar.DATE);
		
		msg = year+"년"+month+"월"+day+"일";
		
		return msg;
	}
}
