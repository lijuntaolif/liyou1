package cn.liyou.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.liyou.service.UserService;

public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String user_name=(String) req.getParameter("name");
		String password=(String) req.getParameter("pwd");
		UserService userService=new UserService();
		
		if(userService.checkUser(user_name, password)){
			req.getSession().setAttribute("user_name", user_name);
			resp.getWriter().print("true");
		}else{
			resp.getWriter().print("false");
		}
		
	}

}
