package com.tim.controller.menu;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.menu.db.MenuDAO;
import com.owner.db.OwnerBean;
import com.tim.controller.Action;

public class MnSearchAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="/menu/mn_search.jsp";
		
		MenuDAO dao=MenuDAO.getInstance();
		String st = request.getParameter("searchText");
		System.out.println(st);
		ArrayList<OwnerBean> owlist = dao.searchOw(st);
		System.out.println(owlist);
		
		request.setAttribute("ownerList",owlist);

		request.getRequestDispatcher(url).forward(request, response);
	}

}
