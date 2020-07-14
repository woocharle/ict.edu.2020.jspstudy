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
			
			conn = DriverManager.getConnection(url, user, password);
			
		} catch (Exception e) {
			// TODO: handle exception
		}

		return conn;
	}
	
	
	public VO getoneList(String idx){
		VO vo = new VO();
		try {
			conn = getConnection();
			String sql = "select * from guestbook where idx=?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, idx);
			
			rs = pstm.executeQuery();
			while(rs.next()) {
				vo.setIdx(rs.getString("idx"));
				vo.setM_name(rs.getString("name"));
				vo.setM_sub(rs.getString("subject"));
				vo.setM_cnt(rs.getString("content"));
				vo.setM_email(rs.getString("email"));
				vo.setM_pw(rs.getString("pwd"));
				vo.setM_reg(rs.getString("regdate"));
			}

			
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {			
				rs.close();
				pstm.close();
				conn.close();
			} catch (Exception e2) {

			}
		}
		
		
		return vo;
	}
	

	public ArrayList<VO> getList(){
		ArrayList<VO> list = new ArrayList<VO>();
		try {
			conn = getConnection();
			String sql = "select * from guestbook order by idx";
			pstm = conn.prepareStatement(sql);
			
			rs = pstm.executeQuery();
			while(rs.next()) {
				VO vo = new VO();
				vo.setIdx(rs.getString("idx"));
				vo.setM_name(rs.getString("name"));
				vo.setM_sub(rs.getString("subject"));
				vo.setM_cnt(rs.getString("content"));
				vo.setM_email(rs.getString("email"));
				vo.setM_pw(rs.getString("pwd"));
				vo.setM_reg(rs.getString("regdate"));
				
				list.add(vo);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {			
				rs.close();
				pstm.close();
				conn.close();
			} catch (Exception e2) {

			}
		}
		
		return list;
	}
	
	public int getUpdate(VO vo) {
		result = 0;
		
		try {
			conn = getConnection();
			String sql = "UPDATE guestbook \n" + 
						 "SET name=?, subject=?, content=?, email=? where idx=?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, vo.getM_name());
			pstm.setString(2, vo.getM_sub());
			pstm.setString(3, vo.getM_cnt());
			pstm.setString(4, vo.getM_email());
			pstm.setString(5, vo.getIdx());
			
			result = pstm.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {			
				rs.close();
				pstm.close();
				conn.close();
			} catch (Exception e2) {

			}
		}
		return result;

	}
	
	
	public int getDelete(VO vo) {
		result = 0;
		try {
			conn = getConnection();
			String sql = "DELETE FROM guestbook \n" + 
					 	 "where idx=?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, vo.getIdx());
			
			result=pstm.executeUpdate();
			
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
		
	public int getInsert(String name, String sub, String con, String email, String pw){
		result = 0;
		
		try {
			conn = getConnection();
			String sql = "insert into guestbook \n" + 
						 "values(guestbook_seq.nextval, ?, ?, ?, ?, ?, SYSDATE)";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, name);
			pstm.setString(2, sub);
			pstm.setString(3, con);
			pstm.setString(4, email);
			pstm.setString(5, pw);
			
			result = pstm.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {			
				rs.close();
				pstm.close();
				conn.close();
			} catch (Exception e2) {

			}
		}
		return result;
		
	}
	
	
	public int getInsert2(VO vo){
		result = 0;
		
		try {
			conn = getConnection();
			String sql = "insert into guestbook \n" + 
						 "values(guestbook_seq.nextval, ?, ?, ?, ?, ?, SYSDATE)";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, vo.getM_name());
			pstm.setString(2, vo.getM_sub());
			pstm.setString(3, vo.getM_cnt());
			pstm.setString(4, vo.getM_email());
			pstm.setString(5, vo.getM_pw());
			
			result = pstm.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {			
				rs.close();
				pstm.close();
				conn.close();
			} catch (Exception e2) {

			}
		}
		return result;
		
	}
	
	
}
