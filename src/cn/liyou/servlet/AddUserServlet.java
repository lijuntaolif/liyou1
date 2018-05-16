package cn.liyou.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.liyou.dao.UserDao;
import cn.liyou.pojo.User;
import cn.liyou.service.UserService;

public class AddUserServlet extends HttpServlet {
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String user_name=req.getParameter("name");
			String password=req.getParameter("password");
			String uphone=req.getParameter("uphone");
		
			String company_name=req.getParameter("company_name");
			String address=req.getParameter("address");
			String cphone=req.getParameter("cphone");
		
			User user=new User(user_name,password,uphone,company_name,address,cphone);
			UserService userService=new UserService();
			if(userService.insertUser(user)){
				req.getSession().setAttribute("user_name", user_name);
				resp.sendRedirect("main.jsp");
			}else{
				resp.sendRedirect("register.jsp");
			}
	
			
		}
}
