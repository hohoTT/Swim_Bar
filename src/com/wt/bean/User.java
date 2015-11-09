package com.wt.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.wt.servlet.db.DbManager;

public class User {
	private String username;
	private String email;
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	// login
	public static boolean isExisted(String username, String password) {
        boolean isExisted = false;
        String sql = "select COUNT(username) from account where username = ? " +
        		"and password = ?";
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = DbManager.getSingleInstance().getConnection();
            ps = con.prepareStatement(sql);
            if (null != ps) {
                ps.setString(1, username);
                ps.setString(2, password);
                rs = ps.executeQuery();
                if (null != rs) {
                    if (rs.next()) {
                        int count = rs.getInt(1);
                        if (1 == count) {
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
	
	// register
	public static final int insert(User user) {
		int count = -1;

		if (user == null) {
			count = 0;
		} else {
			String sql = "insert into account(username, password, email) " +
					"values(?, ?, ?)";
			Connection con = null;
			PreparedStatement ps = null;
			try {
				con = DbManager.getSingleInstance().getConnection();
//				System.out.println(con);
				ps = con.prepareStatement(sql);
				if (null != ps) {
					ps.setString(1, user.getUsername());
					ps.setString(2, user.getPassword());
					ps.setString(3, user.getEmail());
					
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
	
	public static final int update_people_count() {
        int count = -1;
        
        String sql = "update statistic set " +
        		"people_count = (people_count+1)";
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DbManager.getSingleInstance().getConnection();
            ps = con.prepareStatement(sql);
            if (null != ps) {
                count = ps.executeUpdate();
            }
        } catch (SQLException e) {
        	System.out.println(e);
        }
        DbManager.closePreparedStatement(ps);
        DbManager.closeConnection(con);
        
        return count;
    }
	
	public static int query_people_count() {
		int count = 0;
        
		String sql = "select * from statistic";
        
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = DbManager.getSingleInstance().getConnection();
            ps = con.prepareStatement(sql);
            if (null != ps) {
                rs = ps.executeQuery();
                if (null != rs) {
                	rs.next();
                	count = rs.getInt("people_count");
//                	System.out.println("people_count----  " + count);
                }
            }
        } catch (SQLException e) {
        	System.out.println(e);
        }
        DbManager.closeResultSet(rs);
        DbManager.closePreparedStatement(ps);
        DbManager.closeConnection(con);
        //
        return count;
    }
	
	public static int query_id(String username) {
		int count = 0;
        
		String sql = "select id from account where username = ?";
        
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
                	rs.next();
                	count = rs.getInt("id");
//                	System.out.println("id----  " + count);
                }
            }
        } catch (SQLException e) {
        	System.out.println(e);
        }
        DbManager.closeResultSet(rs);
        DbManager.closePreparedStatement(ps);
        DbManager.closeConnection(con);
        //
        return count;
    }
	
}
