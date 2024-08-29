package solopractice;

public class Book {
	String bookname;
	String booktype;
	String booknumber;
	
	public void title(String name) {
		bookname = name;
	}
	
	public void genre(String type) {
		booktype = type;
	}
	
	public void isbn(int number1, int number2) {
		booknumber = number1 + "-" + number2;
	}
	public void checklibrary() {
		System.out.println("책이름 :" + bookname);
		System.out.println("장르 : " + booktype);
		System.out.println("책 번호: " + booknumber+"\n");
	}
	
}
