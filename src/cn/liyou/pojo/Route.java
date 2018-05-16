package cn.liyou.pojo;

public class Route {
	private Integer route_id;//行程id
	private Integer tourism_id;//旅游项目id
	private Integer day;//第几天
	private String place;//地方
	private String arrange;//安排
	
	public Route() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Route(Integer route_id, Integer tourism_id, Integer day, String place, String arrange) {
		super();
		this.route_id = route_id;
		this.tourism_id = tourism_id;
		this.day = day;
		this.place = place;
		this.arrange = arrange;
	}
	public Integer getRoute_id() {
		return route_id;
	}
	public void setRoute_id(Integer route_id) {
		this.route_id = route_id;
	}
	public Integer getTourism_id() {
		return tourism_id;
	}
	public void setTourism_id(Integer tourism_id) {
		this.tourism_id = tourism_id;
	}
	public Integer getDay() {
		return day;
	}
	public void setDay(Integer day) {
		this.day = day;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getArrange() {
		return arrange;
	}
	public void setArrange(String arrange) {
		this.arrange = arrange;
	}

}
