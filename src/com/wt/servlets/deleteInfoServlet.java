package com.wt.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wt.bean.Book;

public class deleteInfoServlet extends HttpServlet {
	public deleteInfoServlet() {
		super();
	}
	
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	
	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		String username = request.getParameter("username");
		String bookname = request.getParameter("bookname");

		Boolean isExisted = Book.query_by_bookname(username, bookname);
		
		if(isExisted){
			int count = Book.delete(username, bookname);
			System.out.println("del_count" + count);
		}
		
		response.sendRedirect("../shopping_info.jsp");
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
