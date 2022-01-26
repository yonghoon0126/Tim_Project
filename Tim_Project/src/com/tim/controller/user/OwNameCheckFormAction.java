package com.tim.controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.owner.db.OwnerDAO;
import com.tim.controller.Action;

public class OwNameCheckFormAction implements Action {

	 @Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url = "/user/ow_name_check.jsp";  
	    
	    String ow_name = request.getParameter("ow_name").trim();
	    
	    OwnerDAO ownerDAO=OwnerDAO.getInstance();
	    int message = ownerDAO.owfirmNAME(ow_name);
	        
	    request.setAttribute("message", message);
	    request.setAttribute("ow_name", ow_name);
	    RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	    dispatcher.forward(request, response);
	  }
	}
