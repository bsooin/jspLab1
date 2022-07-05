package service.model;

public class Service {

	private Integer sNo;
	private String sName;
	private Integer categoryNo;
	private Integer price;
	private String sCon;
	private int likeIt;
	private int viewCount;
	private String pImage;
	private Writer writer;
	private int sCount;

	
	public Service(Integer sNo, String sName, Integer categoryNo, Integer price, String sCon, int likeIt, int viewCount,
			String pImage, Writer writer, int sCount) {
		super();
		this.sNo = sNo;
		this.sName = sName;
		this.categoryNo = categoryNo;
		this.price = price;
		this.sCon = sCon;
		this.likeIt = likeIt;
		this.viewCount = viewCount;
		this.pImage = pImage;
		this.writer = writer;
		this.sCount = sCount;
	}
	public Integer getsNo() {
		return sNo;
	}
	public Integer getSNo() {
		return sNo;
	}
	public void setsNo(Integer sNo) {
		this.sNo = sNo;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getSName() {
		return sName;
	}
	public Integer getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(Integer categoryNo) {
		this.categoryNo = categoryNo;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getsCon() {
		return sCon;
	}
	public void setsCon(String sCon) {
		this.sCon = sCon;
	}
	public int getLikeIt() {
		return likeIt;
	}
	public void setLikeIt(int likeIt) {
		this.likeIt = likeIt;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public String getpImage() {
		return pImage;
	}
	public void setpImage(String pImage) {
		this.pImage = pImage;
	}
	public Writer getWriter() {
		return writer;
	}
	public void setWriter(Writer writer) {
		this.writer = writer;
	}
	public int getsCount() {
		return sCount;
	}
	public void setsCount(int sCount) {
		this.sCount = sCount;
	}
	
	
}