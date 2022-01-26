package com.tim.controller.menu;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.menu.db.MenuDAO;
import com.owner.db.OwnerBean;
import com.tim.controller.Action;

public class MnResListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="/menu/mn_res_list.jsp";
	
		MenuDAO dao=MenuDAO.getInstance();
		ArrayList<OwnerBean> owlist = dao.selectAllOw();
		System.out.println(owlist);
			
		request.setAttribute("ownerList",owlist);
		request.getRequestDispatcher(url).forward(request, response);
	

	}

}
