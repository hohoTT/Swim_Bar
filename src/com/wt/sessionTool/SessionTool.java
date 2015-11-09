package com.wt.sessionTool;

import java.util.Date;

import javax.servlet.http.HttpSession;

public class SessionTool {
	
	private static final String USERNAME = "username";
	
	public static final String getLoadUsername(HttpSession hs) {
		String username = null;
		if (hs != null) {
			Object user_name = hs.getAttribute(USERNAME);
			if (user_name != null) {
				username = (String) user_name;
			}
		}

		return username;
	}
	
	public static final boolean isUserOnline(HttpSession hs) {
		boolean isOnline = false;

		if (hs != null) {
			String username = (String) hs.getAttribute(USERNAME);
			if (username != null) {
//				Object manageLastOperationTime = hs
//						.getAttribute(MANAGER_LAST_OPERATION_TIME);
//				if (manageLastOperationTime != null) {
//					Long lastTime = (Long) manageLastOperationTime;
//					if (lastTime >= hs.getCreationTime()
//							&& new Date().getTime() - hs.getCreationTime() < new sessionTool()
//									.getManagerOnlineMaxInterval()) {
						isOnline = true;
//					}
//				}
			}
		}

		return isOnline;
	}
	
	public static final void setUserLoaded(HttpSession hs, String username) {
		if (hs != null) {
			hs.setAttribute(USERNAME, username);
		}
	}
	
}
