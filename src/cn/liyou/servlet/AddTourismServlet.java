package cn.liyou.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

import cn.liyou.dao.ImagesDao;
import cn.liyou.dao.SupplierDao;
import cn.liyou.pojo.Images;
import cn.liyou.pojo.Tourism;
import cn.liyou.service.ImagesService;
import cn.liyou.service.TourismService;
import cn.liyou.tools.DateFormat;

public class AddTourismServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//实例化smart
		SmartUpload smart=new SmartUpload();
		//初始化smart
		smart.initialize(getServletConfig(),req, resp);
		//设置编码格式
		smart.setCharset("UTF-8");
	
		try {
			//接收上传
			smart.upload();
		} catch (SmartUploadException e1) {
			e1.printStackTrace();
		}
		//获取文件
		Files files=smart.getFiles();
		System.out.println(files.getCount());
		List<String> fileName=new ArrayList<String>();
		
		for(int i=0;i<files.getCount();i++){
			File file=files.getFile(i);
			if(file.getSize()>0){
				//获取后缀名
				String ext=file.getFileExt();
				String filename=UUID.randomUUID().toString()+"."+ext;
				fileName.add(filename);
				String realPath=getServletContext().getRealPath("/images/tourism/")+filename;
				try {
					file.saveAs(realPath);
					
				} catch (SmartUploadException e) {
					e.printStackTrace();
				}
			}
		}
		
		Tourism tourism=new Tourism( smart.getRequest().getParameter("tourism_name"), smart.getRequest().getParameter("departure"),smart.getRequest().getParameter("destination"), fileName.get(0),
				smart.getRequest().getParameter("rote"),
				Integer.parseInt(smart.getRequest().getParameter("price")) 
				, Integer.parseInt(smart.getRequest().getParameter("discountprice")) 
				, smart.getRequest().getParameter("special") ,smart.getRequest().getParameter("fashion") ,smart.getRequest().getParameter("type") ,
				Integer.parseInt(smart.getRequest().getParameter("days")) , DateFormat.string_date(smart.getRequest().getParameter("firstday")) ,  DateFormat.string_date(smart.getRequest().getParameter("lastday"))  , smart.getRequest().getParameter("views") ,(String) req.getSession().getAttribute("s_name"), (String)req.getSession().getAttribute("cphone") , smart.getRequest().getParameter("smessage"),
				Integer.parseInt(smart.getRequest().getParameter("stock")) );
		TourismService tService=new TourismService();
		boolean flag=tService.addTourism(tourism);
		ImagesService iService=new ImagesService();
		
		int tourism_id=tService.selectTourism(smart.getRequest().getParameter("tourism_name"));
		for(int i=0;i<fileName.size();i++){
			Images images=new Images(fileName.get(i),1,tourism_id);
			
			flag=flag&&iService.addImages(images);
		}
		
		if(flag){
			resp.sendRedirect("success.jsp");
		}else{
			req.setAttribute("message", "添加失败");
			req.getRequestDispatcher("addTourism.jsp").forward(req, resp);
		}
		
		
	}
}
