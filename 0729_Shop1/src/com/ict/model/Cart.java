package com.ict.model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.ict.db.DAO;
import com.ict.db.VO;

public class Cart {
	static List<VO> finditem;
	static int quant;
	static int total;
	static {
		finditem= new ArrayList<VO>();
	}
	
	//카트에 해당 제품이 있는지 없는지 검사하는 메소드
	
	public static VO findProduct(String idx) {
		VO cvo = null;
	
		Iterator<VO> it = finditem.iterator();
		while (it.hasNext()) {
			VO vo = it.next();
			if(vo.getIdx() == Integer.parseInt(idx)) {
				cvo = vo;
				break;
			}
		}		
		
		return cvo;
	}
	
	
	//제품을 카트에 담기 
	public static void addProduct(String idx) {
		VO cvo = findProduct(idx);
		if(cvo != null) {
			// 카트에 있는 현재 갯수를 증가
			cvo.setQuant(cvo.getQuant() + 1 );
			quant = cvo.getQuant();
			total = total + cvo.getP_saleprice();
		} else {
			VO vo = DAO.getOnelist(idx);
			vo.setQuant(1);
			quant = vo.getQuant();
			total = total + vo.getP_saleprice();
			
		}
		
	}
	
	//카트에서 제품을 삭제할 경우
	public static void delProduct(String idx) {
		VO cvo = findProduct(idx);
		if(cvo != null) {
			finditem.remove(cvo);
			total= total - cvo.getTotalprice();
		}
	}
	
	
	
}
