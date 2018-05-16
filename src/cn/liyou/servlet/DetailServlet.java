package cn.liyou.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.liyou.pojo.Route;
import cn.liyou.pojo.Tourism;
import cn.liyou.service.ImagesService;
import cn.liyou.service.RouteService;
import cn.liyou.service.TourismService;

public class DetailServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String tourism_id1=req.getParameter("tourism_id");
		Integer tourism_id=Integer.parseInt(tourism_id1);
		
		ImagesService imgService=new ImagesService();
		TourismService tService=new TourismService();
		RouteService routeService=new RouteService();
		
		Tourism tourism=tService.getTourismById(tourism_id);
		List<String> list1=new ArrayList<String>();
		List<String> list2=new ArrayList<String>();
		List<Route> list3=new ArrayList<Route>();
		list1=imgService.getImages1(tourism_id);
		list2=imgService.getImages2(tourism_id);
		list3=routeService.getRoute(tourism_id);
		req.setAttribute("tourism", tourism);
		req.setAttribute("list1", list1);
		req.setAttribute("list2", list2);
		req.setAttribute("list3", list3);
		req.getRequestDispatcher("detail.jsp").forward(req, resp);
	}
}
