package com.ict.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;



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
	
	public static List<VO> getList(){
		List<VO> list = null;
		list = getSession().selectList("list");
		return list;
	}
	
	public static List<VO> getDeptList(String deptno){
		List<VO> list = null;
		list = getSession().selectList("d_list", deptno);
		return list;
	}

	public static List<VO> getDynamic(Map<String , String> map){
		List<VO> list = null;
		list = getSession().selectList("dy_list", map);
		
		
		return list;
	}
	
	
	
}
