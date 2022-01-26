package com.tim.controller.menu;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.menu.db.MenuBean;
import com.menu.db.MenuDAO;
import com.owner.db.OwnerBean;
import com.owner.db.OwnerDAO;
import com.tim.controller.Action;

public class MnResViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="/menu/mn_res_view.jsp";
		HttpSession session=request.getSession();
		
		String name=request.getParameter("mn_name");
		MenuDAO dao=MenuDAO.getInstance();
		List<MenuBean> res=dao.selectOneOw(name);	
		System.out.println("menu : "+res);
		System.out.println("name : "+name);
		
		OwnerBean owBean = new OwnerBean();
		OwnerDAO owDao = OwnerDAO.getInstance();
		
		owBean = owDao.selectImg(name);
		
		request.setAttribute("ow_img",owBean);
		request.setAttribute("mn_res",res);
		request.setAttribute("mn_name",name);
		session.setAttribute("mn_name",name);
		request.getRequestDispatcher(url).forward(request, response);
		
	}

}
