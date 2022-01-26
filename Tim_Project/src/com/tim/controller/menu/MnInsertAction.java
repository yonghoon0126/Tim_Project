package com.tim.controller.menu;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.menu.db.MenuBean;
import com.menu.db.MenuDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.owner.db.OwnerBean;
import com.tim.controller.Action;

public class MnInsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="/menu/mn_insertSucces.jsp";
		
		HttpSession session = request.getSession();
		
		OwnerBean loginUser =(OwnerBean)session.getAttribute("ow_login_User");
		
		int sizeLimit = 5 * 1024 * 1024;
		String savePath = "upload";
		ServletContext context = session.getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		
		MultipartRequest multi = new MultipartRequest(request, // 1. 요청 객체
				uploadFilePath, // 2. 업로드될 파일이 저장될 파일 경로명
				sizeLimit, // 3. 업로드될 파일의 최대 크기(5Mb)
				"UTF-8", // 4. 인코딩 타입 지정
				new DefaultFileRenamePolicy() // 5. 덮어쓰기를 방지 위한 부분
				); // 이 시점을 기해 파일은 이미 저장이 되었다
		
		MenuBean mnBean = new MenuBean();
		mnBean.setMn_name(multi.getParameter("name"));
		mnBean.setMn_img(multi.getFilesystemName("pic"));
		mnBean.setMn_price(Integer.parseInt(multi.getParameter("price")));
		mnBean.setMn_content(multi.getParameter("content"));
		mnBean.setMn_owner(loginUser.getOw_name());
		
		MenuDAO mDao = MenuDAO.getInstance();
		int result = mDao.insertMenu(mnBean);
		
		request.setAttribute("result", result);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	    dispatcher.forward(request, response);
		
	}

}
