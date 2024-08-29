package test.t240704;

import java.util.Scanner;

public class T_01 {

	public static void main(String[] args) {
		String ID = "myId", PWD = "myPassword12";
		String IDverif, PWDverif;
		Scanner sc = new Scanner(System.in);
		
		System.out.print("아이디 : ");
		IDverif = sc.next();
		System.out.print("비밀번호 : ");
		PWDverif = sc.next();
		
		if (ID.equals(IDverif) && PWD.equals(PWDverif)) {
			System.out.println("로그인 성공");
		}
		else if (ID.equals(IDverif)) {
			System.out.println("비밀번호가 틀렸습니다.");
		}
		else if (PWD.equals(PWDverif)) {
			System.out.println("아이디가 틀렸습니다.");
		}
		else System.out.println("아이디, 비밀번호가 틀렸습니다.");

	}

}
