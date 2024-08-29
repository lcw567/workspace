package f.object.ex3;

public class Run {

	public static void main(String[] args) {
		//클래스명 참조변수명 = new 생성자();
		Book b1 = new Book("불안을 이기는 심리학", "자기계발", "황양밍", 120);
//		b1.init("불안을 이기는 심리학", "자기계발", "황양밍", 120);
		Book b2 = new Book("The little prince", "fiction", "Saint-up Expery", 200);
//		b2.title = "The little prince";
//		b2.genre = "fiction";
//		b2.author = "Saint-up Expery";
//		b2.maxPage = 200;
		Book b3 = new Book("Don quixote", "fiction", "Miguel de Cervantes", 230);
//		b3.title = "Don quixote";
//		b3.genre = "fiction";
//		b3.author = "Miguel de Cervantes";
//		b3.maxPage = 230;
		
		System.out.println(b1.toString());
		System.out.println(b2.toString());
		System.out.println(b3.toString());
	}

}
