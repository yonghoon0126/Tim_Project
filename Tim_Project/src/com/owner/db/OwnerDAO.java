package com.owner.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DBManager;

public class OwnerDAO {

	private OwnerDAO() {
	}

	private static OwnerDAO instance = new OwnerDAO();

	public static OwnerDAO getInstance() {
		return instance;
	}

	public int owfirmID(String ow_id) {
		int result = -1;
		String sql = "select * from owner where ow_id=?";

		Connection connn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			connn = DBManager.getConnection();
			pstmt = connn.prepareStatement(sql);
			pstmt.setString(1, ow_id);
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

	public int owfirmNAME(String ow_name) {
		int result = -1;
		String sql = "select * from owner where ow_name=?";

		Connection connn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			connn = DBManager.getConnection();
			pstmt = connn.prepareStatement(sql);
			pstmt.setString(1, ow_name);
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

	public OwnerBean getOwner(String ow_id) {
		OwnerBean ownerBean = null;
		String sql = "select * from owner where ow_id=?";

		Connection connn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			connn = DBManager.getConnection();
			pstmt = connn.prepareStatement(sql);
			pstmt.setString(1, ow_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				ownerBean = new OwnerBean();
				ownerBean.setOw_id(rs.getString("ow_id"));
				ownerBean.setOw_name(rs.getString("ow_name"));
				ownerBean.setOw_pwd(rs.getString("ow_pwd"));
				ownerBean.setOw_pwd_ck(rs.getString("ow_pwd_ck"));
				ownerBean.setOw_phon(rs.getString("ow_phon"));
				ownerBean.setOw_addr(rs.getString("ow_addr"));
				ownerBean.setOw_img(rs.getString("ow_img"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(connn, pstmt, rs);
		}
		return ownerBean;
	}

	public int insertOwner(OwnerBean ownerBean) {
		int result = 0;
		String sql = "insert into owner(ow_id, ow_name, ow_pwd, ow_pwd_ck,";
		sql += " ow_phon, ow_addr) values(?, ?, ?, ?, ?, ?)";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ownerBean.getOw_id());
			pstmt.setString(2, ownerBean.getOw_name());
			pstmt.setString(3, ownerBean.getOw_pwd());
			pstmt.setString(4, ownerBean.getOw_pwd_ck());
			pstmt.setString(5, ownerBean.getOw_phon());
			pstmt.setString(6, ownerBean.getOw_addr());
			result = pstmt.executeUpdate();

			System.out.println("insert" + pstmt);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}

	public int updateOwner(OwnerBean ownerBean) {
		int result = -1;
		String sql = "update owner set ow_name=?, ow_pwd=?, ow_pwd_ck=?, ";
		sql += "ow_phon=?, ow_addr=? where ow_id=?";

		System.out.println("update@@@@@@@@@@@@@@@@@@@@@@@@@" + sql);
		System.out.println("consumerVo@@@@@@@@@@@@@@@@@@@@@@@@@" + ownerBean);

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			System.out.println("sql@@@@@@@@@@@@@@@@@@@@@" + sql);

			pstmt.setString(1, ownerBean.getOw_name());
			pstmt.setString(2, ownerBean.getOw_pwd());
			pstmt.setString(3, ownerBean.getOw_pwd_ck());
			pstmt.setString(4, ownerBean.getOw_phon());
			pstmt.setString(5, ownerBean.getOw_addr());
			pstmt.setString(6, ownerBean.getOw_id());
			result = pstmt.executeUpdate();

			System.out.println("update@@@@@@@@@@@@@@@@@@@@@" + result);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}

	public void insertPic(OwnerBean ownerBean) {
		String sql = "update owner set ow_img=? where ow_id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, ownerBean.getOw_img());
			pstmt.setString(2, ownerBean.getOw_id());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public OwnerBean selectRes(String name) {
		String sql = "select * from owner where ow_name=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		OwnerBean owBean = new OwnerBean();
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, name);
			
			rs = pstmt.executeQuery();
			if (rs.next()) {
				owBean.setOw_img(rs.getString("ow_img"));
				owBean.setOw_phon(rs.getString("ow_phon"));
				owBean.setOw_addr(rs.getString("ow_addr"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt,rs);
		}
		return owBean;
	}

}
