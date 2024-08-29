package test.t240705;

import java.util.Scanner;

public class T_02 {

	public static void main(String[] args) {
		String str;
		Scanner sc = new Scanner(System.in);
		
		System.out.print("주민번호를 입력하세요(- 포함) : ");
		str = sc.next();
		
		
		if (str.charAt(7) == '1' || str.charAt(7) == '3') {
			System.out.println("남자");
		}
		else if (str.charAt(7) == '2' || str.charAt(7) == '4') {
			System.out.println("여자");
		}

	}

}
