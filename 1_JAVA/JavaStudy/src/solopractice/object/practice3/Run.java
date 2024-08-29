package solopractice.object.practice3;

import java.util.Scanner;

public class Run {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("학생1 입력: ");
		String name1 = sc.next();
		sc.nextLine();
		
		System.out.print("학생1 나이: ");
		int age1 = sc.nextInt();
		
		System.out.print("학생2 입력: ");
		String name2 = sc.next();
		sc.nextLine();

		
		System.out.print("학생2 나이: ");
		int age2 = sc.nextInt();
		
		Student a = new Student(name1, age1);
		Student b = new Student(name2, age2);
		
		a.information();
		b.information();
		
		System.out.println("총 학생은 " + Student.person + "명 입니다.");
		

	}

}
