package com.tim.controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.owner.db.OwnerDAO;
import com.tim.controller.Action;

public class OwIdCheckFormAction implements Action {

	 @Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url = "/user/ow_id_check.jsp";  
	    
	    String ow_id = request.getParameter("ow_id").trim();
	    
	    OwnerDAO ownerDAO=OwnerDAO.getInstance();
	    int message = ownerDAO.owfirmID(ow_id);
	        
	    request.setAttribute("message", message);
	    request.setAttribute("ow_id", ow_id);
	    RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	    dispatcher.forward(request, response);
	  }
	}
