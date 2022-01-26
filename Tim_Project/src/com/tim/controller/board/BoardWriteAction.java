package com.tim.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.db.BoardBean;
import com.board.db.BoardDao;
import com.consumer.db.ConsumerBean;
import com.tim.controller.Action;

public class BoardWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();

		ConsumerBean loginUser = (ConsumerBean) session.getAttribute("con_login_User");

		BoardBean bBn = new BoardBean();
		bBn.setBo_name(loginUser.getCon_name());
		bBn.setBo_pass(request.getParameter("bo_pass"));
		bBn.setBo_title(request.getParameter("bo_title"));
		bBn.setBo_content(request.getParameter("bo_content"));

		BoardDao bdao = BoardDao.getInstance();
		bdao.insertBoard(bBn);

		System.out.println("@@@@@bBn" + bBn);

		new BoardListAction().execute(request, response);

	}

}
