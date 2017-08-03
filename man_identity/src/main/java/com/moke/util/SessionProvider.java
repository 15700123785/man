package com.moke.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface SessionProvider {
	//四个方法
		//用户的信息（用户名放到Session域中）   
		public void setAttributeForUserName(HttpServletRequest request,HttpServletResponse response,String name,String value);
		//从Session域中获取用户名
		public String getAttribute(HttpServletRequest request,HttpServletResponse response,String name);
		
		//获取SessionID
		public String getSessionId(HttpServletRequest request,HttpServletResponse response);
}
