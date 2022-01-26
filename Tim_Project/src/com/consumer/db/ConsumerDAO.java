package com.consumer.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DBManager;

public class ConsumerDAO {

	private ConsumerDAO() {
	}

	private static ConsumerDAO instance = new ConsumerDAO();

	public static ConsumerDAO getInstance() {
		return instance;
	}

	// ID 중복 확인
	public int confirmID(String con_id) {
		int result = -1;
		String sql = "select * from consumer where con_id=?";

		Connection connn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			connn = DBManager.getConnection();
			pstmt = connn.prepareStatement(sql);
			pstmt.setString(1, con_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = 1;
			} else {
				result = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(connn, pstmt, rs);
		}
		return result;
	}

	// 닉네임 중복 확인
	public int confirmNAME(String con_name) {
		int result = -1;
		String sql = "select * from consumer where con_name=?";

		Connection connn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			connn = DBManager.getConnection();
			pstmt = connn.prepareStatement(sql);
			pstmt.setString(1, con_name);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = 1;
			} else {
				result = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(connn, pstmt, rs);
		}
		return result;
	}

	public ConsumerBean getConsumer(String con_id) {
		ConsumerBean consumerBean = null;
		String sql = "select * from consumer where con_id=?";

		Connection connn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			connn = DBManager.getConnection();
			pstmt = connn.prepareStatement(sql);
			pstmt.setString(1, con_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				consumerBean = new ConsumerBean();
				consumerBean.setCon_id(rs.getString("con_id"));
				consumerBean.setCon_name(rs.getString("con_name"));
				consumerBean.setCon_pwd(rs.getString("con_pwd"));
				consumerBean.setCon_pwd_ck(rs.getString("con_pwd_ck"));
				consumerBean.setCon_phon(rs.getString("con_phon"));
//	    	///////////////////////////////////////////////////
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(connn, pstmt, rs);
		}
		return consumerBean;
	}

	// 회원 회원가입
	public int insertConsumer(ConsumerBean consumerBean) {
		int result = -1;
		String sql = "insert into consumer(con_id, con_name, con_pwd, con_pwd_ck,";
		sql += " con_phon) values(?, ?, ?, ?, ?)";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, consumerBean.getCon_id());
			pstmt.setString(2, consumerBean.getCon_name());
			pstmt.setString(3, consumerBean.getCon_pwd());
			pstmt.setString(4, consumerBean.getCon_pwd_ck());
			pstmt.setString(5, consumerBean.getCon_phon());
			result = pstmt.executeUpdate();

			System.out.println("insert" + pstmt);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}

	///////////////////////////////////////////////////////////////////////////////////////////////////

	public int updateConsumer(ConsumerBean consumerBean) {
		int result = -1;
		String sql = "update consumer set con_name=?, con_pwd=?, con_pwd_ck=?, ";
		sql += "con_phon=? where con_id=?";

		System.out.println("update@@@@@@@@@@@@@@@@@@@@@@@@@" + sql);
		System.out.println("consumerVo@@@@@@@@@@@@@@@@@@@@@@@@@" + consumerBean);

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			System.out.println("sql@@@@@@@@@@@@@@@@@@@@@" + sql);

			pstmt.setString(1, consumerBean.getCon_name());
			pstmt.setString(2, consumerBean.getCon_pwd());
			pstmt.setString(3, consumerBean.getCon_pwd_ck());
			pstmt.setString(4, consumerBean.getCon_phon());
			pstmt.setString(5, consumerBean.getCon_id());
			result = pstmt.executeUpdate();

			System.out.println("update@@@@@@@@@@@@@@@@@@@@@" + result);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}

	///////////////////////////////////////////////////////////////////////////////////////////////////

}
