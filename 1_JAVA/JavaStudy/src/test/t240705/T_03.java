package test.t240705;

import java.util.Scanner;

public class T_03 {

	public static void main(String[] args) {
		int a, b, c;
		Scanner sc = new Scanner(System.in);
		
		System.out.print("입력1 : ");
		a = sc.nextInt();
		System.out.print("입력2 : ");
		b = sc.nextInt();
		System.out.print("입력3 : ");
		c = sc.nextInt();
		
		if (a == b && b == c && c == a) {
			System.out.println("ture");
		}
		else {
			System.out.println("false");
		}

	}

}
