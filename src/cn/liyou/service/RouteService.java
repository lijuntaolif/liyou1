package cn.liyou.service;

import java.util.ArrayList;
import java.util.List;

import cn.liyou.dao.ImagesDao;
import cn.liyou.dao.RouteDao;
import cn.liyou.pojo.Route;

public class RouteService {
	/**
	 * 获取行程信息
	 * @param tid
	 * @return
	 */
	public List<Route> getRoute(Integer tid){
		List<Route> list=new ArrayList<Route>();
		RouteDao routeDao=new RouteDao();
		list=routeDao.selectByTid(tid);
		return list;
	}
}
