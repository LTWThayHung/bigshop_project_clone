package entity;

public class Category {
	private int cid;
	private String cname;
	public Category(int cid, String cname) {
		super();
		this.cid = cid;
		this.cname = cname;
	}
	public int getCid() {
		return cid;
	}
	public void setId(int id) {
		this.cid = id;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	@Override
	public String toString() {
		return "Category [id=" + cid + ", cname=" + cname + "]";
	}
	
	
}
