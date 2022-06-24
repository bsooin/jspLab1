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

	public void setSno(Integer sno) {
		this.sno = sno;
	}

	public void setWriter(Writer writer) {
		this.writer = writer;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public void setCategoryNo(Integer categoryNo) {
		this.categoryNo = categoryNo;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public void setsCon(String sCon) {
		this.sCon = sCon;
	}

	public void setLikeIt(int likeIt) {
		LikeIt = likeIt;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
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
