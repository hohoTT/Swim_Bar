package com.wt.servlets;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wt.bean.Book;
import com.wt.bean.User;

public class shoppingServlet extends HttpServlet {
	public shoppingServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		String action = request.getParameter("action");
		
		if("trolley".equals(action)){
			HttpSession hs = request.getSession();
			String username = (String) hs.getAttribute("username");
			String bookname = request.getParameter("bookname");
			
			if(username != null){
				boolean isExisted = Book.query_by_bookname(username, bookname);
				
//				System.out.println("hhhhhh isExisted---" + isExisted);
				
				if(isExisted){
					int quantity = Integer.parseInt(request.getParameter("quantity"));
					int update_count = Book.update(quantity, username);
//					System.out.println("update_count------" + update_count);
				}
				else{
					int count = insert_books(request, response);
//					System.out.println("count------" + count);
				}
				
				int query_book_count = processQuery(request, response);
//				System.out.println("666666666666666666666");
//				System.out.println("query_book_count---" + query_book_count);
			}
			else{
//				System.out.println("not login");
			}
		}
		
		response.sendRedirect("../shopping_info.jsp");
	}
	
	private int insert_books(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException {
		
		HttpSession hs = request.getSession();
		
		String username = (String) hs.getAttribute("username");
				
		String bookname = request.getParameter("bookname");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int price = Integer.parseInt(request.getParameter("price"));

		Book book = new Book();
		
		book.setUsername(username);
		book.setBookname(bookname);
		book.setQuantity(quantity);
		book.setPrice(price);
		
		int count = Book.insert(book);

		return count;
	}
	
	private int processQuery(HttpServletRequest request, HttpServletResponse response) {
        //
		int count = 0;
        StringBuilder msg = new StringBuilder();
        //
        msg.append("尝试book信息。");
        HttpSession hs = request.getSession();
        String username = (String) hs.getAttribute("username");
        List<Book> books = Book.query(username);
        if (null != books && books.size() > 0) {
            for (Book book : books) {
                book.getUsername();
                book.getBookname();
                book.getQuantity();
                book.getPrice();
                count++;
            }
        } else {
            msg.append("当前数据库中没有学生信息记录。");
        }
        //
        if(count != 0){
        	hs.setAttribute("books", books);
        }
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
