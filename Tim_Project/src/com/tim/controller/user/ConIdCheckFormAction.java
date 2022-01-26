package com.tim.controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.consumer.db.ConsumerDAO;
import com.tim.controller.Action;

public class ConIdCheckFormAction implements Action {

	 @Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url = "/user/con_id_check.jsp";  
	    
	    String con_id = request.getParameter("con_id").trim();
	    
	    ConsumerDAO consumerDAO=ConsumerDAO.getInstance();
	    int message = consumerDAO.confirmID(con_id);
	        
	    request.setAttribute("message", message);
	    request.setAttribute("con_id", con_id);
	    RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	    dispatcher.forward(request, response);
	  }
	}
