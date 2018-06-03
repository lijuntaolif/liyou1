package cn.liyou.pojo;

import java.util.Date;

public class Tourism {
	private Integer tourism_id;//项目id
	private String tourism_name;//项目名
	private String departure;//出发地
	private String destination;//目的地
	private String images_name;//图片名称
	private String rote;//行程
	private Integer price;//打折前价格
	private Integer discountprice;//折后价格
	private String special;//特色
	private String fashion;//旅游方式
	private String type;//项目类型
	private Integer days;//行程天数
	private Date firstday;//最早出发时间
	private Date lastday;//最晚出发时间
	private String views;//景点
	private String supplier;//供应商
	private String cphone;//供应商电话
	private String smessage;//供应商留言
	private Integer stock;//库存
	
	
	public Tourism() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public Tourism(String tourism_name, String departure, String destination, String images_name,
			String rote, Integer price, Integer discountprice, String special, String fashion, String type,
			Integer days, Date firstday, Date lastday, String views, String supplier, String cphone, String smessage,
			Integer stock) {
		super();

		this.tourism_name = tourism_name;
		this.departure = departure;
		this.destination = destination;
		this.images_name = images_name;
		this.rote = rote;
		this.price = price;
		this.discountprice = discountprice;
		this.special = special;
		this.fashion = fashion;
		this.type = type;
		this.days = days;
		this.firstday = firstday;
		this.lastday = lastday;
		this.views = views;
		this.supplier = supplier;
		this.cphone = cphone;
		this.smessage = smessage;
		this.stock = stock;
	}


	public Integer getTourism_id() {
		return tourism_id;
	}


	public void setTourism_id(Integer tourism_id) {
		this.tourism_id = tourism_id;
	}


	public String getTourism_name() {
		return tourism_name;
	}


	public void setTourism_name(String tourism_name) {
		this.tourism_name = tourism_name;
	}


	public String getDeparture() {
		return departure;
	}


	public void setDeparture(String departure) {
		this.departure = departure;
	}


	public String getDestination() {
		return destination;
	}


	public void setDestination(String destination) {
		this.destination = destination;
	}


	public String getImages_name() {
		return images_name;
	}


	public void setImages_name(String images_name) {
		this.images_name = images_name;
	}


	public String getRote() {
		return rote;
	}


	public void setRote(String rote) {
		this.rote = rote;
	}


	public Integer getPrice() {
		return price;
	}


	public void setPrice(Integer price) {
		this.price = price;
	}


	public Integer getDiscountprice() {
		return discountprice;
	}


	public void setDiscountprice(Integer discountprice) {
		this.discountprice = discountprice;
	}


	public String getSpecial() {
		return special;
	}


	public void setSpecial(String special) {
		this.special = special;
	}


	public String getFashion() {
		return fashion;
	}


	public void setFashion(String fashion) {
		this.fashion = fashion;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public Integer getDays() {
		return days;
	}


	public void setDays(Integer days) {
		this.days = days;
	}


	public Date getFirstday() {
		return firstday;
	}


	public void setFirstday(Date firstday) {
		this.firstday = firstday;
	}


	public Date getLastday() {
		return lastday;
	}


	public void setLastday(Date lastday) {
		this.lastday = lastday;
	}


	public String getViews() {
		return views;
	}


	public void setViews(String views) {
		this.views = views;
	}


	public String getSupplier() {
		return supplier;
	}


	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}


	public String getCphone() {
		return cphone;
	}


	public void setCphone(String cphone) {
		this.cphone = cphone;
	}


	public String getSmessage() {
		return smessage;
	}


	public void setSmessage(String smessage) {
		this.smessage = smessage;
	}


	public Integer getStock() {
		return stock;
	}


	public void setStock(Integer stock) {
		this.stock = stock;
	}
	
}
