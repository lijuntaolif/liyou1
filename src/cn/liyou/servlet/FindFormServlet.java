package cn.liyou.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.liyou.pojo.Form;
import cn.liyou.pojo.Tourism;
import cn.liyou.service.FormService;
import cn.liyou.service.TourismService;

public class FindFormServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String user_id1=req.getParameter("user_id");
		Integer user_id=Integer.parseInt(user_id1);
		FormService formService=new FormService();
		
		
		List<Form> list=new ArrayList<Form>();
		List<Form> list2=new ArrayList<Form>();
		
		list=formService.getForm1(user_id);
		list2=formService.getForm2(user_id);
		
		req.setAttribute("list", list);
		req.setAttribute("list2", list2);
		req.getRequestDispatcher("form.jsp").forward(req, resp);
		
	
	}
}
