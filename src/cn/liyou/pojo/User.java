package cn.liyou.pojo;

public class User {
	private Integer user_id;//用户id
	private String user_name;//用户名
	private String password;//用户密码
	private String uphone;//用户手机号
	private String company_name;//公司名
	private String address;//公司地址
	private String cphone;//公司电话
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User( String user_name, String password, String uphone, String company_name, String address,
			String cphone) {
		super();
	
		this.user_name = user_name;
		this.password = password;
		this.uphone = uphone;
		this.company_name = company_name;
		this.address = address;
		this.cphone = cphone;
	
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCphone() {
		return cphone;
	}
	public void setCphone(String cphone) {
		this.cphone = cphone;
	}
	

}
