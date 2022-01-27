package com.board.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import util.DBManager;

public class BoardDao {
	private static BoardDao instance = new BoardDao();

	public static BoardDao getInstance() {
		return instance;
	}

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	// 게시글 리스트
	public List<BoardBean> selectAllBoards() {
		String sql = "select * from board order by bo_num desc";

		List<BoardBean> list = new ArrayList<BoardBean>();

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BoardBean bBn = new BoardBean();
				bBn.setBo_num(rs.getInt("bo_num"));
				bBn.setBo_name(rs.getString("bo_name"));
				bBn.setBo_pass(rs.getString("bo_pass"));
				bBn.setBo_title(rs.getString("bo_title"));
				bBn.setBo_content(rs.getString("bo_content"));
				bBn.setBo_readCount(rs.getInt("bo_readCount"));
				bBn.setBo_date(rs.getDate("bo_date"));
				list.add(bBn);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		System.out.println("...." + list.toString());
		return list;
	}

	// 게시글 작성
	public void insertBoard(BoardBean bBn) {
		String sql = "insert into board(bo_num, bo_name, bo_pass, bo_title, bo_content) "
				+ " values(bo_seq.nextval, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bBn.getBo_name());
			pstmt.setString(2, bBn.getBo_pass());
			pstmt.setString(3, bBn.getBo_title());
			pstmt.setString(4, bBn.getBo_content());
			pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		System.out.println("...." + pstmt.toString());
	}

	// 조회수 증가
	public void updateReadCount(String bo_num) {
		String sql = "update board set bo_readCount=bo_readCount + 1 where bo_num = ? ";
		conn = null;
		pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bo_num);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	// 상세 보기
	public BoardBean selectOneBoardByNum(String bo_num) {
		String sql = "select * from board where bo_num = ?";


		BoardBean bBn = null;
		conn = null;
		pstmt = null;
		rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bo_num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				bBn = new BoardBean();
				bBn.setBo_num(rs.getInt("bo_num"));
				bBn.setBo_name(rs.getString("bo_name"));
				bBn.setBo_date(rs.getDate("bo_date"));
				bBn.setBo_readCount(rs.getInt("Bo_readCount"));
				bBn.setBo_pass(rs.getString("bo_pass"));
				bBn.setBo_title(rs.getString("bo_title"));
				bBn.setBo_content(rs.getString("bo_content"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		System.out.println("...." + bBn.toString());
		return bBn;
	}

	// 게시글 수정
	public void updateBoard(BoardBean bBn) {
		String sql = "update board set bo_title=?, bo_content=? where bo_num=?";
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bBn.getBo_title());
			pstmt.setString(2, bBn.getBo_content());
			pstmt.setInt(3, bBn.getBo_num());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	// 게시글 비밀번호 확인
	public BoardBean checkPassWord(String bo_pass, int bo_num) {
		String sql = "select * from board where bo_pass=? and bo_num=?";
		conn = null;
		pstmt = null;
		rs = null;
		BoardBean bBn = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bo_pass);
			pstmt.setInt(2, bo_num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bBn = new BoardBean();
				bBn.setBo_num(rs.getInt("bo_num"));
				bBn.setBo_name(rs.getString("bo_name"));
				bBn.setBo_pass(rs.getString("bo_pass"));
				bBn.setBo_title(rs.getString("bo_title"));
				bBn.setBo_content(rs.getString("bo_content"));
				bBn.setBo_readCount(rs.getInt("bo_readCount"));
				bBn.setBo_date(rs.getDate("bo_date"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bBn;
	}

	// 게시글 삭제
	public void Deleteboard(String bo_num) {
		String sql = "delete board where bo_num=?";
		conn = null;
		pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bo_num);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		System.out.println("...." + pstmt.toString());
	}

}
