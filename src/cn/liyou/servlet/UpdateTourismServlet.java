package cn.liyou.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.liyou.pojo.Tourism;
import cn.liyou.service.TourismService;

public class UpdateTourismServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String tourism_id1=req.getParameter("tourism_id");
		int tourism_id=Integer.parseInt(tourism_id1);
		TourismService tourismService=new TourismService();
		Tourism tourism=tourismService.getTourismById(tourism_id);
		req.setAttribute("tourism", tourism);
		req.getRequestDispatcher("updateTourism.jsp").forward(req, resp);
		
	}
}
