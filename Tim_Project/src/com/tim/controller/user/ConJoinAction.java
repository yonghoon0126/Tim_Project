package com.tim.controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.consumer.db.ConsumerBean;
import com.consumer.db.ConsumerDAO;
import com.tim.controller.Action;

public class ConJoinAction implements Action {

	  @Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url = "user/con_login.jsp"; 
	    
	    HttpSession session = request.getSession();
	    
	    ConsumerBean consumerBean = new ConsumerBean();
	    
	    
	    consumerBean.setCon_id(request.getParameter("con_id"));
	    consumerBean.setCon_name(request.getParameter("con_name"));
	    consumerBean.setCon_pwd(request.getParameter("con_pwd"));
	    consumerBean.setCon_pwd_ck(request.getParameter("con_pwd_ck"));
	    consumerBean.setCon_phon(request.getParameter("con_phon"));  
	    
	    session.setAttribute("con_id", request.getParameter("con_id"));    
	    
	    ConsumerDAO consumerDAO = ConsumerDAO.getInstance();
	    consumerDAO.insertConsumer(consumerBean);

	    
	    RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	    dispatcher.forward(request, response);
	  }
	}
