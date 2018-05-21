package cn.liyou.service;

import java.util.List;

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
	public List<Tourism> getTourismByKey(String position,String conditions ){
		TourismDao tDao=new TourismDao();
		return tDao.selectByCondition(position, conditions);
	}
	public List<Tourism> getTourismByInput(String exatt1){
		TourismDao tDao=new TourismDao();
		return tDao.selectByInput(exatt1);
	}
}
