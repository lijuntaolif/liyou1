package cn.liyou.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import cn.liyou.pojo.Tourism;
import cn.liyou.tools.DBUtils;
import cn.liyou.tools.DateFormat;

public class TourismDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Statement stmt;
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
	/**
	 * 查询库存
	 * @param tid
	 * @return 返回库存
	 */
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
	/**
	 * 按关键字查找旅游项目(目的地，旅游名，目的地，行程概括，旅游方式，旅游类型，供应商)
	 * @param 关键字
	 * @return tourism集合
	 */
	public List<Tourism> selectByCondition( String departure,String condition){
		List<Tourism> list=new ArrayList<Tourism>();
		
		 conn=DBUtils.getconn();
		 String sql="select * from tourism where departure like ? and (tourism_name like ? or destination like ? or route like ? or fashion like ? or type like ? or supplier=?)";
		 try {
			 System.out.println(departure+condition);
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+departure+"%");
			pstmt.setString(2, "%"+condition+"%");
			pstmt.setString(3, "%"+condition+"%");
			pstmt.setString(4, "%"+condition+"%");
			pstmt.setString(5, "%"+condition+"%");
			pstmt.setString(6, "%"+condition+"%");
			pstmt.setString(7, condition);
			
			rs=pstmt.executeQuery();
			while(rs.next()){
				Tourism tourism=new Tourism();
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
				list.add(tourism);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, rs);
		}
		 return list;
	}
	/**
	 * 按供应商名称查询
	 * @param 供应商名
	 * @return tourism集合
	 */
	public List<Tourism> selectByS_name(String S_name){
		List<Tourism> list=new ArrayList<Tourism>();
		
		conn=DBUtils.getconn();
		String sql="select * from tourism where supplier=?";
		try {
			
			pstmt=conn.prepareStatement(sql);
		
			pstmt.setString(1, S_name);
			
			rs=pstmt.executeQuery();
			while(rs.next()){
				Tourism tourism=new Tourism();
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
				list.add(tourism);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, rs);
		}
		return list;
	}
	
	/**
	 * 按关键字查找旅游项目()
	 * @param 关键字
	 * @return tourism集合
	 */
	public List<Tourism> selectByInput( String exatt1){
		List<Tourism> list=new ArrayList<Tourism>();
		String sql="select * from tourism where ";
		conn=DBUtils.getconn();
		 try {
			stmt=conn.createStatement();
			
			rs=stmt.executeQuery(sql+exatt1);
			while(rs.next()){
				Tourism tourism=new Tourism();
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
				list.add(tourism);
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}finally {
			if(rs!=null){
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(stmt!=null){
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn!=null){
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			
		}
	
		 return list;
	}
	/**
	 * 添加旅游项目
	 * @param tourism
	 * @return 1代表添加成功，0代表失败
	 */
	public int insertTourism(Tourism tourism){
		int i=0;
		conn=DBUtils.getconn();
		String sql="insert into tourism values(tourism_sqc.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, tourism.getTourism_name());
			pstmt.setString(2, tourism.getDeparture());
			pstmt.setString(3, tourism.getDestination());
			pstmt.setString(4, tourism.getImages_name());
			pstmt.setString(5, tourism.getRote());
			pstmt.setInt(6, tourism.getPrice());
			pstmt.setInt(7, tourism.getDiscountprice());
			pstmt.setString(8, tourism.getSpecial());
			pstmt.setString(9, tourism.getFashion());
			pstmt.setString(10, tourism.getType());
			pstmt.setInt(11, tourism.getDays());
			pstmt.setDate(12, DateFormat.utilToSql(tourism.getFirstday()));
			pstmt.setDate(13, DateFormat.utilToSql(tourism.getLastday()));
			pstmt.setString(14, tourism.getViews());
			pstmt.setString(15, tourism.getSupplier());
			pstmt.setString(16, tourism.getCphone());
			pstmt.setString(17, tourism.getSmessage());
			pstmt.setInt(18, tourism.getStock());
			i=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, null);
		}
		
		return i;
		
	}
	/**
	 * 更新旅游项目
	 * @param tourism
	 * @return 1代表添加成功，0代表失败
	 */
	public int updateTourism(Tourism tourism){
		int i=0;
		conn=DBUtils.getconn();
		String sql="update  tourism set tourism_name=?,Departure=?,Destination=?,Route=?,Price=?,Discountprice=?,Special=?,Fashion=?,Type=?,Days=?,Firstday=?,Lastday=?,Views=?,Smessage=?,stock=? where tourism_id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, tourism.getTourism_name());
			pstmt.setString(2, tourism.getDeparture());
			pstmt.setString(3, tourism.getDestination());
			
			pstmt.setString(4, tourism.getRote());
			pstmt.setInt(5, tourism.getPrice());
			pstmt.setInt(6, tourism.getDiscountprice());
			pstmt.setString(7, tourism.getSpecial());
			pstmt.setString(8, tourism.getFashion());
			pstmt.setString(9, tourism.getType());
			pstmt.setInt(10, tourism.getDays());
			pstmt.setDate(11, DateFormat.utilToSql(tourism.getFirstday()));
			pstmt.setDate(12, DateFormat.utilToSql(tourism.getLastday()));
			pstmt.setString(13, tourism.getViews());
			
			pstmt.setString(14, tourism.getSmessage());
			pstmt.setInt(15, tourism.getStock());
			pstmt.setInt(16, tourism.getTourism_id());
			i=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, null);
		}
		
		return i;
		
	}
	/**
	 * 查询id
	 * @param tourism_name
	 * @return 0代表没有
	 */
	public int selseIdByName(String tourism_name){
		int i=0;
		conn=DBUtils.getconn();
		String sql="select tourism_id from tourism where tourism_name=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, tourism_name);
			rs=pstmt.executeQuery();
			while(rs.next()){
				i=rs.getInt("tourism_id");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, rs);
		}
		return i;
	}
	/**
	 * 删除旅游项目
	 * @param tourism_name
	 * @return 0代表没有删除
	 */
	public int deleteById(int tourism_id){
		int i=0;
		conn=DBUtils.getconn();
		String sql="delete from tourism where tourism_id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, tourism_id);
			i=pstmt.executeUpdate();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, rs);
		}
		return i;
	}
}
