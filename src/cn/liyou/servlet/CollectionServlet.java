package cn.liyou.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.liyou.pojo.Collection;
import cn.liyou.service.CollectionService;

public class CollectionServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String tourism_id1=req.getParameter("tourism_id");
		Integer tourism_id=Integer.parseInt(tourism_id1);
		String user_id1=req.getParameter("user_id");
		Integer user_id=Integer.parseInt(user_id1);
		Collection collection=new Collection(user_id,tourism_id);
		CollectionService coService=new CollectionService();
		if(!coService.selectCollection(collection)){
			if(coService.addCollection(collection)){
				resp.getWriter().print("1");
			}else{
				resp.getWriter().print("2");
			}
		}else{
			resp.getWriter().print("3");
		}
		
	}
}
