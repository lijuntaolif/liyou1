package cn.liyou.service;

import java.util.ArrayList;
import java.util.List;

import cn.liyou.dao.ImagesDao;
import cn.liyou.pojo.Images;

public class ImagesService {
	/**
	 * 获取第一种图片信息
	 * @param tid
	 * @return
	 */
	public List<String> getImages1(Integer tid){
		List<String> list=new ArrayList<String>();
		ImagesDao imgDao=new ImagesDao();
		list=imgDao.selectImgByTid1(tid);
		return list;
	}
	/**
	 * 获取第二种图片信息
	 * @param tid
	 * @return
	 */
	public List<String> getImages2(Integer tid){
		List<String> list=new ArrayList<String>();
		ImagesDao imgDao=new ImagesDao();
		list=imgDao.selectImgByTid2(tid);
		return list;
	}
	public boolean addImages(Images images){
		ImagesDao imagesDao=new ImagesDao();
		if(imagesDao.insertImages(images)!=0){
			return true;
		}else{
			return false;
		}
	}
}
