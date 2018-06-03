package cn.liyou.service;

import cn.liyou.dao.SupplierDao;
import cn.liyou.dao.UserDao;

public class SupplierService {

	/**
	 * 登录验证是否有此用户
	 * @param s_name
	 * @param password
	 * @return
	 */
	public Integer checkUser(String s_name,String password){
	
		SupplierDao supplierDao=new SupplierDao();
		return supplierDao.selectByNameAndPwd(s_name, password);
	}
}
