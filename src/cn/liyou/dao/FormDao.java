package cn.liyou.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
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
		String sql="insert into form values(form_seq.nextval,?,sysdate,?,?,?,?,?,?,0)";
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
	
	/**
	 * 查询未出行订单
	 * @param user_id
	 * @return form集合
	 */
	public List<Form> selectByUser_id(Integer user_id){
		List<Form> list=new ArrayList<Form>();
		conn=DBUtils.getconn();
		String sql="select * from form where user_id=? and (del=0  and  state='未出行'or state='正在退款' or state='不同意退款') ";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, user_id);
			rs=pstmt.executeQuery();
			while(rs.next()){
				
				Form form=new Form( rs.getInt("user_id"), rs.getInt("tourism_id") , rs.getString("state") ,rs.getInt("mennum") ,
						rs.getInt("childrennum") ,rs.getDate("outdate"), rs.getInt("pay") );
				form.setForm_day(rs.getDate("form_day"));
				form.setForm_id(rs.getInt("form_id"));
				list.add(form);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeAll(conn, pstmt, rs);
		}
		
		
		return list;
		
	}
	
	/**
	 * 查询已出行订单
	 * @param user_id
	 * @return form集合
	 */
	public List<Form> selectByUser_id2(Integer user_id){
		List<Form> list=new ArrayList<Form>();
		conn=DBUtils.getconn();
		String sql="select * from form where user_id=? and (state='已出行' and del=0  or state='已退款')";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, user_id);
			rs=pstmt.executeQuery();
			while(rs.next()){
				
				Form form=new Form( rs.getInt("user_id"), rs.getInt("tourism_id") , rs.getString("state") ,rs.getInt("mennum") ,
						rs.getInt("childrennum") ,rs.getDate("outdate"), rs.getInt("pay") );
				form.setForm_day(rs.getDate("form_day"));
				form.setForm_id(rs.getInt("form_id"));
				list.add(form);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeAll(conn, pstmt, rs);
		}
		
		
		return list;
		
	}
	

	/**
	 * 更新订单状态
	 * @param form_id
	 * @return 1代表成功，0代表失败  
	 */
	public int updateState(Integer form_id){
		int i=0;
		conn=DBUtils.getconn();
		String sql="update form set state='正在退款'  where form_id=? ";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, form_id);
			i=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeAll(conn, pstmt, null);
		}
		
		
		return i;
		
	}
	/**
	 * 更新订单状态已退款
	 * @param form_id
	 * @return 1代表成功，0代表失败  
	 */
	public int updateState2(Integer form_id){
		int i=0;
		conn=DBUtils.getconn();
		String sql="update form set state='已退款'  where form_id=? ";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, form_id);
			i=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeAll(conn, pstmt, null);
		}
		
		
		return i;
		
	}
	/**
	 * 更新订单状态不同意退款
	 * @param form_id
	 * @return 1代表成功，0代表失败  
	 */
	public int updateState3(Integer form_id){
		int i=0;
		conn=DBUtils.getconn();
		String sql="update form set state='不同意退款'  where form_id=? ";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, form_id);
			i=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeAll(conn, pstmt, null);
		}
		
		
		return i;
		
	}
	/**
	 * 更新订单状态已出行
	 * @param form_id
	 * @return 1代表成功，0代表失败  
	 */
	public int updateState4(Integer form_id){
		int i=0;
		conn=DBUtils.getconn();
		String sql="update form set state='已出行'  where form_id=? ";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, form_id);
			i=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeAll(conn, pstmt, null);
		}
		
		
		return i;
		
	}
	/**
	 * 删除订单
	 * @param form_id
	 * @return
	 */
	public int deleteForm(Integer form_id){
		int i=0;
		conn=DBUtils.getconn();
		String sql="update form set del=1 where form_id=? ";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, form_id);
			i=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeAll(conn, pstmt, null);
		}
		
		
		return i;
		
	}
	/**
	 * 删除订单
	 * @param form_id
	 * @return
	 */
	public int deleteForm2(Integer form_id){
		int i=0;
		conn=DBUtils.getconn();
		String sql="update form set del=3 where form_id=? ";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, form_id);
			i=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeAll(conn, pstmt, null);
		}
		
		
		return i;
		
	}
	/**
	 * 根据供应商名查询未出行订单
	 * @param name
	 * @return
	 */
	public List<Form> selectBySupplier(String name){
		List<Form> list=new ArrayList<Form>();
		conn=DBUtils.getconn();
		String sql="select * from form f,tourism t where t.tourism_id=f.tourism_id and (del=0 or del=2)  and  (state='未出行'or state='正在退款') and t.supplier=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Form form=new Form( rs.getInt("user_id"), rs.getInt("tourism_id") , rs.getString("state") ,rs.getInt("mennum") ,
						rs.getInt("childrennum") ,rs.getDate("outdate"), rs.getInt("pay") );
				form.setForm_day(rs.getDate("form_day"));
				form.setForm_id(rs.getInt("form_id"));
				list.add(form);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeAll(conn, pstmt, rs);
		}
		return list;
	}

	/**
	 * 根据供应商名查询已出行订单
	 * @param name
	 * @return
	 */
	public List<Form> selectBySupplier2(String name){
		List<Form> list=new ArrayList<Form>();
		conn=DBUtils.getconn();
		String sql="select * from form f,tourism t where t.tourism_id=f.tourism_id and (state='已出行' and del=0  or state='已退款' or state='不同意退款') and t.supplier=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Form form=new Form( rs.getInt("user_id"), rs.getInt("tourism_id") , rs.getString("state") ,rs.getInt("mennum") ,
						rs.getInt("childrennum") ,rs.getDate("outdate"), rs.getInt("pay") );
				form.setForm_day(rs.getDate("form_day"));
				form.setForm_id(rs.getInt("form_id"));
				list.add(form);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeAll(conn, pstmt, rs);
		}
		return list;
	}



}
