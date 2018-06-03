package cn.liyou.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.liyou.dao.TourismDao;
import cn.liyou.pojo.Tourism;
import cn.liyou.service.TourismService;
import cn.liyou.tools.DateFormat;

public class DoUpdateServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(req.getParameter("price")+Integer.parseInt(req.getParameter("tourism_id")));
		Tourism tourism=new Tourism(Integer.parseInt(req.getParameter("tourism_id")), req.getParameter("tourism_name"), req.getParameter("departure"),req.getParameter("destination"), 
				req.getParameter("rote"),
				Integer.parseInt(req.getParameter("price").trim()) 
				, Integer.parseInt(req.getParameter("discountprice")) 
				, req.getParameter("special") ,req.getParameter("fashion") ,req.getParameter("type") ,
				Integer.parseInt(req.getParameter("days")) , DateFormat.string_date(req.getParameter("firstday")) ,  DateFormat.string_date(req.getParameter("lastday"))  , req.getParameter("views"), req.getParameter("smessage"),
				Integer.parseInt(req.getParameter("stock")) );
		TourismDao tourismDao=new TourismDao();
		if(tourismDao.updateTourism(tourism)!=0){
			resp.sendRedirect("success2.jsp");
		}else{
			resp.sendRedirect("error.jsp");
		}
	}
}
