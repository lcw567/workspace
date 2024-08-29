package test240715.object1;

import java.util.Scanner;

public class Run {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int num1, num2, num3;
		
		System.out.print("입력 : ");
		num1 = sc.nextInt();
//		sc.nextLine();
		num2 = sc.nextInt();
//		sc.nextLine();
		num3 = sc.nextInt();
		
		dd(num1);
		dd(num2);
		dd(num3);
		
	}
	public static void dd(int n) {
		if(n % 2 ==0) System.out.print("짝 ");
		else System.out.print("홀 ");
	}

}
