package com.tim.controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.consumer.db.ConsumerDAO;
import com.tim.controller.Action;

public class ConNameCheckFormAction implements Action {

	 @Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url = "/user/con_name_check.jsp";  
	    
	    String con_name = request.getParameter("con_name").trim();
	    
	    ConsumerDAO consumerDAO=ConsumerDAO.getInstance();
	    int message = consumerDAO.confirmNAME(con_name);
	        
	    request.setAttribute("message", message);
	    request.setAttribute("con_name", con_name);
	    RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	    dispatcher.forward(request, response);
	  }
	}
