package com.ict.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

public class DAO {
	private static SqlSession ss;
	
	private synchronized static SqlSession getSession() {
		if (ss == null) {
			ss = DBService.getFactory().openSession(false);
			
		}
		return ss;
	}
	
	public static int getCount() {
		int result = 0;
		result = getSession().selectOne("count");
		
		return result;
	}
	
	public static List<BVO> getList(){
		List<BVO> list = null;
		list = getSession().selectList("list");
		return list;
	}
	
	public static List<BVO> getList(int begin, int end){
		List<BVO> list = null;
		// 파라미터값이 하나 이상이므로 VO 또는 Map를 만들어서 넣어주어야 한다.
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		
		list = getSession().selectList("plist", map);
		return list;
	}
	
	
	public static List<CVO> getclist(String b_idx){
		List<CVO> clist = null;
		clist = getSession().selectList("clist", b_idx);
		return clist;
	}
	
	
	public static BVO getOnelist(String b_idx) {
		BVO bvo = new BVO();
		bvo = getSession().selectOne("onelist", b_idx);
		
		return bvo;
	}
	
	public static int getHitup(String b_idx) {
		int result = 0;
		result = getSession().update("hitup", b_idx);
		
		ss.commit();
	
		return result;
	}
	
	public static int getIDU_1(BVO bvo, String mth) {
		int result = 0;
	
		switch (mth) {
			case "Insert": result = getSession().insert("insert_1", bvo); break;
			case "Update": result = getSession().update("update_1", bvo); break;
			case "Delete": result = getSession().delete("delete_1", bvo.getB_idx()); break;
		}
		
		ss.commit();
		
		return result; 
	}
	
	public static int getC_insert(CVO cvo) {
		int result = 0;
	
		result = getSession().insert("insert_2", cvo); 
		ss.commit();
		
		return result; 
	}
	
	public static int getC_delete(String c_idx) {
		int result = 0;
		
		result = getSession().delete("delete_2", c_idx); 
		ss.commit();
		
		return result;
	}
	
	
}
