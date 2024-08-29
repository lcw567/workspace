package test.t240709.object4;

import java.util.Scanner;

public class Run {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("책1 이름 : ");
		String name1 = sc.next();
		sc.nextLine();
		
		System.out.print("책1 출판사 : ");
		String publisher1 = sc.next();
		sc.nextLine();
		
		System.out.print("책1 작가 이름 : ");
		String author1 = sc.next();
		sc.nextLine();
		
		
		System.out.print("책1 가격 : " );
		int price1 = sc.nextInt();
		
		System.out.print("책1 할인율 : ");
		double discount1 = sc.nextDouble();
		
		System.out.println("====================");
		
		System.out.print("책2 이름 : ");
		String name2 = sc.next();
		sc.nextLine();
		
		System.out.print("책2 출판사 : ");
		String publisher2 = sc.next();
		sc.nextLine();
		
		System.out.print("책2 작가 이름 : ");
		String author2 = sc.next();
		sc.nextLine();
		
		System.out.print("책2 가격 : " );
		int price2 = sc.nextInt();
		
		System.out.print("책2 할인율 : ");
		double discount2 = sc.nextDouble();
		
		System.out.println("====================");
		
		System.out.print("책3 이름 : ");
		String name3 = sc.next();
		sc.nextLine();
		
		System.out.print("책3 출판사 : ");
		String publisher3 = sc.next();
		sc.nextLine();
		
		System.out.print("책3 작가 이름 : ");
		String author3 = sc.next();
		sc.nextLine();
		
		System.out.print("책3 가격 : " );
		int price3 = sc.nextInt();
		
		System.out.print("책3 할인율 : ");
		double discount3 = sc.nextDouble();

		System.out.println("====================");
		
		
		Book b1 = new Book();
		Book b2 = new Book(name2, publisher2, author2);
		Book b3 = new Book(name3, publisher3, author3, price3, discount3);
		
		System.out.println("b1");
		b1.information();
		System.out.println("\nb2 (제목, 출판사, 작가)");
		b2.information();
		System.out.println("\nb3 (제목, 출판사, 작가, 가격, 할인)");
		b3.information();
	}

}
