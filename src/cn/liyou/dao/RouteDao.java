package cn.liyou.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.liyou.pojo.Route;
import cn.liyou.tools.DBUtils;

public class RouteDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public List<Route> selectByTid(Integer tid){
		List<Route> list=new ArrayList<Route>();
		conn=DBUtils.getconn();
		String sql="select * from Route where tourism_id=? order by day";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, tid);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Route route=new Route(rs.getInt("route_id"), rs.getInt("tourism_id"), rs.getInt("day"), rs.getString("place"), rs.getString("arrange"));
				list.add(route);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, rs);
		}
		return list;
	}
}
