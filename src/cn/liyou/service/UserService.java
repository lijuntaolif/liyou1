package cn.liyou.service;

import cn.liyou.dao.UserDao;
import cn.liyou.pojo.User;

public class UserService {
	
	/**
	 * 登录验证是否有此用户
	 * @param user_name
	 * @param password
	 * @return
	 */
	public boolean checkUser(String user_name,String password){
	
		UserDao userDao=new UserDao();
		if(userDao.selectByNameAndPwd(user_name, password)==1){
			return true;
		}else{
			return false;
		}
	}
	/**
	 * 注册验证是否有此用户
	 * @param user_name
	 * @return true代表有，false代表没有
	 */
	public boolean checkUserName(String user_name){
	
		UserDao userDao=new UserDao();
		if(userDao.selectByName(user_name)==1){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * 注册验证是否有此手机号
	 * @param uphone
	 * @return true代表有，false代表没有
	 */
	public boolean checkUserphone(String uphone){
	
		UserDao userDao=new UserDao();
		if(userDao.selectByUphone(uphone)==1){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * 插入新的用户
	 * @param user
	 * @return true代表成功，false代表失败
	 */
	public boolean insertUser(User user){
		UserDao userDao=new UserDao();
		if(userDao.insertUser(user)==1){
			return true;
		}else{
			return false;
		}
	}

}
