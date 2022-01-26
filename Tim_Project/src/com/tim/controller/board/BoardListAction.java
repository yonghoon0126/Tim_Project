package com.tim.controller.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.db.BoardBean;
import com.board.db.BoardDao;
import com.tim.controller.Action;

public class BoardListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "board/BoardList.jsp";

		BoardDao bdao = BoardDao.getInstance();
		List<BoardBean> boardList = bdao.selectAllBoards();
		request.setAttribute("boardList", boardList);

		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);
	}

}
