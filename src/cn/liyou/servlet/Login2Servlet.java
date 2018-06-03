package cn.liyou.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.liyou.dao.SupplierDao;
import cn.liyou.pojo.Form;
import cn.liyou.service.FormService;
import cn.liyou.service.SupplierService;
import cn.liyou.service.UserService;

public class Login2Servlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String s_name=(String) req.getParameter("name");
		String password=(String) req.getParameter("pwd");
		SupplierService supplierService=new SupplierService();
		SupplierDao suDao=new SupplierDao();
		int user_id=supplierService.checkUser(s_name, password);
		if(user_id!=0){
			String cphone=suDao.selectBys_name(s_name);
			req.getSession().setAttribute("s_name", s_name);
			req.getSession().setAttribute("cphone", cphone);
			resp.getWriter().print("true");
		}else{
			resp.getWriter().print("false");
		}
		
	}

}
