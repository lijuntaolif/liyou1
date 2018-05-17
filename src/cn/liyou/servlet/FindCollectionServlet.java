package cn.liyou.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.liyou.pojo.Tourism;
import cn.liyou.service.CollectionService;
import cn.liyou.service.TourismService;

public class FindCollectionServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String user_id1=req.getParameter("user_id");
		int user_id=Integer.parseInt(user_id1);
		CollectionService collectionService=new CollectionService();
		List<Tourism> list=new ArrayList<Tourism>();
		list=collectionService.getTourisms(user_id);
		req.setAttribute("tlist", list);
		req.getRequestDispatcher("collection.jsp").forward(req, resp);
	}
}
