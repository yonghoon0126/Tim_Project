package com.menu.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.owner.db.OwnerBean;

import util.DBManager;

public class MenuDAO {
	public MenuDAO() {
	}

	private static MenuDAO instance = new MenuDAO();

	public static MenuDAO getInstance() {
		return instance;
	}

	public ArrayList<OwnerBean> selectAllOw() {
		ArrayList<OwnerBean> list = new ArrayList<OwnerBean>();
		
		String sql = "select * from owner order by ow_name desc";
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				OwnerBean oVo = new OwnerBean();
				oVo.setOw_name(rs.getString("ow_name"));
				oVo.setOw_phon(rs.getString("ow_phon"));
				oVo.setOw_addr(rs.getString("ow_addr"));
				oVo.setOw_img(rs.getString("ow_img"));
				list.add(oVo);

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, ps, rs);
		}
		return list;

	}

	public int insertMenu(MenuBean mb) {
		int result = -1;
		String sql = "insert into menu(mn_owner, mn_img, mn_name, mn_price, mn_content) values(?, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, mb.getMn_owner());
			pstmt.setString(2, mb.getMn_img());
			pstmt.setString(3, mb.getMn_name());
			pstmt.setInt(4, mb.getMn_price());
			pstmt.setString(5, mb.getMn_content());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			result = 1;
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}

	

	public void deleteMenu(String name) {
		String sql = "delete menu where mn_name=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	public List<MenuBean> selectOneOw(String name) {
		String sql = "select * from menu where mn_owner=?";
		List<MenuBean> list = new ArrayList<MenuBean>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				MenuBean mb = new MenuBean();
				mb.setMn_owner(rs.getString("mn_owner"));
				mb.setMn_name(rs.getString("mn_name"));
				mb.setMn_img(rs.getString("mn_img"));
				mb.setMn_price(rs.getInt("mn_price"));
				mb.setMn_content(rs.getString("mn_content"));
				
				list.add(mb);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}

		return list;
	}
	public List<MenuBean> selectOnemenu(String name) {
		String sql="select * from menu where mn_owner=?";
		List<MenuBean> list = new ArrayList<MenuBean>();
		MenuBean mb =null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		try {
			conn=DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,name);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				mb=new MenuBean();
				mb.setMn_owner(rs.getString("mn_owner"));
				mb.setMn_name(rs.getString("mn_name"));
				mb.setMn_img(rs.getString("mn_img"));
				mb.setMn_price(rs.getInt("mn_price"));
				mb.setMn_content(rs.getString("mn_content"));
				list.add(mb);
			}

		}catch (Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt,rs);
			}
				
		return list;
	}

	public ArrayList<OwnerBean> searchOw(String st) {
		String sql="select * from owner where ow_name like '%' || ? || '%' or ow_addr like '%' || ? || '%'";
		//9String sql="select * from owner where ow_name like '%' || ? || '%'";
		ArrayList<OwnerBean> list = new ArrayList<OwnerBean>();
		OwnerBean mb =null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		try {
			conn=DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,st);
			pstmt.setString(2,st);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				mb=new OwnerBean();
				mb.setOw_name(rs.getString("ow_name"));
				mb.setOw_addr(rs.getString("ow_addr"));
				list.add(mb);
			}

		}catch (Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt,rs);
			}
				
		return list;
	}
}