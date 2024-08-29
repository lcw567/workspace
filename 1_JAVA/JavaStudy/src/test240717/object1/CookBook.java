package test240717.object1;

public class CookBook extends Book{
	private boolean coupon;

	
	
	public CookBook() {
		super();
	}
	public CookBook(String title, String author, String publisher, boolean coupon) {
		super(title, author, publisher);
		this.coupon = coupon;
	}
	
	
	
	@Override
	public String toString() {
		return super.toString() + coupon;
	}
}
