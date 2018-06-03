package cn.liyou.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.liyou.pojo.Tourism;
import cn.liyou.service.TourismService;

public class ShowTourismServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String s_name=(String) req.getSession().getAttribute("s_name");
		TourismService tService=new TourismService();
		List<Tourism> list=new ArrayList<Tourism>();
		list=tService.getTourismS_name(s_name);
		req.setAttribute("list", list);
		req.getRequestDispatcher("showTourism.jsp").forward(req, resp);
	}
}
