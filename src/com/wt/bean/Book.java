package com.wt.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.wt.servlet.db.DbManager;

public class Book {
	private String username;
	private String bookname;
	private int quantity;
	private int price;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	public static final int insert(Book book) {
		int count = -1;

		if (book == null) {
			count = 0;
		} else {
			String sql = "insert into books(username, bookname, quantity, price) " +
					"values(?, ?, ?, ?)";
			Connection con = null;
			PreparedStatement ps = null;
			try {
				con = DbManager.getSingleInstance().getConnection();
				ps = con.prepareStatement(sql);
				if (null != ps) {
					ps.setString(1, book.getUsername());
					ps.setString(2, book.getBookname());
					ps.setInt(3, book.getQuantity());
					ps.setInt(4, book.getPrice());
					count = ps.executeUpdate();
				}
			} catch (SQLException e) {
				System.out.println(e);
			}
			DbManager.closePreparedStatement(ps);
			DbManager.closeConnection(con);
		}

		return count;
	}
	
	public static final boolean isExisted(String username) {
        boolean isExisted = false;
        String sql = "select COUNT(username) from books where username = ? ";
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = DbManager.getSingleInstance().getConnection();
            ps = con.prepareStatement(sql);
            if (null != ps) {
                ps.setString(1, username);
                rs = ps.executeQuery();
                if (null != rs) {
                    if (rs.next()) {
                        int count = rs.getInt(1);
                        if (count != 0) {
                            isExisted = true;
                        }
                    }
                }
            }
        } catch (SQLException e) {
        	System.out.println(e);
        }
        DbManager.closeResultSet(rs);
        DbManager.closePreparedStatement(ps);
        DbManager.closeConnection(con);
        //
        return isExisted;
    }
	
	public static final boolean query_by_bookname(String username, String bookname) {
        boolean isExisted = false;
        String sql = "select COUNT(username) from books " +
        		"where username = ? and bookname = ? ";
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = DbManager.getSingleInstance().getConnection();
            ps = con.prepareStatement(sql);
            if (null != ps) {
                ps.setString(1, username);
                ps.setString(2, bookname);
                rs = ps.executeQuery();
                if (null != rs) {
                    if (rs.next()) {
                        int count = rs.getInt(1);
                        if (count != 0) {
                            isExisted = true;
                        }
                    }
                }
            }
        } catch (SQLException e) {
        	System.out.println(e);
        }
        DbManager.closeResultSet(rs);
        DbManager.closePreparedStatement(ps);
        DbManager.closeConnection(con);
        //
        return isExisted;
    }
	
	public static final int update(int quantity, String username) {
        int count = -1;
        
        String sql = "update books set quantity = (quantity + ?) " +
        		"where username = ?";
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DbManager.getSingleInstance().getConnection();
            ps = con.prepareStatement(sql);
            if (null != ps) {
                ps.setInt(1, quantity);
                ps.setString(2, username);
                count = ps.executeUpdate();
            }
        } catch (SQLException e) {
        	System.out.println(e);
        }
        DbManager.closePreparedStatement(ps);
        DbManager.closeConnection(con);
        
        return count;
    }

	public static final List<Book> query(String username) {
        List<Book> books = null;
        String sql = "select * from books where username = ?";
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = DbManager.getSingleInstance().getConnection();
            ps = con.prepareStatement(sql);
            if (null != ps) {
                ps.setString(1, username);
                rs = ps.executeQuery();
                if (null != rs) {
                    books = new ArrayList<Book>();
                    while (rs.next()) {
                    	Book book = new Book();
                    	book.setUsername(rs.getString("username"));
                    	book.setBookname(rs.getString("bookname"));
                    	book.setQuantity(rs.getInt("quantity"));
                    	book.setPrice(rs.getInt("price"));
                    	books.add(book);
                    }
                }
            }
        } catch (SQLException e) {
        	System.out.println(e);
        }
        DbManager.closeResultSet(rs);
        DbManager.closePreparedStatement(ps);
        DbManager.closeConnection(con);
        //
        return books;
    }
	
	public static final int delete(String username, String bookname) {
        int count = -1;
        
        String sql = "delete from books where username = ?" +
        		" and bookname = ? ";
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DbManager.getSingleInstance().getConnection();
            ps = con.prepareStatement(sql);
            if (null != ps) {
                ps.setString(1, username);
                ps.setString(2, bookname);
                count = ps.executeUpdate();
            }
        } catch (SQLException e) {
        	System.out.println(e);
        }
        DbManager.closePreparedStatement(ps);
        DbManager.closeConnection(con);
        
        return count;
    }
}
