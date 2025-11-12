package bp800.product.dto;

public class Product {

	private int id;
	private String code;
	private String category;
	private String name;
	private String country;
	private int price;
	private String alcohol;
	private String content;
	private int like;
	private int dislike;
	private String imgFileName;

	public Product() {
	    super();
	}

	public Product(int id, String code,
	               String category, String name,
	               String country, int price,
	               String alcohol, String content,
	               int like, int dislike,
	               String imgFileName) {
	    super();
	    this.id = id;
	    this.code = code;
	    this.category = category;
	    this.name = name;
	    this.country = country;
	    this.price = price;
	    this.alcohol = alcohol;
	    this.content = content;
	    this.like = like;
	    this.dislike = dislike;
	    this.imgFileName = imgFileName;
}

	public void setId(int id) {
		this.id = id;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public void setAlcohol(String alcohol) {
		this.alcohol = alcohol;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public void setLike(int like) {
		this.like = like;
	}

	public void setDislike(int dislike) {
		this.dislike = dislike;
	}

	public void setImgFileName(String imgFileName) {
		this.imgFileName = imgFileName;
	}

	public int getId() {
		return id;
	}

	public String getCode() {
		return code;
	}

	public String getCategory() {
		return category;
	}

	public String getName() {
		return name;
	}

	public String getCountry() {
		return country;
	}

	public int getPrice() {
		return price;
	}

	public String getAlcohol() {
		return alcohol;
	}

	public String getContent() {
		return content;
	}

	public int getLike() {
		return like;
	}

	public int getDislike() {
		return dislike;
	}

	public String getImgFileName() {
		return imgFileName;
	}

}