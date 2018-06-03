package cn.liyou.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.liyou.service.TourismService;

public class DeleteTourismServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String tourism_id1=req.getParameter("tourism_id");
		int tourism_id=Integer.parseInt(tourism_id1);
		TourismService tourismService=new TourismService();
		if(tourismService.deleteTourismAndImg(tourism_id)){
			resp.getWriter().print("true");
		}else{
			resp.getWriter().print("false");
		}
	}
}
