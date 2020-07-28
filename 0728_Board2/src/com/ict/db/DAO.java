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
	
}
