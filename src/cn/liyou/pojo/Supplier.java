package cn.liyou.pojo;

public class Supplier {
	private String s_name;//供应商名称
	private String password;//管理员密码
	private String cphone;//公司电话
	private String comp_name;//公司名称
	private String comp_address;//公司地址
	public Supplier() {
		super();
	}
	public Supplier(String s_name, String password, String cphone, String comp_name, String comp_address) {
		super();
		this.s_name = s_name;
		this.password = password;
		this.cphone = cphone;
		this.comp_name = comp_name;
		this.comp_address = comp_address;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCphone() {
		return cphone;
	}
	public void setCphone(String cphone) {
		this.cphone = cphone;
	}
	public String getComp_name() {
		return comp_name;
	}
	public void setComp_name(String comp_name) {
		this.comp_name = comp_name;
	}
	public String getComp_address() {
		return comp_address;
	}
	public void setComp_address(String comp_address) {
		this.comp_address = comp_address;
	}
	
}
