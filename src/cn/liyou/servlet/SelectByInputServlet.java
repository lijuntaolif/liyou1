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

public class SelectByInputServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String[] keys=req.getParameterValues("keys");
		String[] departure=req.getParameterValues("departure");
		String[] supplier=req.getParameterValues("supplier");
		String max1=req.getParameter("max");
		String min1=req.getParameter("min");
		Integer max=-1;
		Integer min=-1;
		if(max1!=null&&min1!=null){
			max=Integer.parseInt(max1);
			min=Integer.parseInt(min1);
		}
	
		
		String sql1="";
		if(keys!=null){
			for(int i=0;i<keys.length;i++){
				String e2=keys[i].replace(",", "'");
				
				if(i==0){
					sql1=e2;
				}else{
					sql1=sql1+" or "+e2;
				}
				
			}
		}
		
		String sql2="";
		if(departure!=null){
			for(int i=0;i<departure.length;i++){
				String e1=departure[i].replace(",", "'%");
				String e2=e1.replace(".", "%'");
				
				if(i==0){
					sql2=e2;
				}else{
					sql2=sql2+" or "+e2;
				}
				
			}
		
		}else{
			sql2="";
		}
		
		String sql3="";
		if(supplier!=null){
			for(int i=0;i<supplier.length;i++){
				String e2=supplier[i].replace(",", "'");
				
				if(i==0){
					sql3=e2;
				}else{
					sql3=sql3+" or "+e2;
				}
				
			}
		}else{
			sql3="";
		}
		
		String sql="";

		if(sql1!=""){
			
			sql="("+sql1+")";
			
		}
		
		if(sql!=""&&sql1!=""&&sql2!=""){
			
			sql=sql+" and "+"("+sql2+")";
			
		}else if(sql==""&&sql1==""){
			sql=sql2;
		}
		
		
		if(sql!=""&&sql3!=""){
			sql=sql+" and "+"("+sql3+")";
		}else if(sql==""&&sql3!=""){
			sql=sql3;
		}
		
		
		if(min!=-1&&max!=-1&&sql!=""){
			sql=sql+" and "+"("+"discountprice between "+min+" and " +max+")";
		}else if(sql==""){
			sql= "discountprice between "+min+" and " +max;
		}
		
		
		TourismService tService=new TourismService();
		
		List<Tourism> list=new ArrayList<Tourism>();
		list=tService.getTourismByInput(sql);
		req.setAttribute("list", list);
		req.getRequestDispatcher("select.jsp").forward(req, resp);
		
	}
}
