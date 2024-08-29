package solopractice;

public class Library {

	public static void main(String[] args) {
		Book book1 = new Book();
		Book book2 = new Book();

		book1.title("총균쇠");
		book2.title("차라투스투라는 이렇게 말했다.");
		
		book1.genre("시사");
		book2.genre("철학");
		
		book1.isbn(123,231);
		book2.isbn(232,525);
		
		book1.checklibrary();
		book2.checklibrary();
		
	}

}
