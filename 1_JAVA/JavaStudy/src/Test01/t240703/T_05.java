package Test01.t240703;

import java.util.Scanner;

public class T_05 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int num, sum = 0;
		System.out.print("정수를 하나 입력하세요 : ");
		num = sc.nextInt();
		for (int i = 1; i <= num; i++) {
			sum += i;
			if (num > i) System.out.printf("%d + ", i); 
			else {
				System.out.printf("%d = ", i);
				System.out.printf("%d", sum);
			}
		}
	}
}
