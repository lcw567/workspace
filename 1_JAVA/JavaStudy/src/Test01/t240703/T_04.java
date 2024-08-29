package Test01.t240703;

import java.util.Scanner;

public class T_04 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int num;
		while(true) {
			System.out.print("1 이상의 숫자를 입력하세요 : ");
			num = sc.nextInt();
			if (num < 1) System.out.println("1 이상의 숫자를 입력해주세요");
			else if(num >= 1) break;
		}
		
		System.out.print("1 ");
		for (int i = 2; i < num + 1; i++) {
			System.out.printf("%d ",i);
		}
		
	}

}
