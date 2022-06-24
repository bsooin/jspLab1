package service.model;

public class Service {

	private Integer sno;
	private Writer writer;
	private String sname;
	private Integer categoryNo;
	private Integer price;
	private String sCon;
	private int LikeIt;
	private int viewCount;

	public Service(Integer sno, Writer writer, String sname, Integer categoryNo, Integer price, String sCon, int likeIt,
			int viewCount) {
		super();
		this.sno = sno;
		this.writer = writer;
		this.sname = sname;
		this.categoryNo = categoryNo;
		this.price = price;
		this.sCon = sCon;
		this.LikeIt = likeIt;
		this.viewCount = viewCount;
	}

	public Integer getSno() {
		return sno;
	}

	public Writer getWriter() {
		return writer;
	}

	public String getSname() {
		return sname;
	}

	public Integer getCategoryNo() {
		return categoryNo;
	}

	public Integer getPrice() {
		return price;
	}

	public String getsCon() {
		return sCon;
	}

	public int getLikeIt() {
		return LikeIt;
	}

	public int getViewCount() {
		return viewCount;
	}

}
