package cn.liyou.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.liyou.service.UserService;

public class CheckUphoneServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uphone=req.getParameter("uphone");
		UserService userService=new UserService();
	
		if(!userService.checkUserphone(uphone)){
			//已存在
			resp.getWriter().print("false");
		}else{
			//不存在
			resp.getWriter().print("true");
		}
		
	}
}
