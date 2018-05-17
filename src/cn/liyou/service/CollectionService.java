package cn.liyou.service;

import java.util.ArrayList;
import java.util.List;

import cn.liyou.dao.CollectionDao;
import cn.liyou.dao.TourismDao;
import cn.liyou.pojo.Collection;
import cn.liyou.pojo.Tourism;

public class CollectionService {
	
	public boolean addCollection(Collection collection){
		CollectionDao collectionDao=new CollectionDao();
		
		if(collectionDao.insertCollection(collection)==1){
			return true;
		}else{
			return false;
		}
	}
	
	public boolean selectCollection(Collection collection){
		CollectionDao collectionDao=new CollectionDao();
		
		if(collectionDao.selectCollectionByIDs(collection)==1){
			return true;
		}else{
			return false;
		}
	}
	
	public List<Tourism> getTourisms(Integer user_id){
		List<Tourism> list=new ArrayList<Tourism>();
		CollectionDao collDao=new CollectionDao();
		TourismDao tDao=new TourismDao();
		List<Integer> list2=collDao.selectCollectionByUser_id(user_id);
		for(int i=0;i<list2.size();i++){
			Tourism tourism=new Tourism();
			tourism=tDao.selectById(list2.get(i));
			list.add(tourism);
		}
		
		return list;
	}
	
}
