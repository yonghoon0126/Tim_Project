package com.tim.controller.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.consumer.db.ConsumerBean;
import com.consumer.db.ConsumerDAO;
import com.tim.controller.Action;

public class ConLoginAction implements Action {

	 @Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url="user/login_fail.jsp";
	    HttpSession session=request.getSession();
	  
	    String con_id=request.getParameter("con_id");
	    String con_pwd=request.getParameter("con_pwd");
	    
	    ConsumerDAO consumerDAO=ConsumerDAO.getInstance();
	      
	    ConsumerBean consumerBean=consumerDAO.getConsumer(con_id);
	    
	    if(consumerBean!=null){
	      if(consumerBean.getCon_pwd().equals(con_pwd)){
	        session.removeAttribute("con_id");
	        session.setAttribute("con_login_User", consumerBean);
	      //  session.setAttribute("con_id", con_id);	   
	        
	        url="TimServlet?command=con_main";
	      }
	     // System.out.println(con_id + con_pwd);
	    }
	   // System.out.println(con_id + con_pwd);
	    request.getRequestDispatcher(url).forward(request, response); 
	  }
	}


