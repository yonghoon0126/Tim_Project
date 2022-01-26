package com.reservation.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBManager;

public class ReservationDao {
	private ReservationDao() {

	}

	private static ReservationDao instance = new ReservationDao();

	public static ReservationDao getInstance() {
		return instance;
	}

	// 예약 삽입
	public void insertReservation(ReservationBean revBean) {
		String sql = "insert into reservation values(rev_seq.NEXTVAL, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, revBean.getRev_date());
			pstmt.setString(2, revBean.getRev_time());
			pstmt.setString(3, revBean.getRev_name());
			pstmt.setString(4, revBean.getRev_id());
			pstmt.executeUpdate();
			System.out.println("성공");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	// 손님 예약 조회
	public ArrayList<ReservationBean> listConRev(String userId) {
		ArrayList<ReservationBean> revList = new ArrayList<ReservationBean>();
		String sql = "select * from reservation where rev_id=? order by rev_time desc";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ReservationBean rvBean = new ReservationBean();
				rvBean.setRev_time(rs.getString("rev_time"));
				rvBean.setRev_date(rs.getString("rev_date"));
				rvBean.setRev_name(rs.getString("rev_name"));
				rvBean.setRev_id(rs.getString("rev_id"));
				rvBean.setRev_num(rs.getInt("rev_num"));

				revList.add(rvBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}

		return revList;
	}

	// 사장 예약 조회
	public ArrayList<ReservationBean> listOwRev(String userId) {
		ArrayList<ReservationBean> revList = new ArrayList<ReservationBean>();
		String sql = "select * from reservation where rev_name=? order by rev_time desc";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ReservationBean rvBean = new ReservationBean();
				rvBean.setRev_time(rs.getString("rev_time"));
				rvBean.setRev_date(rs.getString("rev_date"));
				rvBean.setRev_name(rs.getString("rev_name"));
				rvBean.setRev_id(rs.getString("rev_id"));
				rvBean.setRev_num(rs.getInt("rev_num"));

				revList.add(rvBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}

		return revList;
	}

	// 예약 수정
	public int updateReservation(ReservationBean revBean) {
		int result = -1;
		String sql = "update reservation set rev_time=?, rev_date=? where rev_num=?";

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, revBean.getRev_time());
			pstmt.setString(2, revBean.getRev_date());
			pstmt.setInt(3, revBean.getRev_num());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt);
		}

		return result;
	}

	// 예약 삭제
	public void deleteReservation(int rev_num) {
		String sql = "delete reservation where rev_num=?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rev_num);
			pstmt.executeUpdate();
			System.out.println("삭제완료");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

}
