package cn.liyou.service;

import cn.liyou.dao.TourismDao;
import cn.liyou.pojo.Tourism;

public class TourismService {
	public Tourism getTourismById(Integer Tourism_id){
		TourismDao tDao=new TourismDao();
		return tDao.selectById(Tourism_id);
	}
	public Integer getStock(Integer Tourism_id){
		TourismDao tDao=new TourismDao();
		return tDao.selectStock(Tourism_id);
	}
}
