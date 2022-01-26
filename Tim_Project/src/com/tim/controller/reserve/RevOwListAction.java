package com.tim.controller.reserve;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.owner.db.OwnerBean;
import com.reservation.db.ReservationBean;
import com.reservation.db.ReservationDao;
import com.tim.controller.Action;

public class RevOwListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "reserve/rev_ow_List.jsp";

		HttpSession session = request.getSession();
		OwnerBean loginUser = (OwnerBean) session.getAttribute("ow_login_User");
/*
		if (loginUser == null) {
			url = "TimServlet?command=login_form";
		} else {
			ReservationDao rvDao = ReservationDao.getInstance();
			ArrayList<ReservationBean> revList = rvDao.listRev(loginUser.getCon_id());

			request.setAttribute("revList", revList);
		}*/
		ReservationDao rvDao = ReservationDao.getInstance();
		ArrayList<ReservationBean> revList = rvDao.listOwRev(loginUser.getOw_name());
		
		request.setAttribute("revList", revList);
		
		request.getRequestDispatcher(url).forward(request, response);
				
	}

}
