package cn.liyou.service;

import java.util.List;

import cn.liyou.dao.ImagesDao;
import cn.liyou.dao.TourismDao;
import cn.liyou.pojo.Images;
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
	
	public boolean addTourism(Tourism tourism){
		TourismDao tDao=new TourismDao();
		if(tDao.insertTourism(tourism)!=0){
			return true;
		}else{
			return false;
		}
	}
	public int selectTourism(String name){
		TourismDao tourismDao=new TourismDao();
		
		return tourismDao.selseIdByName(name);
	}
	
	public List<Tourism> getTourismS_name(String s_name){
		TourismDao tDao=new TourismDao();
		return tDao.selectByS_name(s_name);
	}
	public boolean deleteTourismAndImg(int tourism_id){
		TourismDao tDao=new TourismDao();
		ImagesDao imagesDao=new ImagesDao();
		
		if(imagesDao.deleteById(tourism_id)!=0&&tDao.deleteById(tourism_id)!=0){
			return true;
		}else{
			return false;
		}
	}
}
