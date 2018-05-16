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
		int user_id=userService.checkUser(user_name, password);
		if(user_id!=0){
			req.getSession().setAttribute("user_name", user_name);
			req.getSession().setAttribute("user_id", user_id);
			resp.getWriter().print("true");
		}else{
			resp.getWriter().print("false");
		}
		
	}

}
