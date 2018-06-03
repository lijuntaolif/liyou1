package cn.liyou.service;

import java.util.List;

import cn.liyou.dao.FormDao;
import cn.liyou.dao.TourismDao;
import cn.liyou.pojo.Form;

public class FormService {
	/**
	 * 添加订单
	 * @param form
	 * @return
	 */
	public boolean insertForm(Form form){
		FormDao formDao=new FormDao();
		if(formDao.InsertForm(form)!=0){
			return true;
		}else{
			return false;
		}
	}
	/**
	 * 更新库存
	 * @param num
	 * @param tid
	 * @return
	 */
	public boolean updateStock(Integer num,Integer tid){
		TourismDao tdao=new TourismDao();
		if(tdao.updateStock(num, tid)!=0){
			return true;
		}else{
			return false;
		}
	}
	/**
	 * 查询未出行订单
	 * @param user_id
	 * @return
	 */
	public List<Form> getForm1(Integer user_id){
		FormDao formDao=new FormDao();
		
		return formDao.selectByUser_id(user_id);
	}
	/**
	 * 查询已出行订单
	 * @param user_id
	 * @return
	 */
	public List<Form> getForm2(Integer user_id){
		FormDao formDao=new FormDao();
		
		return formDao.selectByUser_id2(user_id);
	}
	/**
	 * 根据供应商查询订单未出行
	 * @param s_name
	 * @return
	 */
	public List<Form> getBySupplier(String s_name){
		FormDao formDao=new FormDao();
		return formDao.selectBySupplier(s_name);
	}
	
	/**
	 * 根据供应商查询已出行订单
	 * @param s_name
	 * @return
	 */
	public List<Form> getBySupplier2(String s_name){
		FormDao formDao=new FormDao();
		return formDao.selectBySupplier2(s_name);
	}
	
	/**
	 * 更新订单
	 * @param form_id
	 * @return
	 */
	public boolean updateForm(Integer form_id){
		FormDao formDao=new FormDao();
		if(formDao.updateState(form_id)==1){
			return true;
			
		}else{
			return false;
		}
	}
	
	/**
	 * 同意退款更新订单
	 * @param form_id
	 * @return
	 */
	public boolean updateForm2(Integer form_id){
		FormDao formDao=new FormDao();
		if(formDao.updateState2(form_id)==1){
			return true;
			
		}else{
			return false;
		}
	}
	/**
	 * 不同意退款更新订单
	 * @param form_id
	 * @return
	 */
	public boolean updateForm3(Integer form_id){
		FormDao formDao=new FormDao();
		if(formDao.updateState3(form_id)==1){
			return true;
			
		}else{
			return false;
		}
	}
	/**
	 * 已出行更新订单
	 * @param form_id
	 * @return
	 */
	public boolean updateForm4(Integer form_id){
		FormDao formDao=new FormDao();
		if(formDao.updateState4(form_id)==1){
			return true;
			
		}else{
			return false;
		}
	}
	
	public boolean deleteForm(Integer form_id){
		FormDao formDao=new FormDao();
		if(formDao.deleteForm(form_id)==1){
			return true;
			
		}else{
			return false;
		}
	}
	public boolean deleteForm2(Integer form_id){
		FormDao formDao=new FormDao();
		if(formDao.deleteForm2(form_id)==1){
			return true;
			
		}else{
			return false;
		}
	}
}
