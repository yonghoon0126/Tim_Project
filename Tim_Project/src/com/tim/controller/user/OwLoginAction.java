package com.tim.controller.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.owner.db.OwnerBean;
import com.owner.db.OwnerDAO;
import com.tim.controller.Action;

public class OwLoginAction implements Action {

	 @Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url="user/login_fail.jsp";
	    HttpSession session=request.getSession();
	  
	    String ow_id=request.getParameter("ow_id");
	    String ow_pwd=request.getParameter("ow_pwd");
	    
	    OwnerDAO ownerDAO=OwnerDAO.getInstance();
	      
	    OwnerBean ownerBean=ownerDAO.getOwner(ow_id);
	    
	    if(ownerBean!=null){
	      if(ownerBean.getOw_pwd().equals(ow_pwd)){    
	        session.removeAttribute("ow_id");
	        session.setAttribute("ow_login_User", ownerBean);
	        url="TimServlet?command=ow_main";
	      }
	    }
	     

	    request.getRequestDispatcher(url).forward(request, response);  
	  }
	}


