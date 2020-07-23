package com.ict.db;

import java.util.List;


import org.apache.ibatis.session.SqlSession;



public class DAO {
	//MyBatis를 사용하기 위해서 SqlSession클래스를 사용
	private static SqlSession ss;
	
	// 싱글턴 패턴
	private synchronized static SqlSession getSession() {
		if (ss == null) {
			/* 커밋은 select에는 의미가 없다.
			   insert, update, delete는 커밋을 해야 한다.
			
			   자동 commit 안 됨
			    ss = DBService.getFactory().openSession();
			  	ss = DBService.getFactory().openSession(false);
			  	
			    1) 개발자가 커밋 명령을 해야된다. 
			   
			    2) 나중에 트랜잭션 처리할 때 필요하다.     	
	
			
			   자동 commit 됨.
			    ss = DBService.getFactory().openSession(true);
			 
			*/
			ss = DBService.getFactory().openSession(false);
			
		}
		return ss;
		
	}
	
	// SqlSession을 이용해서 DB처리
	// list처리
	// 여러개 일 때 
	public static List<VO> getList(){
		List<VO> list = null;
		
		//list = getSession().selectList("mapper의 id");
		//list = getSession().selectList("mapper의 id", "파라미터");
		
		list = getSession().selectList("list");
		ss.commit();
		
		return list;
	}
	
	// 하나 일 때 (로그인 등 기본키로 검색을 해야 되는 것.)
	public static VO getOnelist(String idx) {
		VO vo = null;
		
		//vo = getSession().selectOne("mapper의 id");
		//vo= getSession().selectOne("mapper의 id", "파라미터");	
		
		vo = getSession().selectOne("onelist", idx);
		
		return vo;
	}
	
	public static int getIDU(VO vo, String mth) {
		int result = 0;
		// 게시판 만들 때 map을 넣는다.
		
		switch (mth) {
			case "Insert": result =getSession().insert("insert", vo); break;
			case "Update": result =getSession().update("update", vo); break;
			case "Delete": result =getSession().delete("delete", vo); break;
		}
		
		ss.commit();
		return result;
	
	}

	
}
