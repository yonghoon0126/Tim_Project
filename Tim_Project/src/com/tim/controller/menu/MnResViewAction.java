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
		
		String name=request.getParameter("mn_owner");
		MenuDAO dao=MenuDAO.getInstance();
		List<MenuBean> res=dao.selectOneOw(name);	
		System.out.println("menu : "+res);
		for (int i=0; i<res.size(); i++) {
			String str = res.get(i).getMn_img().toString();
			System.out.println("res : "+str);
		}
		System.out.println("name : "+name);
		
		OwnerBean owBean = new OwnerBean();
		OwnerDAO owDao = OwnerDAO.getInstance();
		
		owBean = owDao.selectRes(name);
		
		String owPhon = owBean.getOw_phon();
		String owAddr = owBean.getOw_addr();
		String owImg = owBean.getOw_img();
		
		request.setAttribute("ow_img",owImg);
		request.setAttribute("ow_addr",owAddr);
		request.setAttribute("ow_phon",owPhon);
		request.setAttribute("mn_res",res);
		request.setAttribute("mn_owner",name);
		
		session.setAttribute("mn_owner",name);
		request.getRequestDispatcher(url).forward(request, response);
		
	}

}
