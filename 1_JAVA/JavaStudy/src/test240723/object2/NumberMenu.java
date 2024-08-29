package test240723.object2;

import java.util.Scanner;

public class NumberMenu {
	public void menu() {
		Scanner sc = new Scanner(System.in);
		NumberController nc = new NumberController();
		
		System.out.print("정수1 : ");
		int num1 = sc.nextInt();
		System.out.print("정수2 : ");
		int num2 = sc.nextInt();
		
		System.out.printf("%d은(는) %d의 배수인가 ? ",num1 , num2);
		System.out.println(nc.checkDouble(num1, num2));
	}
}
