package entity;

public class Products {
	private int id;
	private int cat_id;
	private String title;

	private double price;
	private double discount_price;
	private String image;
	private String description;

	public Products(int id, int cat_id,String title, double price, double discount_price,  String image,
			String description) {
		super();
		this.id = id;
		this.cat_id = cat_id;
		this.image = image;
		this.price = price;
		this.discount_price = discount_price;
		this.title = title;
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCat_id() {
		return cat_id;
	}

	public void setCat_id(int cat_id) {
		this.cat_id = cat_id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getDiscount_price() {
		return discount_price;
	}

	public void setDiscount_price(double discount_price) {
		this.discount_price = discount_price;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Products [id=" + id + ", cat_id=" + cat_id + ", image=" + image + ", price=" + price
				+ ", discount_price=" + discount_price + ", title=" + title + ", description=" + description + "]";
	}

}
