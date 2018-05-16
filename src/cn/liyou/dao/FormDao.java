package cn.liyou.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.liyou.pojo.Form;
import cn.liyou.tools.DBUtils;
import cn.liyou.tools.DateFormat;

public class FormDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	/**
	 * 添加订单
	 * @param 订单类
	 * @return 0代表不成功，1代表添加成功
	 */
	public int InsertForm(Form form){
		int i=0;
		conn=DBUtils.getconn();
		String sql="insert into form values(form_seq.nextval,?,sysdate,?,?,?,?,?,?)";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, form.getUser_id());
			
			pstmt.setInt(2, form.getTourism_id());
			pstmt.setString(3, form.getState());
			pstmt.setInt(4, form.getMennum());
			pstmt.setInt(5, form.getChidrennum());
			pstmt.setDate(6, DateFormat.utilToSql(form.getOutDate()));
			pstmt.setInt(7, form.getPay());
			i=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, null);
		}
		return i;
	}
	


}
