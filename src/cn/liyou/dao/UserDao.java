package cn.liyou.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.liyou.pojo.User;
import cn.liyou.tools.DBUtils;

public class UserDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	/**
	 * 根据用户名密码查询是否有该用户
	 * @param user_name
	 * @param password
	 * @return 1代表已有该用户  0代表没有该用户
	 */
	public int selectByNameAndPwd(String user_name,String password){
		conn=DBUtils.getconn();
		int i=0;
		String sql="select * from user_info where user_name=? and password=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, user_name);
			pstmt.setString(2, password);
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
	 * 根据用户名查询是否有该用户
	 * @param user_name
	 * @return 1代表已有该用户  0代表没有该用户
	 */
	public int selectByName(String user_name){
		conn=DBUtils.getconn();
		int i=0;
		String sql="select * from user_info where user_name=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, user_name);
	
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
	 * 根据用户手机号查询是否有该手机号
	 * @param user_name
	 * @return 1代表已有该手机号  0代表没有该手机号
	 */
	public int selectByUphone(String uphone){
		conn=DBUtils.getconn();
		int i=0;
		String sql="select * from user_info where uphone=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, uphone);
			System.out.println(uphone);
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
	 * 插入新的用户数据
	 * @param user
	 * @return 1代表成功，0代表失败
	 */
	public int insertUser(User user){
		conn=DBUtils.getconn();
		int i=0;
		String sql="insert into user_info values(user_sqc.nextval,?,?,?,?,?,?)";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, user.getUser_name());
			pstmt.setString(2, user.getPassword());
			pstmt.setString(3, user.getUphone());
			pstmt.setString(4,user.getCompany_name());
			pstmt.setString(5, user.getAddress());
			pstmt.setString(6, user.getCphone());
			i=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, null);
		}
		return i;
	}

}
