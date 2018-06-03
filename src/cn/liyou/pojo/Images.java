package cn.liyou.pojo;

public class Images {
	private Integer images_id;//图片id
	private String images_name;//图片名
	private Integer type;//图片类型
	private Integer tourism_id;//旅游项目id
	
	public Images() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Images( String images_name, Integer type, Integer tourism_id) {
		super();

		this.images_name = images_name;
		this.type = type;
		this.tourism_id = tourism_id;
	}
	public Integer getImages_id() {
		return images_id;
	}
	public void setImages_id(Integer images_id) {
		this.images_id = images_id;
	}
	public String getImages_name() {
		return images_name;
	}
	public void setImages_name(String images_name) {
		this.images_name = images_name;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Integer getTourism_id() {
		return tourism_id;
	}
	public void setTourism_id(Integer tourism_id) {
		this.tourism_id = tourism_id;
	}
	
	

}
