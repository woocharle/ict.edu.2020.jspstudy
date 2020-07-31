package com.ict.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.ict.model.Paging;



public class DAO {
	//MyBatis를 사용하기 위해서 SqlSession클래스를 사용
	private static SqlSession ss;
	
	// 싱글턴 패턴
	private synchronized static SqlSession getSession() {
		if (ss == null) {
			ss = DBService.getFactory().openSession(false);
		}
		return ss;
	}

	public static List<VO> getList(Paging paging){
		List<VO> list = null;  
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", paging.getBegin());
		map.put("end", paging.getEnd());
		
		list = getSession().selectList("list", map);
		
		return list;
	}
		
	public static int getCount() {
		int result = 0;
		result = getSession().selectOne("tCount");
		
		return result;
	}
	
	public static VO getOnelist(String idx){
		VO vo = new VO();	
		vo = getSession().selectOne("onelist", idx);
		return vo;
	}
	
	
	public static int getIDU(VO vo, String mth) {
		int result = 0;
		
		switch (mth) {
			case "Insert": result = getSession().insert("insert", vo); break;
			case "Update": result = getSession().update("update", vo); break;
			case "Delete": result = getSession().delete("delete", vo.getIdx()); break;
			//댓글
			case "Insert_2": result = getSession().insert("insert2", vo); break; 
		}
		
		ss.commit();
		
		return result;
	}
	
	public static int getHit(String idx) {
		int result = 0;
		result = getSession().update("hitup", idx);
		
		ss.commit();
		
		return result;
	}
	
	// 기존 원글에 달려 있는 댓글의 lev을 업데이트 할 것.
	public static void getUP_lev(Map<String, Integer> map) {
		getSession().update("lev_up", map);
		ss.commit();
	}
	
	
}
