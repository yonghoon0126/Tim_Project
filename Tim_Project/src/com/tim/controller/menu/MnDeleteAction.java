package com.tim.controller.menu;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.menu.db.MenuDAO;
import com.tim.controller.Action;

public class MnDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "menu/mn_delete.jsp";

		String[] num = request.getParameterValues("num");

		for (String number : num) {
			System.out.println(number);

			MenuDAO mnDao = MenuDAO.getInstance();
			mnDao.deleteMenu(number);
		}
		
		request.getRequestDispatcher(url).forward(request, response);

	}

}
