package com.tim.controller.reserve;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.reservation.db.ReservationDao;
import com.tim.controller.Action;

public class RevOwDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "reserve/rev_ow_del.jsp";

		String[] num = request.getParameterValues("num");

		for (String number : num) {
			System.out.println(number);

			ReservationDao revDao = ReservationDao.getInstance();
			revDao.deleteReservation(Integer.parseInt(number));
		}
		
		request.getRequestDispatcher(url).forward(request, response);

	}

}
