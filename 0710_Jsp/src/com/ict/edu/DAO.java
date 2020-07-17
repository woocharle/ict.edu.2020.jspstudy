package com.ict.edu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAO {
	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	int result;
	ArrayList<VO> list;
	
	// 싱글톤 패턴 : 프로그램이 끝날 때까지 하나의 객체를 사용
	//               필요한 객체를 또 만들지 않고 한번 만든 객체를 재사용하는 것
	
	private static DAO dao = new DAO();
	
	public static DAO getInstance() {
		return dao;
	}
	
	public Connection getConnection() {
		try {
			list = new ArrayList<VO>();
			Class.forName("oracle.jdbc.OracleDriver");
			String url = "jdbc:oracle:thin:@203.236.220.86";
			String user = "c##jwc";					
			String password = "1112";
			
			conn=DriverManager.getConnection(url, user, password);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return conn;
	}
	
	public VO getlogin(String m_id, String m_pw) {
		VO vo = null;
				
		try {
			conn = getConnection();
			String sql = "select * from members where m_id=? and m_pw=?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, m_id);
			pstm.setString(2, m_pw);
			
			rs = pstm.executeQuery();
			if(rs.next()) {
				vo = new VO();
				vo.setIdx(rs.getString("idx"));
				vo.setM_id(rs.getString("m_id"));
				vo.setM_pw(rs.getString("m_pw"));
				vo.setM_name(rs.getString("m_name"));
				vo.setM_age(rs.getString("m_age"));
				vo.setM_reg(rs.getString("m_reg"));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				
				rs.close();
				pstm.close();
				conn.close();
				
			} catch (Exception e2) {
				// TODO: handle exception
			}
						
		}
		return vo;
	}
	
	// 회원가입
	
	public int getInsert(String m_id, String m_pw, String m_name, String m_age) {
		int result = 0;
		
		try {
			conn = getConnection();
			String sql = "insert into members \n"+
					  	  "values(members_seq.nextval, ?, ?, ?, ?, SYSDATE)";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, m_id);
			pstm.setString(2, m_pw);
			pstm.setString(3, m_name);
			pstm.setString(4, m_age);
			
			result = pstm.executeUpdate();
			
			
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				rs.close();
				pstm.close();
				conn.close();
				
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		return result;
		
	}
	
	// 전체 목록보기 	
	public ArrayList<VO> getList(){
		ArrayList<VO> list = new ArrayList<VO>();
		try {
			conn = getConnection();
			String sql = "select * from members order by idx";
			pstm = conn.prepareStatement(sql);
			
			rs = pstm.executeQuery();
			
			while(rs.next()) {
				VO vo = new VO();
				vo.setIdx(rs.getString("idx"));
				vo.setM_id(rs.getString("m_id"));
				vo.setM_pw(rs.getString("m_pw"));
				vo.setM_name(rs.getString("m_name"));
				vo.setM_age(rs.getString("m_age"));
				vo.setM_reg(rs.getString("m_reg"));
				
				list.add(vo);
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
		} finally{
			try {
				rs.close();
				pstm.close();
				conn.close();
				
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		return list;	
	}
	
	// 기본키를 받아 삭제
	public int getDelete(String idx) {
		int result = 0;
		try {
			conn = getConnection();
			String sql = "delete from members where idx = ?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, idx);
			
			result = pstm.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				rs.close();
				pstm.close();
				conn.close();				
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		return result;
	}
	
	public int getUpdate(String idx, String m_name, String m_age) {
		int result = 0;
		try {
			conn = getConnection();
			String sql ="UPDATE members\n" +
					  	"SET m_name = ?, m_age = ? \n" + 
					  	"where idx = ?";
			pstm = conn.prepareStatement(sql);	
			pstm.setString(1, m_name);
			pstm.setString(2, m_age);
			pstm.setString(3, idx);
			
			result = pstm.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				rs.close();
				pstm.close();
				conn.close();	
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		return result;
	}
	
}
