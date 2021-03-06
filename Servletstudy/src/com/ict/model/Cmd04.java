package com.ict.model;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Cmd04 {
	VO_1 vo = new VO_1();
	ArrayList<VO_1> list;
	
	public ArrayList<VO_1> exec_1(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		String grd ="";
		list = new ArrayList<VO_1>();
		int kor= Integer.parseInt(request.getParameter("kor"));
		int eng= Integer.parseInt(request.getParameter("eng"));
		int math= Integer.parseInt(request.getParameter("math"));
		int sum = kor + eng + math;
		double avg = (int)(sum/3.0 * 10)/10.0;
		
		if (avg >= 90) {
			grd = "A";
		} else if (avg >= 80) {
			grd = "B";
		} else if (avg >= 70) {
			grd = "C";
		} else {
			grd = "F";
		}

		vo.setName(name);
		vo.setKor(kor);
		vo.setEng(eng);
		vo.setMath(math);
		vo.setSum(sum);
		vo.setAvg(avg);
		vo.setGrd(grd);
		list.add(vo);
		
		return list;
		
	}
	
	public ArrayList<VO_1> exec_2(HttpServletRequest request, HttpServletResponse response) {
		String su1 = request.getParameter("su1");
		String su2 = request.getParameter("su2");
		String op = request.getParameter("op");
		list = new ArrayList<VO_1>();
		
		int sum = 0;
		int s1 = Integer.parseInt(su1);
		int s2 = Integer.parseInt(su2);
		switch (op) {
		case "+": sum = s1 + s2 ; break;
		case "-": sum = s1 - s2 ; break;
		case "*": sum = s1 * s2 ; break;
		case "/": sum = s1 / s2 ; break;
		}
		op = " " + op + " ";
		
		vo.setSu1(su1);
		vo.setSu2(su2);
		vo.setOp(op);
		vo.setSum(sum);
		list.add(vo);
		
		return list;
		
	}

	public ArrayList<VO_1> exec_3(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		int dan = Integer.parseInt(request.getParameter("pay"));
		int time = Integer.parseInt(request.getParameter("time"));
		int sum = time > 8 ? (8 * dan) + (int)((time - 8) * 1.5 * dan) : time * dan; 
		
		list = new ArrayList<VO_1>();
		
		vo.setName(name);
		vo.setDan(dan);
		vo.setTime(time);
		vo.setSum(sum);
		list.add(vo);
		
		return list;
	}
	
	
	
}
