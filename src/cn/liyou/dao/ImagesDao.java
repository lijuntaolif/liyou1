package cn.liyou.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.liyou.tools.DBUtils;

public class ImagesDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	/**
	 * 获取旅游图片1
	 * @param 旅游项目id
	 * @return 图片名列表
	 */
	public List<String> selectImgByTid1(Integer tid){
		List<String> list=new ArrayList<String>();
		conn=DBUtils.getconn();
		String sql="select images_name from images where tourism_id=? and type=1";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, tid);
			rs=pstmt.executeQuery();
			while(rs.next()){
				String i=rs.getString("images_name");
				list.add(i);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, rs);
		}
		return list;
	}
	
	/**
	 * 获取旅游图片2
	 * @param 旅游项目id
	 * @return 旅游项目介绍图片名列表
	 */
	public List<String> selectImgByTid2(Integer tid){
		List<String> list=new ArrayList<String>();
		conn=DBUtils.getconn();
		String sql="select images_name from images where tourism_id=? and type=2";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, tid);
			rs=pstmt.executeQuery();
			while(rs.next()){
				String i=rs.getString("images_name");
				list.add(i);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, rs);
		}
		return list;
	}
}
