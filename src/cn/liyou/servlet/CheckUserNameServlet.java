package cn.liyou.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.liyou.service.UserService;

public class CheckUserNameServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String user_name=req.getParameter("uname");
		UserService userService=new UserService();
		if(userService.checkUserName(user_name)){
			//已存在
			resp.getWriter().print("true");
		}else{
			resp.getWriter().print("false");
		}
		
	}

}
