package cn.liyou.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.liyou.tools.DBUtils;

public class SupplierDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	/**
	 * 根据供应商名密码查询是否有该用户
	 * @param s_name
	 * @param password
	 * @return 该用户id  0代表没有该用户
	 */
	public int selectByNameAndPwd(String s_name,String password){
		conn=DBUtils.getconn();
		int i=0;
		String sql="select * from supplier where s_name=? and password=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, s_name);
			pstmt.setString(2, password);
			rs=pstmt.executeQuery();
			while(rs.next()){
				String j=rs.getString("s_name");
				if(j!=null){
					i=1;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, rs);
		}
		
		return i;
	}
	/**
	 * 根据供应商名查询手机号
	 * @param s_name
	 * @return 手机号
	 */
	public String selectBys_name(String s_name){
		conn=DBUtils.getconn();
		String i="";
		String sql="select * from supplier where s_name=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, s_name);
			
			rs=pstmt.executeQuery();
			while(rs.next()){
				i=rs.getString("cphone");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, rs);
		}
		
		return i;
	}
}
