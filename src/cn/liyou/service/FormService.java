package cn.liyou.service;

import cn.liyou.dao.FormDao;
import cn.liyou.dao.TourismDao;
import cn.liyou.pojo.Form;

public class FormService {
	public boolean insertForm(Form form){
		FormDao formDao=new FormDao();
		if(formDao.InsertForm(form)!=0){
			return true;
		}else{
			return false;
		}
	}
	
	public boolean updateStock(Integer num,Integer tid){
		TourismDao tdao=new TourismDao();
		if(tdao.updateStock(num, tid)!=0){
			return true;
		}else{
			return false;
		}
	}
}
