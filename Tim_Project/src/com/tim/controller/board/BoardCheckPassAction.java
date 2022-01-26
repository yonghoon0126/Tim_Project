package com.tim.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.db.BoardBean;
import com.board.db.BoardDao;
import com.tim.controller.Action;

public class BoardCheckPassAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = null;
		String bo_num = request.getParameter("bo_num");
		String bo_pass = request.getParameter("bo_pass");
		System.out.println(bo_pass);

		BoardDao bdao = BoardDao.getInstance();
		BoardBean bBn = bdao.selectOneBoardByNum(bo_num);
		System.out.println("\n넘어옴.." + bBn.toString());
		if (bBn.getBo_pass().equals(bo_pass)) {
			url = "./board/checkSuccess.jsp";
		} else {
			url = "./board/BoardCheckPass.jsp";
			request.setAttribute("message", "비밀번호가 틀렸습니다");
		}
		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);
	}

}
