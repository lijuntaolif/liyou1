package cn.liyou.service;

import cn.liyou.dao.CollectionDao;
import cn.liyou.pojo.Collection;

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
}
