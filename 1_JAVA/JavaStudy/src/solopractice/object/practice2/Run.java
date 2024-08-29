package solopractice.object.practice2;

import java.util.Scanner;

public class Run {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("아이디1 입력 :");
		String id1 = sc.next();
		
		System.out.print("비밀번호1 입력 :");
		String password1 = sc.next();
		
		System.out.print("이름1 입력 :");
		String name1 = sc.next();
		
		System.out.print("아이디2 입력 :");
		String id2 = sc.next();
		
		System.out.print("비밀번호2 입력 :");
		String password2 = sc.next();
		
		System.out.print("이름2 입력 :");
		String name2 = sc.next();

	
	SignUp jaemin = new SignUp(id1, password1, name1);
	System.out.println("아이디 :" + jaemin.getId() + "비밀번호 :" + jaemin.getPwd() + "이름 :" + jaemin.getName());
	
	SignUp minjae = new SignUp(id2, password2, name2);
	minjae.printinform();
	}

}
