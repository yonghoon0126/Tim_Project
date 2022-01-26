package com.tim.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.db.BoardBean;
import com.board.db.BoardDao;
import com.tim.controller.Action;

public class BoardUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="/board/BoardUpdate.jsp";
		String bo_num=request.getParameter("bo_num");
		
		BoardDao bdao=BoardDao.getInstance();
		bdao.updateReadCount(bo_num);
		
		BoardBean bBn=bdao.selectOneBoardByNum(bo_num);
		request.setAttribute("board", bBn);
		
		RequestDispatcher dis=request.getRequestDispatcher(url);
		dis.forward(request, response);
	}

}
