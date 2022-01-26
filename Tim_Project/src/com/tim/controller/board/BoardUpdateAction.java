package com.tim.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.db.BoardBean;
import com.board.db.BoardDao;
import com.tim.controller.Action;

public class BoardUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BoardBean bBn=new BoardBean();
		
		bBn.setBo_num(Integer.parseInt(request.getParameter("bo_num")));
		bBn.setBo_name(request.getParameter("bo_name"));
//		bBn.setBo_name(loginUser.getCon_name());
		bBn.setBo_pass(request.getParameter("bo_pass"));
		bBn.setBo_title(request.getParameter("bo_title"));
		bBn.setBo_content(request.getParameter("bo_content"));
		
		BoardDao bdao=BoardDao.getInstance();
		bdao.updateBoard(bBn);
		
		new BoardListAction().execute(request, response);
	}

}
