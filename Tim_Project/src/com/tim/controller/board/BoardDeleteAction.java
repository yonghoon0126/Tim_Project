package com.tim.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.db.BoardDao;
import com.tim.controller.Action;

public class BoardDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String bo_num = request.getParameter("bo_num");
		BoardDao bdao = BoardDao.getInstance();
		bdao.Deleteboard(bo_num);
		System.out.println(bdao.toString());
		new BoardListAction().execute(request, response);
	}

}
