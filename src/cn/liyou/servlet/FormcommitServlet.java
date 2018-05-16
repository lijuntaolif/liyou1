package cn.liyou.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.liyou.pojo.Form;
import cn.liyou.service.FormService;
import cn.liyou.service.TourismService;
import cn.liyou.tools.DateFormat;

public class FormcommitServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String tourism_id=req.getParameter("tourism_id");
		String date=req.getParameter("date");
		String men=req.getParameter("men");
		String children=req.getParameter("children");
		String toltalpay=req.getParameter("toltalpay");
		String pay="";
		if(toltalpay.indexOf(".")!=-1){
			pay=toltalpay.substring(0,toltalpay.indexOf("."));
			
		}else{
			pay=toltalpay;
		}
		
		
		String user_id1=req.getParameter("user_id");
	
		
		Integer tourism_id1=Integer.parseInt(tourism_id);
		Date date1=DateFormat.string_date(date);
		int men1=0;
		if("".equals(men)){
			men1=0;
		}else{
			men1=Integer.parseInt(men);
		}
		int children1=0;
		if("".equals(children)){
			children1=0;
		}else{
			children1=Integer.parseInt(children);
		}
		
		Integer toltalpay1=Integer.parseInt(pay);
		Integer user_id=Integer.parseInt(user_id1);
		Form form=new Form(user_id, tourism_id1, "未出行", men1, children1, date1, toltalpay1);
		FormService formService=new FormService();
		TourismService tService=new TourismService();
		int stock=tService.getStock(tourism_id1);
		int num=stock-men1-children1;
		
		if(num>=0){
			if(formService.insertForm(form)&&formService.updateStock(num, tourism_id1)){
				resp.getWriter().print("true");
			}else{
				resp.getWriter().print("flase");
			}
			
		}else{
			resp.getWriter().print("flase");
		}
		
		
		
	}
}
