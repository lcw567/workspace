package test.t240709.object;

public class Book {
	String title;
	String publisher;
	String author;
	int price;
	double discountRate;
	
	public Book() {
		this("미정", "미정","미정", 0, 0);
	}
	public Book(String title, String publisher, String author) {
		this.title = title;
		this.publisher = publisher;
		this.author = author;
	}
	public Book(String title, String publisher, String author, int price, double discountRate) {
		this.title = title;
		this.publisher = publisher;
		this.author = author;
		this.price = price;
		this.discountRate = discountRate;
	}
	
	public void inform() {
		System.out.printf("제목 : %s\n",title);
		System.out.printf("발행 : %s\n",publisher);
		System.out.printf("저자 : %s\n",author);
		System.out.printf("가격 : %d\n",price);
		System.out.printf("할인율 : %.1f\n",discountRate);
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public double getDiscountRate() {
		return discountRate;
	}
	public void setDiscountRate(double discountRate) {
		this.discountRate = discountRate;
	}
	
}
