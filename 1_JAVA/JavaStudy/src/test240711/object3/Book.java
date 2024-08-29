package test240711.object3;

public class Book {
	String title;
	String genre;
	String author;
	int booknum;
	
	public Book() {
		super();
	}
	public Book(String title, String genre, String author, int booknum) {
		super();
		this.title = title;
		this.genre = genre;
		this.author = author;
		this.booknum = booknum;
	}
	
	public String toString() {
		System.out.printf("제목 : %s\n", this.title);
		System.out.printf("장르 : %s\n", this.genre);
		System.out.printf("작가 : %s\n", this.author);
		System.out.printf("책번 : %d\n\n", this.booknum);
		return null;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getBooknum() {
		return booknum;
	}
	public void setBooknum(int booknum) {
		this.booknum = booknum;
	}
	
}
