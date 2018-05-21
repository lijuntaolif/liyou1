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

public class SelectServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String position=req.getParameter("position");
		String conditions=req.getParameter("conditions");
		List<Tourism> list=new ArrayList<Tourism>();
		TourismService tService=new TourismService();
		list=tService.getTourismByKey(position, conditions);
		req.setAttribute("list", list);
		req.setAttribute("position", position);
		req.getRequestDispatcher("select.jsp").forward(req, resp);
	}
}
