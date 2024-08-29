package test.t240704;

import java.util.Scanner;

public class T_03 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int first, second;
		System.out.print("첫 번째 숫자 : ");
		first = sc.nextInt();
		System.out.print("두 번째 숫자 : ");
		second = sc.nextInt();
		
		if(first < 1 || second < 1) {
			System.out.println("1 이상의 숫자를 입력해주세요");
		}
		else if (first > second) {
			for(int i = second; i < first + 1; i++) {
				System.out.printf("%d ",i);
			}
		}
		else if (first < second) {
			for(int i = first; i < second + 1; i++) {
				System.out.printf("%d ",i);
			}
		}

	}

}
