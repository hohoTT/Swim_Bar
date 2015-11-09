package com.wt.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wt.bean.User;

public class RegisterServlet extends HttpServlet {

	public RegisterServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		register(request, response);
		
//		String action = request.getParameter("action");
//		
//		int count = 0;
//
//		if ("register".equals(action)) {
//			count = register(request, response);
//		}
//		
//		if(count == 1){
//			response.sendRedirect("/Swim_Bar/");
//		}

	}

	private int register(HttpServletRequest request,
			HttpServletResponse response) {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");

		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setEmail(email);
		
		int count = user.insert(user);
		
		if (count == 1) {
			HttpSession hs = request.getSession();
			
			int id = User.query_id(username);
			
			hs.setAttribute("id", id);
			
			hs.setAttribute("username", username);
		}

//		if (0 == count) {
//			msg.append("插入失败。");
//		} else if (count == 1) {
//			msg.append("插入成功");
//		}
//		else {
//			msg.append("插入失败。");
//		}

		return count;
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
