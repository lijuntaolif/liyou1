package cn.liyou.pojo;

public class Collection {
	private Integer user_id;//用户id
	private Integer tourism_id;//旅游项目id
	
	public Collection() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Collection(Integer user_id, Integer tourism_id) {
		super();
		this.user_id = user_id;
		this.tourism_id = tourism_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getTourism_id() {
		return tourism_id;
	}
	public void setTourism_id(Integer tourism_id) {
		this.tourism_id = tourism_id;
	}
	
	

}
