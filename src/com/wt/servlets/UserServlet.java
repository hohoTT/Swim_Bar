package com.wt.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wt.bean.Book;
import com.wt.bean.User;
import com.wt.sessionTool.SessionTool;

public class UserServlet extends HttpServlet {

	public UserServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		HttpSession hs = request.getSession();

		String loadedUsername = null;
		
		if (null != hs) {
			loadedUsername = SessionTool.getLoadUsername(hs);
		}

		String username = request.getParameter("username");

		if (SessionTool.isUserOnline(hs)) {

		} else {
			String password = request.getParameter("password");

			// 获取验证结果
			boolean isValidate = false;
			isValidate = User.isExisted(username, password);
			
			if(isValidate){
				SessionTool.setUserLoaded(hs, username);

				boolean islogin = SessionTool.isUserOnline(hs);
//					System.out.println(islogin);
				
				int id = User.query_id(username);
				
				hs.setAttribute("id", id);
				hs.setAttribute("isValidate", isValidate);
				
				response.sendRedirect("/Swim_Bar");
			}
			else{
				hs.setAttribute("isValidate", isValidate);
			}
		}
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		processRequest(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		processRequest(request, response);
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
