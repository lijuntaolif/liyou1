package cn.liyou.pojo;

import java.util.Date;

public class Form {
	private Integer form_id;//订单id
	private Integer user_id;//用户id
	private Date form_day;//订单日期
	private Integer tourism_id;//所订项目id
	private String state;//订单状态（已出行，未出行，正在退款）
	private Integer mennum;//成人数量
	private Integer chidrennum;//儿童数量
	private Date outdate;//出发日期
	private Integer pay;//支付金额
	
	public Form() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Form(Integer form_id, Integer user_id, Date form_day, Integer tourism_id, String state, Integer mennum,
			Integer chidrennum, Date outdate, Integer pay) {
		super();
		this.form_id = form_id;
		this.user_id = user_id;
		this.form_day = form_day;
		this.tourism_id = tourism_id;
		this.state = state;
		this.mennum = mennum;
		this.chidrennum = chidrennum;
		this.outdate = outdate;
		this.pay = pay;
	}
	public Integer getForm_id() {
		return form_id;
	}
	public void setForm_id(Integer form_id) {
		this.form_id = form_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Date getForm_day() {
		return form_day;
	}
	public void setForm_day(Date form_day) {
		this.form_day = form_day;
	}
	public Integer getTourism_id() {
		return tourism_id;
	}
	public void setTourism_id(Integer tourism_id) {
		this.tourism_id = tourism_id;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Integer getMennum() {
		return mennum;
	}
	public void setMennum(Integer mennum) {
		this.mennum = mennum;
	}
	public Integer getChidrennum() {
		return chidrennum;
	}
	public void setChidrennum(Integer chidrennum) {
		this.chidrennum = chidrennum;
	}
	public Date getOutDate() {
		return outdate;
	}
	public void setOutDate(Date outdate) {
		this.outdate = outdate;
	}
	public Integer getPay() {
		return pay;
	}
	public void setPay(Integer pay) {
		this.pay = pay;
	}
	

}
