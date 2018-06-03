package cn.liyou.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import cn.liyou.pojo.Form;
import cn.liyou.service.FormService;

public class FormManagerServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String s_name=(String) req.getSession().getAttribute("s_name");
		
		FormService formService=new FormService();
		List<Form> list1=new ArrayList<Form>();
		List<Form> list2=new ArrayList<Form>();
		list1=formService.getBySupplier(s_name);
		list2=formService.getBySupplier2(s_name);
		req.setAttribute("list1", list1);
		req.setAttribute("list2", list2);
		req.getRequestDispatcher("formManager.jsp").forward(req, resp);
	}
}
