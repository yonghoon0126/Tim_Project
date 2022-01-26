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
import com.tim.controller.Action;

public class MnResMenuAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="/menu/mn_res_menu.jsp";
		
		HttpSession session = request.getSession();
		OwnerBean loginOw=(OwnerBean)session.getAttribute("ow_login_User");
		String Owname = loginOw.getOw_name();
		
		MenuDAO dao=MenuDAO.getInstance();
		List<MenuBean> menu=dao.selectOnemenu(Owname);
		System.out.println("menu : "+menu);
		System.out.println("img : "+loginOw.getOw_img());
		
		request.setAttribute("menu",menu);
		request.setAttribute("ow_img",loginOw.getOw_img());
		
		request.getRequestDispatcher(url).forward(request, response);

	}

}
