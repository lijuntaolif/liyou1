package cn.liyou.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.liyou.pojo.Collection;
import cn.liyou.pojo.Form;
import cn.liyou.tools.DBUtils;
import cn.liyou.tools.DateFormat;

public class CollectionDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	/**
	 * 添加收藏
	 * @param 收藏类
	 * @return 0代表不成功，1代表添加成功
	 */
	public int insertCollection(Collection collection){
		int i=0;
		conn=DBUtils.getconn();
		String sql="insert into collection values(?,?)";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, collection.getUser_id());
			
			pstmt.setInt(2, collection.getTourism_id());
			
			i=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, null);
		}
		return i;
	}
	/**
	 * 查找收藏是否有此收藏
	 * @param collection
	 * @return 1代表有，0代表没有
	 */
	public int selectCollectionByIDs(Collection collection){
		int i=0;
		conn=DBUtils.getconn();
		String sql="select * from collection where user_id=? and tourism_id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, collection.getUser_id());
			pstmt.setInt(2, collection.getTourism_id());
			rs=pstmt.executeQuery();
			while(rs.next()){
				i=1;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, rs);
		}
		return i;
		
	}
	
	/**
	 * 查找user_id的收藏商品
	 * @param user_id
	 * @return tourism_id 的list数组
	 */
	public List<Integer> selectCollectionByUser_id(int user_id){
		List<Integer> list=new ArrayList<Integer>();
		conn=DBUtils.getconn();
		String sql="select * from collection where user_id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, user_id);
		
			rs=pstmt.executeQuery();
			while(rs.next()){
				Integer i=rs.getInt("tourism_id");
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
