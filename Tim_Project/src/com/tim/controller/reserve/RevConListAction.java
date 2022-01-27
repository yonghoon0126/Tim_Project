package com.tim.controller.reserve;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.consumer.db.ConsumerBean;
import com.reservation.db.ReservationBean;
import com.reservation.db.ReservationDao;
import com.tim.controller.Action;

public class RevConListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "reserve/rev_con_List.jsp";

		HttpSession session = request.getSession();
		ConsumerBean loginUser = (ConsumerBean) session.getAttribute("con_login_User");

		ReservationDao rvDao = ReservationDao.getInstance();
		ArrayList<ReservationBean> revList = rvDao.listConRev(loginUser.getCon_name());

		request.setAttribute("revList", revList);

		request.getRequestDispatcher(url).forward(request, response);

	}

}
