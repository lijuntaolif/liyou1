package cn.liyou.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.liyou.service.FormService;

public class DoBackFormServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String form_id1=req.getParameter("form_id");
		Integer form_id=Integer.parseInt(form_id1);
	
		FormService formService=new FormService();
		if(formService.updateForm2(form_id)){
			resp.getWriter().print("true");
		}else{
			resp.getWriter().print("false");
		}
	}
}
