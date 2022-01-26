package com.tim.controller.reserve;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.consumer.db.ConsumerBean;
import com.reservation.db.ReservationBean;
import com.reservation.db.ReservationDao;
import com.tim.controller.Action;


public class RevAddAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url ="TimServlet?command=reserve_success";
		
		HttpSession session = request.getSession();
		
		ConsumerBean loginUser = (ConsumerBean)session.getAttribute("con_login_User");
		String store=(String) session.getAttribute("mn_owner");	
		
		System.out.println("로그인 유저 : "+loginUser.getCon_name());
		System.out.println("가게이름 : "+store);
		System.out.println("날짜 : "+request.getParameter("date"));
		System.out.println("시간 : "+request.getParameter("time"));
		
		ReservationBean rvBean = new ReservationBean();	
		rvBean.setRev_time(request.getParameter("time"));
		rvBean.setRev_date(request.getParameter("date"));
		rvBean.setRev_id(loginUser.getCon_name());
		rvBean.setRev_name(store);
		
		ReservationDao rvDao = ReservationDao.getInstance();
		rvDao.insertReservation(rvBean);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	    dispatcher.forward(request, response);
	    
	}

}
