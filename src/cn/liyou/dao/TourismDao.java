package cn.liyou.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.liyou.pojo.Tourism;
import cn.liyou.tools.DBUtils;

public class TourismDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	/**
	 * 按tid查找旅游项目
	 * @param tourism_id
	 * @return tourism实体
	 */
	public Tourism selectById(Integer id){
		Tourism tourism=new Tourism();
		 conn=DBUtils.getconn();
		 String sql="select * from tourism where tourism_id=?";
		 try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs=pstmt.executeQuery();
			while(rs.next()){
				tourism.setTourism_id(rs.getInt(1));
				tourism.setTourism_name(rs.getString(2));
				tourism.setDeparture(rs.getString(3));
				tourism.setDestination(rs.getString(4));
				tourism.setImages_name(rs.getString(5));
				tourism.setRote(rs.getString(6));
				tourism.setPrice(rs.getInt(7));
				tourism.setDiscountprice(rs.getInt(8));
				tourism.setSpecial(rs.getString(9));
				tourism.setFashion(rs.getString(10));
				tourism.setType(rs.getString(11));
				tourism.setDays(rs.getInt(12));
				tourism.setFirstday(rs.getDate(13));
				tourism.setLastday(rs.getDate(14));
				tourism.setViews(rs.getString(15));
				tourism.setSupplier(rs.getString(16));
				tourism.setCphone(rs.getString(17));
				tourism.setSmessage(rs.getString(18));
				tourism.setStock(rs.getInt(19));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, rs);
		}
		 return tourism;
	}
	/**
	 * 更新库存
	 * @param 新的数量
	 * @param tid
	 * @return
	 */
	public int updateStock(Integer num,Integer tid){
		int i=0;
		conn=DBUtils.getconn();
		String sql="update tourism set stock=? where tourism_id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setInt(2, tid);
			i=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, null);
		}
		
		return i;
	}
	public Integer selectStock(Integer tid){
		Integer i=0;
		conn=DBUtils.getconn();
		String sql="select stock from tourism where tourism_id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, tid);
			rs=pstmt.executeQuery();
			while(rs.next()){
				i=rs.getInt("stock");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, rs);
		}
		return i;
		
	}
	
}
