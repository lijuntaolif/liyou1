package cn.liyou.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
	
}
